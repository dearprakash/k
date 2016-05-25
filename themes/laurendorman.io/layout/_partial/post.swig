<article class="post" itemscope itemprop="blogPost">
  {% if is_post() %}
    <h1>{{ post.title }}</h1>
  {% else %}
    <h1>
      <a href="{{ url_for(post.path) }}" class="post--title" itemprop="name">{{ post.title }}</a>
    </h1>
  {% endif %}
  {{ time_tag(post.date) }}
  {{ post.content }}
</article>