---
title: "Style Guide"
description: "A code style guide for front-end development."
layout: page
---

# Style Guide

This Style Guide is serves as a very opinionated and intentional guide to how I develop websites, covering my approach to writing HTML, Sass, CSS and the likes.

## Table of Contents

1. [HTML5](#html5)
  1. [Doctype](#doctype)
  2. [Writing HTML Syntax](#writing-html-syntax)
  3. [Spacing](#spacing)
  4. [URLs](#urls)
2. [Sass](#sass)
  1. [Variables](#variables)
  2. [Functions](#functions)
  3. [Mixins](#mixins)
  4. [Nesting](#nesting)
  5. [Class Names](#class-names)
3. [CSS](#css)
  1. [Writing CSS Syntax](#writing-css-syntax)
  2. [Properties and Values](#properties-and-values)
  3. [Browser Prefixes](#browser-prefixes)
  4. [Selectors](#selectors)
  7. [Pseudo-elements and Pseudo-classes](#pseudo-elements-and-pseudo-classes)
4. [Inspiration](#inspiration)

## <a name='html5'></a>HTML5
The use of HTML5 should strictly follow the [HTML5 W3 Specifications](http://www.w3.org/TR/html5/). For browser support, use [CanIUse](http://caniuse.com/#cats=HTML5).

### <a name='doctype'></a>Doctype
Enforce standards mode and more consistent rendering in every browser by declaring the HTML5 Doctype at the beginning of every HTML page.

```html
<!DOCTYPE html>
```

### <a name='writing-html-syntax'></a>Writing HTML Syntax
- Use a soft tab (two spaces), so that the HTML is rendered the same across browsers.
- Nested elements should be indented once per level.
- When an attribute requires it, use single quotes unless for content.
- Use lowercase and dashes, not underscore or camelCase.
- Do not include trailing slash in self-closing elements.

### <a name='spacing'></a>Spacing
Large sections of HTML should be separated by a one line break for readability.

```html
<main>

  <section>
    ...
  </section>

  <section>
    ...
  </section>

</main>
```

### <a name='urls'></a>URLs
Use relative URLs whenever possible; this will prevent problems if the base URL ever changes during a project's lifespan.

```html
<a href='/about'>About</a>
```

## <a name='sass'></a>Sass
[Sass](http://sass-lang.com/) is my preferred choice for CSS preprocessing, it allows the author to add variables, nesting, functions, and mixins to their stylesheets. This document uses Sass syntax.

### <a name='variables'></a>Variables

Write global variables just as you would a CSS declaration, but optionally include one line break and comments between related variables for grouping and readability.

```scss
/* Colors */
$c--primary: #5B3C70;
$c--secondary: #E57B5D;
$c--primary-text: #0d0d0d;

/* Typography */
$font-stack: 'proxima-nova', Helvetica, sans-serif;

/* Base Styles */
$base-margin: 2rem;
$base-padding: 1rem;
$base-border: 0.25rem solid;
$base-border-radius: 0.125rem;
```

When writing local variables, include them as you would a CSS declaration, but always declare them before usage.

```scss
.example {
  $base: 2em;
  height: $base;
  width: $base;
  margin: $base/2;
}
```

It is a best practice to include your variables in a separate stylesheet (partial) titled `_variables.scss` and import that stylesheet into your main `style.scss` stylesheet where your Sass sources are being compiled.

When importing, do not include the `.scss` file extension or prepending underscore.

```scss
@import 'utilities/variables';
```

### <a name='functions'></a>Functions
```
Documentation in progress.
```

### <a name='mixins'></a>Mixins
```
Documentation in progress.
```

### <a name='nesting'></a>Nesting
Avoid nesting too deeply Sass for the sake of it. Things can get pretty ugly, pretty quickly.

```scss
.content__list {
  ul {
    li {
      a {
        &:hover {
        }
      }
    }
  }
}
```

The result will not be good.

```css
.content__list { ... }
.content__list ul { ... }
.content__list ul li { ... }
.content__list ul li a { ... }
.content__list ul li a:hover { ... }
```

### <a name='class-names'></a>Class Names
- Use the BEM (block, element, modifier) methodology for naming things, i.e., `btn__text--sold-out`.
- Be specific when naming classes. Use meaningful names that describe the action or functionality of a class rather than is appearance, i.e., `.btn--danger` instead of `.btn--red`.
- Abbreviate some class names, but make sure anyone can understand the class, i.e., `.cta` instead of `.call-to-action`.
- Prefix classes based on the closest parent element or base class.

## <a name='css'></a>CSS
The use of CSS should strictly follow the [CSS W3 Specifications](http://www.w3.org/TR/CSS/) for CSS properties and values. For browser support, use [CanIUse](http://caniuse.com/#cats=CSS).

### <a name='writing-css-syntax'></a>Writing CSS Syntax
- For readability, use a soft tab (two spaces).
- Nested elements (in Sass) should be indented with a soft tab.
- Include one space after the `:` for each declaration.
- Each individual declaration should be written on its own line and indented with a soft tab.
- End each declaration with a semi-colon.

### <a name='properties-and-values'></a>Properties and Values
- Avoid specifying units for zero values, i.e., `margin: 0;` instead of `margin: 0px`;
- Use shorthand whenever possible, i.e., `font` instead of `font-size` and `font-family` – be very intentional with typography.
- Use `!important` when necessary, but this should be avoided.
- Use single quotes and never double quotes.
- Stay consistent with units, i.e., do not use a mixture of `rem` and `px` for typography, unless for browser support where a `rem` fall back is needed.

### <a name='browser-prefixes'></a>Browser Prefixes
Figuring out which properties require browser prefixes is a hefty task, but [CanIUse](http://caniuse.com) provides information about browser support and which properties require prefixes. I recommend using [Autoprefixer](https://github.com/postcss/autoprefixer) if you are comfortable using a task runner.

### <a name='selectors'></a>Selectors
- Class selectors should be used before ID selectors.
- The universal `*` selector should be avoided at all costs.
- Avoid the use of multiple type selectors (also known as descendant selectors) whenever possible, i.e., `ul li a`.
- If selectors use the same declarations, group them together, i.e., `h1, h2, h3, h4, h5, h6 { ... }`.

### <a name='pseudo-elements-and-pseudo-classes'></a>Pseudo-elements and Pseudo-classes
When grouping pseudo-elements and classes with other selectors, include after the element they affect.

```css
a { ... }
a:hover { ... }
a:visited { ... }
```

Always declare the pseudo-elements `:before` first and `:after` following, but they should always come after element they affect. It is also best practice to include `content` property first.

```css
h1 { ... }
h1:before { ... }
h1:after {
  content: ' - See below';
}
```

When combining pseudo-classes, use two colons for the second class, i.e., `h1:after::hover`.

## <a name='inspiration'></a>Inspiration
This document is inspired by my personal writing style, [Code Guide by @mdo](http://codeguide.co/), [Google's Styleguide](https://github.com/google/styleguide), and [CSS Guidelines](http://cssguidelin.es/).