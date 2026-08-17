---
layout: portfolio
title: Projects
icon: fas fa-diagram-project
order: 2
---

<div class="lang-page" data-cv-lang="en">
{% include lang-toggle.html %}

<header class="projects-intro">
  <h1>Selected Work</h1>
  <p class="lang-block" data-lang="ko" lang="ko">연구 알고리즘에서 실차와 현장 시스템까지. 결과와 구현 근거를 함께 정리한 로보틱스·제어 프로젝트.</p>
  <p class="lang-block" data-lang="en" lang="en">Robotics and control work from research algorithms to real vehicles and deployed systems, with results and implementation evidence.</p>
</header>

<div class="project-grid">
  {% assign projects = site.projects | sort: 'date' | reverse %}
  {% for project in projects %}
    <a href="{{ project.url | relative_url }}" class="project-card">
      {% assign project_image = nil %}
      {% case project.slug %}
        {% when 'oafmcl-humanoid-localization' %}{% assign project_image = '/assets/img/projects/oafmcl-humanoid-localization-1.jpg' %}
        {% when 'golf-cart-autonomous-driving' %}{% assign project_image = '/assets/img/projects/golf-cart-matlab-sim.png' %}
        {% when 'robit-humanoid' %}{% assign project_image = '/assets/img/projects/robit-robocup2019-sydney.jpg' %}
        {% when 'multi-uav-formation-control' %}{% assign project_image = '/assets/img/projects/multi-uav-formation-flight.jpg' %}
        {% when 'smart-caddy-robot' %}{% assign project_image = '/assets/img/projects/smart-caddy-hardware.jpg' %}
      {% endcase %}
      {% if project_image %}<div class="project-card__image"><img src="{{ project_image | relative_url }}" alt="{{ project.title_en | default: project.title }}" loading="lazy"></div>{% endif %}
      {% if project.slug == 'smart-parking-system' %}
        <div class="project-card__system" aria-label="Smart parking system flow">
          <span>~30 CCTV</span><i></i><span>Vision</span><i></i><span>Events</span><i></i><span>Lighting</span>
        </div>
      {% endif %}
      <div class="project-card__head">
        <span class="project-badge project-badge--{{ project.category_label | downcase }}">{{ project.category_label }}</span>
        <span class="project-card__period">{{ project.period }}</span>
      </div>
      <h2 class="project-card__title"><span class="lang-block" data-lang="ko" lang="ko">{{ project.title }}</span><span class="lang-block" data-lang="en" lang="en">{{ project.title_en | default: project.title }}</span></h2>
      <p class="project-card__desc"><span class="lang-block" data-lang="ko" lang="ko">{{ project.description }}</span><span class="lang-block" data-lang="en" lang="en">{{ project.description_en | default: project.description }}</span></p>
      {% if project.tech %}
        <div class="project-tags">
          {% for t in project.tech limit: 5 %}<span class="project-tag">{{ t }}</span>{% endfor %}
        </div>
      {% endif %}
    </a>
  {% endfor %}
</div>

</div>
