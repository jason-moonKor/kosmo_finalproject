/**
 * 
 */
 
 /*!
* Start Bootstrap - Agency v7.0.10 (https://startbootstrap.com/theme/agency)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-agency/blob/master/LICENSE)
*/
//
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    // Shrink the navbar 
    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 74,
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

});


// 옵션 셀렉트창
var _select_title = $(".text_ul_wrap > a");
$('<div class="select_icon"></div>').insertAfter(_select_title);

_select_title.click(function () {
  $(".ul_select_style").toggleClass("active");
  $(".select_icon").toggleClass("active");
});

$(".ul_select_style > li").on('click', function () {
  var _li_value = $(this).text();
  _select_title.text(_li_value);
  $(".ul_select_style").removeClass("active");
  $(".select_icon").toggleClass("active");
});
$("body").click(function (e) {
  if($(".ul_select_style").hasClass("active")){
    if(!$(".text_ul_wrap").has(e.target).length){
      $(".ul_select_style").removeClass("active");
      $(".select_icon").removeClass("active");
    };
  }
})



// 옵션 벨류 값 
$("select[name=location]").change(function(){
    console.log($(this).val()); //value값 가져오기
    console.log($("select[name=location] option:selected").text()); //text값 가져오기
  });
  
  
  //계산
							var sell_price;
							var amount;
							
							function init () {
								sell_price = document.form.sell_price.value;
								amount = document.form.amount.value;
								document.form.sum.value = sell_price;
								change();
							}
							
							function add () {
								hm = document.form.amount;
								sum = document.form.sum;
								hm.value ++ ;
							
								sum.value = parseInt(hm.value) * sell_price;
							}
							
							function del () {
								hm = document.form.amount;
								sum = document.form.sum;
									if (hm.value > 1) {
										hm.value -- ;
										sum.value = parseInt(hm.value) * sell_price;
									}
							}
							
							function change () {
								hm = document.form.amount;
								sum = document.form.sum;
							
									if (hm.value < 0) {
										hm.value = 0;
									}
								sum.value = parseInt(hm.value) * sell_price;
							}  


