---
layout: page
title: Projects
permalink: /projects/
---

## 🚀 Selected Projects

<div class="project-list">
  {% for project in site.projects %}
    <div class="project-card">
      {% if project.thumbnail %}
        <a href="{{ project.url }}">
          <img src="{{ project.thumbnail }}" alt="{{ project.title }} thumbnail" class="project-thumb">
        </a>
      {% endif %}
      <div class="project-info">
        <h3><a href="{{ project.url }}">{{ project.title }}</a></h3>
        {% if project.stack %}
          <p><strong>Stack:</strong> {{ project.stack | join: ", " }}</p>
        {% endif %}
        {% if project.excerpt %}
          <p>{{ project.excerpt | strip_html | truncate: 120 }}</p>
        {% endif %}
        <a class="project-link" href="{{ project.url }}">🔍 Read More</a>
      </div>
    </div>
  {% endfor %}
</div>

<style>
.project-list {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
  margin-top: 2rem;
}

.project-card {
  border: 1px solid #eee;
  border-left: 4px solid #3498db;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.04);
  padding: 1rem;
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.project-thumb {
  width: 100%;
  height: auto;
  border-radius: 6px;
  margin-bottom: 0.5rem;
}

.project-info h3 {
  margin: 0 0 0.3rem;
}

.project-info p {
  font-size: 0.9rem;
  margin: 0.3rem 0;
}

.project-link {
  margin-top: auto;
  font-weight: bold;
  color: #3498db;
  text-decoration: none;
}
.project-link:hover {
  text-decoration: underline;
}
</style>
