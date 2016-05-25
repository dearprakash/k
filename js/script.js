var menuButton = $('#menu-icon');
var menu = $('#menu');
  
menuButton.click(function(){
  $(this).toggleClass('open');
  menu.toggleClass('open');
});

// Cross-browser Emoji Support

$(function(){
  $('main').each(function(){
    var el = $(this);
    var input = el.html();
    var output = input;
    output = emoji.replace_colons(output);
    output = emoji.replace_unified(output);
    el.html(output);
  });
});