# frozen_string_literal: true

require "nokogiri"
require "pathname"

site_root = Pathname(ARGV.fetch(0, "_site"))
failures = []

def parse_html(path)
  Nokogiri::HTML5(path.read)
end

home_path = site_root / "index.html"
home = parse_html(home_path)

failures << "Home document language must default to English" unless home.at_css("html")&.[]("lang") == "en"

manifest_links = home.css("link[rel='manifest']").filter_map { |link| link["href"] }
unless manifest_links.one? { |href| href.end_with?("/assets/img/favicons/site.webmanifest") }
  failures << "Home must link the PWA manifest once"
end

analytics_scripts = home.css("script[src]").filter_map { |script| script["src"] }
unless analytics_scripts.one? { |src| src.start_with?("https://www.googletagmanager.com/gtag/js?id=") }
  failures << "Production home must load Google Analytics once"
end

language_scripts = home.css("script[src]").filter_map { |script| script["src"] }
unless language_scripts.one? { |src| src.end_with?("/assets/js/cv-lang.js") }
  failures << "Home must load the language toggle script once"
end

unless home.css("script").any? { |script| script.text.include?("navigator.serviceWorker.register") }
  failures << "Home must register the PWA service worker"
end

%w[ko en].each do |lang|
  names = home.css("h1.landing-hero__name.lang-block[data-lang='#{lang}']")
  failures << "Home must render one language-specific #{lang} name" unless names.length == 1
end

about = parse_html(site_root / "about" / "index.html")
failures << "About must use its profile header instead of the generic page heading" unless about.css("header.page-heading").empty?
%w[ko en].each do |lang|
  names = about.css(".lang-page > .lang-block[data-lang='#{lang}'] h1.about-hero__name")
  failures << "About must render one #{lang} profile name" unless names.length == 1
end

evidence_links = home.css("a.landing-evidence").filter_map { |link| link["href"] }
failures << "Home must link three evidence records" unless evidence_links.length == 3

project_links = Dir.glob((site_root / "projects" / "*" / "index.html").to_s).map do |path|
  "/projects/#{Pathname(path).dirname.basename}/"
end

project_links.each do |href|
  project_path = site_root / href.delete_prefix("/") / "index.html"
  project = parse_html(project_path)
  nested_blocks = project.css(".lang-block .lang-block")
  failures << "Nested language block hides content: #{href}" unless nested_blocks.empty?
end

evidence_links.each do |href|
  project_path = site_root / href.delete_prefix("/") / "index.html"
  unless project_path.file?
    failures << "Evidence target is missing: #{href}"
    next
  end

  project = parse_html(project_path)
  %w[ko en].each do |lang|
    body_blocks = project.css(".lang-page > .lang-block[data-lang='#{lang}']")
                         .select { |block| block.text.strip.length >= 300 }
    if body_blocks.empty?
      failures << "Evidence target has no rendered #{lang} body: #{href}"
    end
  end
end

if failures.any?
  warn failures.join("\n")
  exit 1
end

puts "Rendered portfolio checks passed."
