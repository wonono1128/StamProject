$(function(){
    var swiper = new Swiper(".swiper-container", {
        direction: "vertical",
        slidesPerView: 1,
        spaceBetween: 30,
        mousewheel: true,
        effect: 'fade',
        fadeEffect: {
        crossFade: true
    },
    mousewheel: {
        releaseOnEdges: true,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });


    $('.btn_nav').click(function(){
    	$(this).hide();
    	$('.btn_back').show();
    	$('.header').addClass('moveRight');
    	$('.container').addClass('moveRight');
    	$('.navi_wrap').addClass('open');
    });

    $('.btn_back').click(function(){
    	$(this).hide();
    	$('.btn_nav').show();
    	$('.header').removeClass('moveRight');
    	$('.container').removeClass('moveRight');
    	$('.navi_wrap').removeClass('open');
    });

    

});

function scrollDisable(){
    $('body').addClass('scrollDisable').on('scroll touchmove mousewheel', function(e){
        e.preventDefault();
    });
}
function scrollAble(){
    $('body').removeClass('scrollDisable').off('scroll touchmove mousewheel');
}


function contentsHeight(){
	var headerHeight;
	$(window).ready(function () {
		headerHeight = $('.header').innerHeight()+'px';
		$('.contents').css('height', headerHeight);
	});
	$(window).resize(function () {
		headerHeight = $('.header').innerHeight()+'px';
		$('.contents').css('height', headerHeight);
    });
}

//Modal
function modal(id){
  $('.modal').hide()
  $('#'+id).fadeIn()
}
$(function(){
  $('.btn_open').on('click', function(){
    var modalID = $(this).attr('data-target');
    modal(modalID);
    $('.modal_close').bind('click', function(e){
         $('.modal').fadeOut();
    });
    //e.preventDefault();
  });

  $(window).resize(function () {
    if (document.body.clientWidth > 816) {
        $('.modal').hide();
    }else{
       // $('.modal').show();
    }
    });

});
