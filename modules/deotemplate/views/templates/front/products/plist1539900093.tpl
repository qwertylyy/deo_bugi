{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="product">
	{if isset($position)}<meta itemprop="position" content="{$position}" />{/if}
	<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
		<div class="thumbnail-container bg-hover-product bg-hover-white">
    <div class="product-image">

{include file="module:deotemplate/views/templates/hook/products/product_thumbnail.tpl" product=$product second_image="1" deo_size="home_default" labelflag="newsale"}
<div class="box-button clearfix">
{hook h='displayDeoWishlistButton' product=$product}


{include file="module:deotemplate/views/templates/hook/products/quickview.tpl"}

{hook h='displayDeoCompareButton' product=$product}

{hook h='displayDeoCartButton' product=$product}
</div>

{include file="module:deotemplate/views/templates/hook/products/countdown.tpl"}</div>
    <div class="product-meta">

{include file="module:deotemplate/views/templates/hook/products/product_name.tpl"}

{include file="module:deotemplate/views/templates/hook/products/category_default.tpl"}
{hook h='displayDeoProductListReview' product=$product show_count="false" show_text_count="false" show_zero_review="true"}


{include file="module:deotemplate/views/templates/hook/products/product_price_and_shipping.tpl"}

{include file="module:deotemplate/views/templates/hook/products/description_short.tpl"}</div>
		</div>
	</article>
</div>
