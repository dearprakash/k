$.getJSON("https://spreadsheets.google.com/feeds/list/1XMe6Tg84f3zMqf4u1jxaMZQQLnC41Onw2ELrCX5q1G8/od6/public/values?alt=json", function(data) {
  var distance = data.feed.entry[0]['gsx$distance']['$t'] / 0.621371;
  var inMiles = distance.toFixed(1);
  var steps = data.feed.entry[0]['gsx$steps']['$t'];
  var calories = data.feed.entry[0]['gsx$calories']['$t'];
  $('.distance').html(inMiles);
  $('.steps').html(steps);
  $('.calories').html(calories);
});