$(document).ready(function(){

    /*===================================================================
    =            This is used for changin the instagram feed            =
    ===================================================================*/
    
    $('#recent').pongstgrm({
      accessId    : '174435186', // find your user id here http://jelled.com/instagram/lookup-user-id
      accessToken : '620535109.49902b3.31fc2b6a769e4924b2f0afa9391be049', // Get one for your photos here http://jelled.com/instagram/access-token
      count : 4 //default shown images
    });
    
    /*-----  End of This is used for changin the instagram feed  ------*/
    
    /*============================================
    =            Navigation dropdown on scroll            =
    ============================================*/
    
    var navbarActive = false;

    $( window ).on('scroll', function() {
        
        var scroll = $(window).scrollTop();
           
        if ( scroll >= 200 ) {

            if(navbarActive === false) {

                $('.navbar').animate({
                    opacity: 0.80,
                    top: 0
                    },
                    400,
                    function() {
                    }
                );

                navbarActive = true;
            }

        } else if ( scroll < 200 ){

            if( navbarActive === true) {

                $('.navbar').animate({
                    opacity: 0,
                    top: '-50px'
                    },
                    500,
                    function() {
                    }
                );
            }

            navbarActive = false;

        }
    });
    
    
    /*-----  End of Navigation dropdown on scroll  ------*/
    
    /*============================================
    =            Scrolling navigation            =
    ============================================*/
    
    $(".scroll").click(function(event){

        $(this.hash).children().removeClass("hidden");
            event.preventDefault();
            //calculate destination place

            var dest = 0;
        
            if ($(this.hash).offset().top > $(document).height()-$(window).height()) {
                
                if(Modernizr.touch) {
                    dest = ( $(document).height()-$(window).height() ) - 50 ;

                } else {
                    dest = ( $(document).height()-$(window).height() )  - 100 ;
                }

            } else {
                
                if(Modernizr.touch) {

                    dest = ($(this.hash).offset().top) - 50;
                } else {

                    dest = ($(this.hash).offset().top) - 100;
                }
        }
            //go to destination

        $('html,body').animate({

            scrollTop: dest

        }, 600,'swing');

    });
    
    /*==========  removes hidden classes to allow scroll to from top  ==========*/
    
        $( ".navbar, .scroll" )
            .mouseenter(function() {
            $('.social-icons, .about-secondary, .quote, .about-title, .about-p1, .about-p2, .about-p3, .about-p4, .about-hr, .form-container, .hire-info').removeClass("hidden").addClass("animated fadeIn");
            
        });
    /*-----  End of remove hidden class  ------*/
    
    /*==========  tracks position and adds active class to nav items  ==========*/
    
        $('body').scrollspy({
            target: '.navbar',
            offset: 100
         });

    /*==========  Fixes issue with bootsrap not closing on mobile  ==========*/
        
        $('.navbar-collapse').children().children().on('click', function() {
            $(this).parent().parent().removeClass('in').addClass('collapse');
        });

    /*-----  End of Scrolling navigation  ------*/
    
    /*=======================================================================
    =            Fading in sections on scroll if at correct size            =
    =======================================================================*/
    
    if (matchMedia('only screen and (max-width: 992px)').matches) {
            $('#contact').css("background-color","#34495e");
    }
    if (matchMedia('only screen and (min-width: 1400px)').matches) {
            $('#contact').css("background-color","#34495e");
    }
    if (matchMedia('only screen and (max-width: 1400px) and (min-width: 992px)').matches) {
        $('.social-icons, .about-secondary, .quote, .about-title, .about-p1, .about-p2, .about-p3, .about-p4, .about-hr, .form-container, .hire-info').addClass("hidden");

        $('#about').waypoint( function (direction) {
        $('.about-title, .about-p1').removeClass("hidden").addClass("animated fadeInDown");
        $('.about-hr').removeClass("hidden").addClass("animated fadeIn delay-1");

        },{ offset: 500 });

        $('#about').waypoint( function (direction) {
            $(' .about-p2').removeClass("hidden").addClass("animated fadeIn");

        },{ offset: 200 });

        $('#about').waypoint( function (direction) {
            $(' .about-p3').removeClass("hidden").addClass("animated fadeIn");

        },{ offset: 50 })

        $('#about').waypoint( function (direction) {
            $(' .about-p4').removeClass("hidden").addClass("animated fadeIn");
            $(' .quote').removeClass("hidden").addClass("animated fadeIn");

        },{ offset: 0 });

        $('#about').waypoint( function (direction) {
            $('.about-secondary').removeClass("hidden").addClass("animated fadeIn");
            $(' .form-container, .hire-info').removeClass("hidden").addClass("animated fadeIn delay-6");
            $('#contact').css("background-color","#34495e");
        },{ offset: -200 });

    }
    
    
    /*-----  End of Fading in sections on scroll if at correct size  ------*/
    
    
    /*========================================
    =            Stellar Parallax            =
    ========================================*/
    
    //Only used on hero images

        $.stellar({
            // Set scrolling to be in either one or both directions
            horizontalScrolling: false,
            verticalScrolling: true,

            // Set the global alignment offsets
            horizontalOffset: 0,
            verticalOffset: 0,

            // Refreshes parallax content on window load and resize
            responsive: true,

            // Select which property is used to calculate scroll.
            // Choose 'scroll', 'position', 'margin' or 'transform',
            // or write your own 'scrollProperty' plugin.
            scrollProperty: 'scroll',

            // Select which property is used to position elements.
            // Choose between 'position' or 'transform',
            // or write your own 'positionProperty' plugin.
            positionProperty: 'position',

            // Enable or disable the two types of parallax
            parallaxBackgrounds: true,
            parallaxElements: true,

            // Hide parallax elements that move outside the viewport
            hideDistantElements: true,

            // Customise how elements are shown and hidden
            hideElement: function($elem) { $elem.hide(); },
            showElement: function($elem) { $elem.show(); }
        });
    
    /*-----  End of Stellar Parallax  ------*/
    

}); 
