{% if (pagination == 2) %}
  {% for post in page.posts %}
  {{ partial('post', {post: post}) }}
  {% endfor %}
  <nav class="pagination">
    {% if page.prev %}
    <span class="prev">
      <a href="{{ url_for(page.prev_link) }}" alt="Previous Page">&#8592; Previous</a>
    </span>
    {% endif %}
    {% if page.next %}
    <span class="next">
      <a href="{{ url_for(page.next_link) }}" alt="Next Page">Next &#8594;</a>
    </span>
    {% endif %}
  </nav>
{% endif %}