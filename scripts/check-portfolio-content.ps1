$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot

function Assert-Contains {
  param(
    [string]$Path,
    [string]$Pattern,
    [string]$Message
  )

  $text = Get-Content -LiteralPath $Path -Raw
  if ($text -notmatch $Pattern) {
    throw "$Message ($Path)"
  }
}

function Assert-NotContains {
  param(
    [string]$Path,
    [string]$Pattern,
    [string]$Message
  )

  $text = Get-Content -LiteralPath $Path -Raw
  if ($text -match $Pattern) {
    throw "$Message ($Path)"
  }
}

Assert-Contains "$repoRoot/_data/cv/ko.yml" '2025\.06 ~ 2026\.02' '골프카트 기간 변경'
Assert-Contains "$repoRoot/_data/cv/en.yml" '2025\.06 ~ 2026\.02' 'Golf-cart period changed'
Assert-Contains "$repoRoot/_data/cv/ko.yml" 'Engineer · 전문연구요원' '전문연구요원 표기 누락'
Assert-Contains "$repoRoot/_data/cv/en.yml" 'Technical Research Personnel' 'Military-service context missing'
Assert-Contains "$repoRoot/_projects/oafmcl-humanoid-localization.md" '0\.0474' 'OAFMCL RTAMSE 누락'
Assert-Contains "$repoRoot/_projects/oafmcl-humanoid-localization.md" '0\.0687' 'OAFMCL kidnapping result 누락'
Assert-Contains "$repoRoot/_projects/multi-uav-formation-control.md" '±0\.2' 'UAV formation error 누락'
Assert-Contains "$repoRoot/_projects/multi-uav-formation-control.md" '0\.8974' 'UAV baseline MSE 누락'
Assert-Contains "$repoRoot/_projects/smart-caddy-robot.md" '500Hz' '캐디 전류 제어 주기 누락'
Assert-Contains "$repoRoot/_projects/robit-humanoid.md" '대상\(대통령상\)' 'ROBIT 대통령상 누락'
Assert-Contains "$repoRoot/_layouts/portfolio.html" '<html lang="en">' '포트폴리오 기본 문서 언어 불일치'
Assert-Contains "$repoRoot/_layouts/portfolio.html" 'googletagmanager\.com/gtag/js\?id=' 'Google Analytics 로더 누락'
Assert-Contains "$repoRoot/_layouts/portfolio.html" 'rel="manifest"[^>]+site\.webmanifest' 'PWA manifest 링크 누락'
Assert-Contains "$repoRoot/_layouts/portfolio.html" 'navigator\.serviceWorker\.register' 'PWA 서비스 워커 등록 누락'
Assert-Contains "$repoRoot/_layouts/portfolio.html" "jekyll\.environment == 'production' and site\.pwa\.enabled" 'PWA production 환경 제한 누락'
Assert-Contains "$repoRoot/_layouts/portfolio.html" '<script[^>]+assets/js/cv-lang\.js' '공통 언어 전환 스크립트 누락'
Assert-NotContains "$repoRoot/_includes/lang-toggle.html" '<script[^>]+assets/js/cv-lang\.js' '언어 전환 스크립트 중복 로드'

Get-ChildItem "$repoRoot/_projects/*.md" | ForEach-Object {
  $text = Get-Content -LiteralPath $_.FullName -Raw
  $openDivs = ([regex]::Matches($text, '<div(?:\s|>)')).Count
  $closeDivs = ([regex]::Matches($text, '</div>')).Count

  if ($openDivs -ne $closeDivs) {
    throw "div 구조 불일치: $($_.Name) (open=$openDivs, close=$closeDivs)"
  }

  if ($text -match '(?m)^## (왜 이 방법|Engineering Decisions|시행착오)$') {
    throw "메타 제목 발견: $($_.Name)"
  }
}

Write-Host 'Portfolio content checks passed.' -ForegroundColor Green
