{{ partial('_partial/head') }}
<body>
  {{ partial('_partial/header') }}
  <div class="hero-gradient"></div>
    <section class="hero-gradient__container">
      {{ partial('_partial/hero') }}
    </section>
    <main class='content-wrapper full'>
      {{ body }}
    </main>
    {{ partial('_partial/footer') }}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    {{ js('vendor/emoji.min.js') }}
    {{ js('js/script.js') }}
    {% if page.path === "about/index.html" %}
    {{ js('js/activity.js') }}
    {% endif %}
</body>
</html>