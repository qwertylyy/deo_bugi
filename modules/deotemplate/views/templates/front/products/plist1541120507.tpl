{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="product">
	{if isset($position)}<meta itemprop="position" content="{$position}" />{/if}
	<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
		<div class="thumbnail-container more-image more-image-horizontal">
    <div class="product-image">

{include file="module:deotemplate/views/templates/hook/products/product_thumbnail.tpl" product=$product second_image="1" deo_size="home_default" labelflag="newsale"}


{include file="module:deotemplate/views/templates/hook/products/more_image.tpl" product=$product deo_size="cart_default" vertical="false" dots="false" centermode="false" lazyload="true" mousewheel="false" fade="false" slidestoshow="5" responsive="false" col_loading=" loading-sp-5 loading-xs-5 loading-sm-5 loading-md-5 loading-lg-5 loading-xl-5 loading-xxl-5"}


{include file="module:deotemplate/views/templates/hook/products/countdown.tpl"}</div>
    <div class="product-meta">

{include file="module:deotemplate/views/templates/hook/products/product_name.tpl"}

{include file="module:deotemplate/views/templates/hook/products/category_default.tpl"}

{include file="module:deotemplate/views/templates/hook/products/product_price_and_shipping.tpl"}

{hook h='displayDeoProductAtribute' product=$product show_name_attribute="true" show_value_text="false" show_color="true"}<div class="box-button clearfix">

{include file="module:deotemplate/views/templates/hook/products/description.tpl"}
{hook h='displayDeoCartButton' product=$product}


{include file="module:deotemplate/views/templates/hook/products/quickview.tpl"}

{hook h='displayDeoCompareButton' product=$product}

{hook h='displayDeoWishlistButton' product=$product}
</div></div>
		</div>
	</article>
</div>
