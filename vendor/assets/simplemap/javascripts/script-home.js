$(document).ready(function() {
  
  // activate carousels
  // $('#mobile-carousel').carousel();

  // Single page nav init
  $('.single-page-nav').singlePageNav({
    currentClass: "active"
  });

	// Full width slider
	// $('#cbp-fwslider').cbpFWSlider();

	// init fitvids plugin
  // $(".video").fitVids();

  // Plans border color changer
  $('.plan').mouseenter( function () {
  	$('.plan').css('borderColor', 'transparent');
  	$(this).css('borderColor', '#fff');
  });

});

// Homepage navbar shows on scroll
$( window ).scroll(function() {
  var windowTop    = $( window ).scrollTop();
      navbar       = $( '.navbar-scroll' );
      navbarOffset = navbar.data('topOffset');
  if ( windowTop > navbarOffset ) {
    navbar.removeClass('hidden');
  } else {
    navbar.addClass('hidden');
  }
});