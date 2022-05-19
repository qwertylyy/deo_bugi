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

{block name="setting"}
  {include file="layouts/setting.tpl"}
{/block}
{if $layouts_page == 'layout-full-width'}
  {assign var="large_desktop" value=$NUMBER_PRODUCT_LARGE_DESKTOP}
  {assign var="desktop" value=$NUMBER_PRODUCT_DESKTOP}
  {assign var="small_desktop" value=$NUMBER_PRODUCT_SMALL_DESKTOP}
  {assign var="tablet" value=$NUMBER_PRODUCT_SMALL_TABLET}
  {assign var="small_tablet" value=$NUMBER_PRODUCT_MOBILE}
  {assign var="mobile" value=$NUMBER_PRODUCT_MOBILE}
  {assign var="small_mobile" value=$NUMBER_PRODUCT_SMALL_MOBILE}
{else if $layouts_page == 'layout-left-column' || $layouts_page == 'layout-right-column'}
  {assign var="large_desktop" value=$NUMBER_PRODUCT_LARGE_DESKTOP_SIDEBAR}
  {assign var="desktop" value=$NUMBER_PRODUCT_DESKTOP_SIDEBAR}
  {assign var="small_desktop" value=$NUMBER_PRODUCT_DESKTOP_SIDEBAR}
  {assign var="tablet" value=$NUMBER_PRODUCT_SMALL_DESKTOP_SIDEBAR}
  {assign var="small_tablet" value=$NUMBER_PRODUCT_SMALL_TABLET_SIDEBAR}
  {assign var="mobile" value=$NUMBER_PRODUCT_MOBILE_SIDEBAR}
  {assign var="small_mobile" value=$NUMBER_PRODUCT_SMALL_MOBILE_SIDEBAR}
{else if $layouts_page == 'layout-both-columns'}
  {assign var="large_desktop" value=$NUMBER_PRODUCT_LARGE_DESKTOP_BOTH}
  {assign var="desktop" value=$NUMBER_PRODUCT_DESKTOP_BOTH}
  {assign var="small_desktop" value=$NUMBER_PRODUCT_SMALL_DESKTOP_BOTH}
  {assign var="tablet" value=$NUMBER_PRODUCT_SMALL_DESKTOP_BOTH}
  {assign var="small_tablet" value=$NUMBER_PRODUCT_TABLET_BOTH}
  {assign var="mobile" value=$NUMBER_PRODUCT_SMALL_TABLET_BOTH}
  {assign var="small_mobile" value=$NUMBER_PRODUCT_MOBILE_BOTH}
{/if}
<section class="crossselling-products block title-normal title-center button-middle button-hover clearfix">
  <div class="box-title">
    <h2 class="title_block">{l s='Customers who bought this product also bought' d='Shop.Theme.Catalog'}</h2>
  </div>
  <div class="block_content">
    <div class="products">
      <div class="slick-row">
        <div id="crosselling-products" class="slick-carousel deo-carousel slick-slider deo-carousel-loading {(isset($productClassWidget) && $productClassWidget) ? $productClassWidget : ''}" 
          data-centermode="false" 
          data-dots="false" 
          data-adaptiveheight="true" 
          data-infinite="false" 
          data-vertical="false" 
          data-verticalswiping="false" 
          data-autoplay="true" 
          data-autoplayspeed="8000" 
          data-pauseonhover="true" 
          data-arrows="true" 
          data-slidestoshow="{$large_desktop}" 
          data-slidestoscroll="1" 
          data-rtl="{if isset($IS_RTL) && $IS_RTL}true{else}false{/if}" 
          data-lazyload="{if $deo_lazyload}true{else}false{/if}" 
          data-lazyloadtype="ondemand" 
          data-responsive="[[1500,{$desktop}],[1200,{$small_desktop}],[992,{$tablet}],[768,{$small_tablet}],[576,{$mobile}],[480,{$small_mobile}]]" 
          data-mousewheel="false" 
          data-fade="false" 
        >   
          {$mproducts=array_chunk($products,1)}
          {foreach from=$mproducts item=products name=mypLoop}
            <div class="slick-slide loading-xxl-{$large_desktop} loading-xl-{$large_desktop} loading-lg-{$desktop} loading-md-{$small_desktop} loading-sm-{$tablet} loading-xs-{$small_tablet} loading-sp-{$mobile}">
              <div class="item">
                {foreach from=$products item=product name=products}
                  {if isset($productProfileDefault) && $productProfileDefault}
                    {* exits THEME_NAME/profiles/profile_name.tpl -> load template*}
                    {hook h='displayDeoProfileProduct' product=$product profile=$productProfileDefault}
                  {else}
                    {include file='catalog/_partials/miniatures/product.tpl' product=$product}
                  {/if}
                {/foreach}
              </div>
            </div>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
</section>
