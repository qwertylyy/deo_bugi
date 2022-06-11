{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}
<section id="main" class="product-detail" itemscope itemtype="https://schema.org/Product">
  <meta itemprop="url" content="{$product.url}"><div class="row"><div class="left-image-product-page col-xxl-8 col-xl-7 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-sp-12">
{block name='page_content_container'}
  <section class="page-content" id="content" data-col="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-6 col-xs-12 col-sp-12" data-type="gallery" data-lazyload="1" data-thumb="bottom" data-breakpoints="false" data-modal="1" data-column_xxl="2" data-column_xl="2" data-column_lg="1" data-column_md="1" data-column_sm="2" data-column_xs="1" data-column_sp="1" data-size="medium_default" data-zoom="out_scrooll" data-active="1">
    {block name='page_content'}
      {block name='product_cover_thumbnails'}
        {include file='catalog/_partials/product-cover-thumbnails.tpl' col_thumbnail="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-6 col-xs-12 col-sp-12" size="medium_default" lazyload=true gallery=true}
      {/block}
    {/block}
  </section>
{/block}

{block name='product_images_modal'}
  {include file='catalog/_partials/product-images-modal.tpl'}
{/block}

{include file="sub/product_info.tpl" type="show_all"}</div><div class="deo-block-fixed right-actions-product-page col-xxl-4 col-xl-5 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-sp-12">
{block name='page_header_container'}
	{block name='page_header'}
		<h1 class="h1 product-detail-name" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
	{/block}
{/block}
<div class="deo-line-detail"></div>
{block name='product_additional_info'}
	{include file='catalog/_partials/product-additional-info.tpl'}
{/block}
{hook h='displayDeoProductReviewExtra' product=$product}
{block name='product_prices'}
	{include file='catalog/_partials/product-prices.tpl'}
{/block}

{if !empty($product.specific_prices) && ($product.specific_prices.to|date_format:"%Y%m%d%H%m%S" > $product.specific_prices.from|date_format:"%Y%m%d%H%m%S")}
	<div class="countdown-product-page simple-countdown">
		<h4 class="title-countdown">{l s='Hungry up' d='Shop.Theme.Global'}</h4>
	 	<div class="deo-countdown pro" data-text-year="{l s='years' d='Shop.Theme.Global'}" data-text-week="{l s='weeks' d='Shop.Theme.Global'}" data-text-day="{l s='days' d='Shop.Theme.Global'}" data-text-hour="{l s='hours' d='Shop.Theme.Global'}" data-text-min="{l s='mins' d='Shop.Theme.Global'}" data-text-sec="{l s='secs' d='Shop.Theme.Global'}" data-text-finish="{l s='Expired' d='Shop.Theme.Global'}" data-time-from="{$product.specific_prices.from}" data-time-to="{$product.specific_prices.to}"></div>
	</div>
{/if}
{if isset($product.category_name) && isset($product.id_category_default)}
  <div class="more-infor-product category-default">
    <label>{l s='Category' d='Shop.Theme.Global'}:</label> <a href="{$link_deo->getCategoryLink($product.id_category_default)|escape:'html':'UTF-8'}" title="{$product.category_name}">{$product.category_name}</a>
  </div>
{/if}
{if (isset($product.reference) && $product.reference neq '') || (isset($product.reference_to_display) && $product.reference_to_display neq '')}
  <div class="more-infor-product reference">
    <label>{l s='Reference' d='Shop.Theme.Global'}:</label> <span>{if isset($product.reference_to_display) && $product.reference_to_display neq ''}{$product.reference_to_display}{else}ddd{$product.reference}{/if}</span>
  </div>
{/if}
{if $product.show_quantities}
  <div class="more-infor-product product-quantities">
    <label class="label">{l s='In stock' d='Shop.Theme.Global'}:</label> <span data-stock="{$product.quantity}" data-allow-oosp="{$product.allow_oosp}">{$product.quantity} {$product.quantity_label}</span>
  </div>
{/if}
{block name='product_description_short'}
  <div id="product-description-short-{$product.id}" class="description-short" itemprop="description">{$product.description_short nofilter}</div>
{/block}
{if $product.is_customizable && count($product.customizations.fields)}
	{block name='product_customization'}
	 	{include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
	{/block}
{/if}
<div class="deo-line-detail"></div>
<div class="product-actions">
  {block name='product_buy'}
    <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
      <input type="hidden" name="token" value="{$static_token}">
      <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
      <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

      {block name='product_variants'}
        {include file='catalog/_partials/product-variants.tpl'}
      {/block}

      {block name='product_pack'}
        {if $packItems}
          <section class="product-pack">
            <h3 class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</h3>
            {foreach from=$packItems item="product_pack"}
              {block name='product_miniature'}
                {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
              {/block}
            {/foreach}
        </section>
        {/if}
      {/block}

      {block name='product_discounts'}
        {include file='catalog/_partials/product-discounts.tpl'}
      {/block}

      {block name='product_add_to_cart'}
        {include file='catalog/_partials/product-add-to-cart.tpl'}
      {/block}

      {block name='product_refresh'}
        <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit" value="{l s='Refresh' d='Shop.Theme.Actions'}">
      {/block}
    </form>
  {/block}
</div>
{block name='hook_display_reassurance'}
  {hook h='displayReassurance'}
{/block}</div></div><div class="row"><div class="bottom-description-product-page col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-sp-12">

{include file="module:deotemplate/views/templates/front/details/_partials/product_accessories.tpl"}
{block name='product_footer'}
	{hook h='displayFooterProduct' product=$product category=$category}
{/block}</div></div>
	{block name='page_footer_container'}
	  <footer class="page-footer">
	    {block name='page_footer'}
	    	<!-- Footer content -->
	    {/block}
	  </footer>
	{/block}
</section>

