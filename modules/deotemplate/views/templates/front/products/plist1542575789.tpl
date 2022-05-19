{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="product">
	{if isset($position)}<meta itemprop="position" content="{$position}" />{/if}
	<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
		<div class="thumbnail-container">
    <div class="product-image">

{include file="module:deotemplate/views/templates/hook/products/product_thumbnail.tpl" product=$product second_image="1" deo_size="small_default" labelflag="disable"}
</div>
    <div class="product-meta"><div class="box-button clearfix">

{include file="module:deotemplate/views/templates/hook/products/product_name.tpl"}

{include file="module:deotemplate/views/templates/hook/products/product_price_and_shipping.tpl"}</div>

{include file="module:deotemplate/views/templates/hook/products/description_short.tpl"}</div>
		</div>
	</article>
</div>
