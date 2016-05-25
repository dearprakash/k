<ul class='work-pagination'>
  {% for project in site.data.work %}
  <a class="work-pagination-item" href="{{ project.url }}" alt="{{ project.title }}">
    <li class="work-card">
      <div class="work-card__title">
        <img src="{{ project.svg }}" class="work-card__logo {{ project.class }}" alt="{{ project.title }}">
      </div>
      <div class="work-card__role">
        {{ project.tags }}
      </div>
    </li>
  </a>
  {% endfor %}
</ul>