---
# the default layout is 'page'
icon: fas fa-diagram-project
order: 2
---

<div class="lang-page" data-cv-lang="en">
{% include lang-toggle.html %}

<p class="lang-block" data-lang="ko" lang="ko">로보틱스·제어 분야의 연구, 산업, 팀 프로젝트.</p>
<p class="lang-block" data-lang="en" lang="en">Selected research, industry, and team projects in robotics and control.</p>

<div class="project-grid">
  {% assign projects = site.projects | sort: 'date' | reverse %}
  {% for project in projects %}
    <a href="{{ project.url | relative_url }}" class="project-card">
      <div class="project-card__head">
        <span class="project-badge project-badge--{{ project.category_label | downcase }}">{{ project.category_label }}</span>
        <span class="project-card__period">{{ project.period }}</span>
      </div>
      <h2 class="project-card__title"><span class="lang-block" data-lang="ko" lang="ko">{{ project.title }}</span><span class="lang-block" data-lang="en" lang="en">{{ project.title_en | default: project.title }}</span></h2>
      <p class="project-card__desc"><span class="lang-block" data-lang="ko" lang="ko">{{ project.description }}</span><span class="lang-block" data-lang="en" lang="en">{{ project.description_en | default: project.description }}</span></p>
      {% if project.tech %}
        <div class="project-tags">
          {% for t in project.tech limit: 4 %}<span class="project-tag">{{ t }}</span>{% endfor %}
          {% if project.tech.size > 4 %}<span class="project-tag project-tag--more">+{{ project.tech.size | minus: 4 }}</span>{% endif %}
        </div>
      {% endif %}
    </a>
  {% endfor %}
</div>

</div>
