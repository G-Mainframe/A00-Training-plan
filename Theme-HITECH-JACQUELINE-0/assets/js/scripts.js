/*
Author       : Syed Ekram.
Template Name: Jacqueline - Responsive Business Template
Version      : 1.0
*/

(function($) {
	'use strict';
	
	$(document).ready(function(){
	
		/*PRELOADER JS*/
		$(window).load(function() { 
			$('.status').fadeOut();
			$('.preloader').delay(350).fadeOut('slow'); 
		}); 
		/*END PRELOADER JS*/

		/*START MENU JS*/
			$(window).scroll(function() {
			  if ($(this).scrollTop() > 100) {
				$('.menu-top').addClass('menu-shrink');
			  } else {
				$('.menu-top').removeClass('menu-shrink');
			  }
			});
			
			$(document).on('click','.navbar-collapse.in',function(e) {
			if( $(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle' ) {
				$(this).collapse('hide');
			}
			});			
		/*END MENU JS*/ 		

		/*START PROGRESS-BAR JS*/
	    $('.progress-bar > span').each(function(){
			var $this = $(this);
			var width = $(this).data('percent');
			$this.css({
				'transition' : 'width 2s'
			});
			
			setTimeout(function() {
				$this.appear(function() {
						$this.css('width', width + '%');
				});
			}, 500);
		});
		/*END PROGRESS-BAR JS*/
		
		/*START TEAM CAROUSEL JS*/
			var slider = new MasterSlider();
			slider.setup('teamslider' , {
				loop:true,
				width:200,
				height:200,
				speed:20,
				view:'focus',
				preload:'all',
				space:0,
				wheel:true
			});
			slider.control('arrows');
			slider.control('slideinfo',{insertTo:'#staff-info'});

			$('#myTab a').on(function (e) {
			  e.preventDefault();
			  $(this).tab('show');
			});
		/*END TEAM CAROUSEL JS*/
		
		
		/* START COUNTDOWN JS*/
		$('.counter_feature').on('inview', function(event, visible, visiblePartX, visiblePartY) {
			if (visible) {
				$(this).find('.timer').each(function () {
					var $this = $(this);
					$({ Counter: 0 }).animate({ Counter: $this.text() }, {
						duration: 2000,
						easing: 'swing',
						step: function () {
							$this.text(Math.ceil(this.Counter));
						}
					});
				});
				$(this).unbind('inview');
			}
		});
		/* END COUNTDOWN JS */		

		/*START PARTNER LOGO*/
		$('.partner').owlCarousel({
		  autoPlay: 5000, //Set AutoPlay to 3 seconds
		  items : 4,
		  itemsDesktop : [1199,3],
		  itemsDesktopSmall : [979,3]
		});
		/*END PARTNER LOGO*/
			
		/*START SLIDER JS*/
		$('.carousel').carousel({
			interval:7000,
			pause:'false',
		});
		/*END SLIDER JS*/   

	}); 	

		/* START PORTFOLIO JS */
		jQuery('.grid').mixitup({
		targetSelector: '.mix',
		});
		
		$('.image-popup').magnificPopup({
			type: 'image',
			closeOnContentClick: true,
			mainClass: 'mfp-img-mobile',
			image: {
				verticalFit: true
			}
		
		});
		/* END PORTFOLIO JS */
		
	/*START WOW ANIMATION JS*/
	  new WOW().init();	
	/*END WOW ANIMATION JS*/	
				
})($);


  

