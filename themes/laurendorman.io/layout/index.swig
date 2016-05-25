---
layout: false
---

{{ partial('_partial/head') }}
<body>
  {{ partial('_partial/header') }}
  <div class="hero-gradient"></div>
    <section class="hero-gradient__container">
      <section class="hero__container">
			<h1 class="hero--title">{{ config.subtitle }}</h1>
		</section>
    </section>
    <main class='content-wrapper full'>
      <section id='about'>
        {{ partial('_partial/about') }}
      </section>
      <section id='speaking'>
        {{ partial('_partial/speaking') }}
      </section>
      <section id="writing">
        {{ partial('_partial/writing') }}
      </section>
    </main>
    <section id="work">
    {{ partial('_partial/work-cards') }}
    </section>
    <section id="more">
      <span class="next">
        <a href="/work" alt="View all Work" class="view-all">View all &#8594;</a>
      </span>
    </section>
    {{ partial('_partial/footer') }}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    {{ js('vendor/emoji.min.js') }}
    {{ js('js/script.js') }}
</body>
</html>