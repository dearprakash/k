hexo.extend.generator.register('archive', function(locals){
  var posts = locals.posts.sort('-date');

  return {
    path: 'writing/index.html',
    layout: 'archive',
    data: posts
  };
});