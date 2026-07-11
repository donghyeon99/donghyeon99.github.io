---
# the default layout is 'page'
icon: fas fa-diagram-project
order: 2
---

Research, Industry, Team 경험을 아우르는 로보틱스 프로젝트 모음입니다.

<div class="project-grid">
  {% assign projects = site.projects | sort: 'date' | reverse %}
  {% for project in projects %}
    <a href="{{ project.url | relative_url }}" class="project-card">
      <div class="project-card__head">
        <span class="project-badge project-badge--{{ project.category_label | downcase }}">{{ project.category_label }}</span>
        <span class="project-card__period">{{ project.period }}</span>
      </div>
      <h3 class="project-card__title">{{ project.title }}</h3>
      <p class="project-card__desc">{{ project.description }}</p>
      {% if project.tech %}
        <div class="project-tags">
          {% for t in project.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
        </div>
      {% endif %}
    </a>
  {% endfor %}
</div>
