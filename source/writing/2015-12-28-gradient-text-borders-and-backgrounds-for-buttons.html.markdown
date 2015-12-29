---
title: "Gradient Text, Borders and Backgrounds for Buttons"
description: "Tips and tricks on creating gradient ghost buttons and more."
date: 2015-12-28
tags: sass, css
---

# Gradient Text, Borders and Backgrounds for Buttons
<time>December 28th, 2015</time>

Working with [Trillectro](https://twitter.com/trillectro) has resulted in the use of **a lot** of gradients. After exploring a few different button styles, I came up with a good solution for gradient ghost buttons with gradient text. To make my life easier, I created a couple of Sass mixins that would allow me to reuse those styles throughout the project when needed.

When creating a class for gradient text, it is best to apply it to a `<span>` tag so that the gradient is clipped only to the text itself. The [pen](http://codepen.io/laurendorman/pen/ZQBYmV) below shows how those styles are used.

<iframe height='435' scrolling='no' src='//codepen.io/laurendorman/embed/ZQBYmV/?height=435&theme-id=0&default-tab=result' frameborder='no' allowtransparency='true' allowfullscreen='true' style='width: 100%;'></iframe>

I created a [gist](https://gist.github.com/laurendorman/2af852cd1eb92c713a1c) to host the mixins along with simple directions on how to use them.

<script src="https://gist.github.com/laurendorman/2af852cd1eb92c713a1c.js"></script>

These mixins are best used with [Autoprefixer](https://github.com/postcss/autoprefixer) or your favorite postprocessor for cross-browser compatibility.

Enjoy!