{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{foreach $javascript.external as $js}
  <script type="text/javascript" src="{$js.uri}" {$js.attribute}></script>
{/foreach}

{foreach $javascript.inline as $js}
  <script type="text/javascript">
    {$js.content nofilter}
  </script>
{/foreach}

{if isset($vars) && $vars|@count}
  <script type="text/javascript">
    {foreach from=$vars key=var_name item=var_value}
    var {$var_name} = {$var_value|json_encode nofilter};
    {/foreach}
  </script>
{/if}
<script type="text/javascript">
	var configurations_thumb = {
		activeMode: true,
		centerMode: false,
		speed: 300,
		dots: false,
		adaptiveHeight: false,
		infinite: false,
		autoplay: false,
		autoplaySpeed: 300,
		pauseOnHover: false,
		arrows: true,
		lazyLoad: (deo_lazyload) ? 'ondemand' : false,
		asNavFor: false,
		fade: false,
		focusOnSelect: true,
		mousewheel: true,
	};

	var configurations_cover = {
		centerMode: false,
		speed: 300,
		dots: false,
		adaptiveHeight: false,
		infinite: false,
		vertical: false,
		verticalSwiping: false,
		autoplay: false,
		autoplaySpeed: 300,
		pauseOnHover: false,
		arrows: true,
		lazyLoad: (deo_lazyload) ? 'ondemand' : false,
		responsive: false,
		asNavFor: false,
		fade: true,
		focusOnSelect: true,
		mousewheel: false,
	};


	// create option for slick slider of modal popup at product page
	var configurations_modal_product_page = {
		centerMode: false,
		speed: 300,
		dots: false,
		infinite: false,
		adaptiveHeight: false,
		vertical: true,
		verticalSwiping: false,
		autoplay: false,
		autoplaySpeed: 300,
		pauseOnHover: false,
		arrows: true,
		slidesToShow: 4,
		slidesToScroll: 1,
		rtl: false, 
		lazyLoad: (deo_lazyload) ? 'ondemand' : false,
		asNavFor: false,
		fade: false,
		focusOnSelect: true,
		mousewheel: true,
		responsive: [
			{
				breakpoint: 1200,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 1,
				}
			},
			{
				breakpoint: 992,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 576,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 400,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	};

	// create option for slick slider of quickview
	var configurations_quickview = {
		centerMode: false,
		speed: 300,
		dots: false,
		infinite: false,
		adaptiveHeight: false,
		vertical: true,
		verticalSwiping: true,
		autoplay: false,
		autoplaySpeed: 300,
		pauseOnHover: false,
		arrows: true,
		slidesToShow: 4,
		slidesToScroll: 1,
		rtl: false, 
		lazyLoad: (deo_lazyload) ? 'ondemand' : false,
		asNavFor: false,
		fade: false,
		focusOnSelect: true,
		mousewheel: true,
		responsive: [
			{
				breakpoint: 1200,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 1,
				}
			},
			{
				breakpoint: 992,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 576,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	};
</script>

