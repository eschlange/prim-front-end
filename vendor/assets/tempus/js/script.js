/*
 * All the plugins init are in this file
 **/

$(document).ready(function() {
  
  // init top to bottom
  $('.header-btn').click( function(e) {
    e.preventDefault();
    $('html,body').animate({scrollTop:$(".join").offset().top}, 'slow'); 
  });

  
  // ajax contact form
  $('.contact-form').submit(function(){
    $.post('contact-form.php', $(this).serialize(), function(data){
      $('.contact-form').html(data);
      $('.contact-form input, #contact-form textarea').val('');
    });				
    return false;
  });

  // ajax subscription
  $('.subscription-form').submit(function(){
    $.post('subscription.php', $(this).serialize(), function(data){
    
      $('.subscription-form > *').fadeIn();
      $('.subscription-form').html(data);
      $('.subscription-form input').val('');
    });				
    return false;
  });

});