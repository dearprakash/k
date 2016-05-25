{% for project in site.data.work_page %}
  <div class="work-item {{ project.class }}">
  <a href='{{ project.url }}' alt='{{ project.title }}'>
  <h2 class='work-item__title'>{{ project.title }}</h2></a>
    <div class='work-item__cta'>
    <a href='{{ project.url }}' alt='{{ project.title }}' class="btn btn--alt">{{ project.cta }} &#8594;</a>
    </div>
  </div>
{% endfor %}