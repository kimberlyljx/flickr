
$(document).ready(function(){

  $("#previous_frame").click(function(){
    test=$('ul li:last-child')[0]
    $('ul').prepend(test);
    $('ul').css("right", "100%");
    $( "ul" ).animate({
      right: "-=100%"
    }, 500, function(){

    });
  });

  $("#next_frame").click(function(){
    $( "ul" ).animate({
      right: "+=100%"
    }, 500, function(){
      test=$('ul li:first-child')[0]
      $('ul').append(test);
      $('ul').css("right", "0%");
    });
  });
  });