
function moveDescriptionProductpage(){
	if ($(window).width() < 768) {
		$('.product-tabs.tabs,.default-info-product,.products-accordion').prependTo($('.bottom-description-product-page'));
	} else {
		$('.product-tabs.tabs,.default-info-product,.products-accordion').appendTo($('.left-image-product-page'));
	}
}
$(document).ready(function () {
	moveDescriptionProductpage();
})
$(window).resize(function () {
	moveDescriptionProductpage();
});