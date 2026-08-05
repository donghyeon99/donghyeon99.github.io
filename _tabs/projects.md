---
# the default layout is 'page'
icon: fas fa-diagram-project
order: 2
---

<div class="lang-page" data-cv-lang="en">
{% include lang-toggle.html %}

<p class="lang-block" data-lang="ko" lang="ko">연구(Research)·산업(Industry)·팀(Team) 프로젝트를 모았습니다. 각 페이지에 문제, 역할, 결과를 정리했습니다.</p>
<p class="lang-block" data-lang="en" lang="en">Research, industry, and team projects. Each page covers the problem, my role, and the results.</p>

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
          {% for t in project.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
        </div>
      {% endif %}
    </a>
  {% endfor %}
</div>

</div>
