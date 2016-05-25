<h3>Elsewhere</h3>
<ul>
{% for item in site.data.elsewhere %}
<li>
  <a href="{{ item.url }}" alt="{{ item.name }}">{{ item.name }}</a>
</li>
{% endfor %}
</ul>