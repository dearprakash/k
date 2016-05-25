<header>
  <a href="/" alt="Lauren Dorman">
    <svg id="logo" height="31px" width="35px">
      <path id="LD" fill="#FFFFFF" d="M22.9,0.8 L13.4,0.8 L13.4,19.3 L21.5,19.3 L21.5,8.4 L22.9,8.4 C25.3,8.4 26.3,10.6 26.3,17.3 C26.3,20.1 26,23.5 22.9,23.5 L8.7,23.5 L8.7,0.7 L0,0.7 L0,31 L23,31 C32,31 35,22.6 35,17.2 C34.8,8.1 31.9,0.8 22.9,0.8 L22.9,0.8 Z"/>
    </svg>
  </a>
  <button id="menu-icon" type="button" class="menu-btn">Menu</button>
  <div id="menu" class="menu__overlay menu__overlay-slidedown">
      <nav>
        <ul>
        {% for item in site.data.menu %}
        <li><a href="{{ item.url }}" alt="{{ item.title }}">{{ item.title }}</a></li>
        {% endfor %}
        </ul>
      </nav>
  </div>
</header>