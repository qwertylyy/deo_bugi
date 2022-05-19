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
{block name='product_miniature_item'}
<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="product">
	{if isset($position)}<meta itemprop="position" content="{$position}" />{/if}
	<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
		<div class="thumbnail-container">
			<div class="product-image">
				{block name='product_thumbnail'}
					{if $product.cover}
						{if (isset($formAtts.lazyload) && $formAtts.lazyload) || (isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload) || (!isset($formAtts) && $deo_lazyload)}
							<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.home_default};">
								<span class="lazyload-icon"></span>
							</span>
							<img
								class="img-fluid {if (isset($formAtts.lazyload) && $formAtts.lazyload) || !isset($formAtts)}lazyload{/if}"
								{if isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload}data-lazy{else}data-src{/if} = "{if isset($sidebar)}{$product.cover.bySize.small_default.url}{else}{$product.cover.bySize.home_default.url}{/if}"
								src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
								alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
								data-full-size-image-url = "{$product.cover.large.url}"
								data-image-type="home_default"
							>
						{else}
							<img
								class="img-fluid"
								src = "{if isset($sidebar)}{$product.cover.bySize.small_default.url}{else}{$product.cover.bySize.home_default.url}{/if}"
								alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
								data-full-size-image-url = "{$product.cover.large.url}"
								data-image-type="home_default"
							>
						{/if}
						{include file="module:deotemplate/views/templates/hook/products/_partials/second_image.tpl" deo_size="home_default"}
					{else}
						{if (isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload) || (!isset($formAtts) && $deo_lazyload)}
							<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.home_default};">
								<span class="lazyload-icon"></span>
							</span>
							<img
								class="img-fluid {if (isset($formAtts.lazyload) && $formAtts.lazyload) || !isset($formAtts)}lazyload{/if}"
								{if isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload}data-lazy{else}data-src{/if} = "{if isset($sidebar)}{$urls.no_picture_image.bySize.small_default.url}{else}{$urls.no_picture_image.bySize.home_default.url}{/if}"
								src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
								alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
							>
						{else}
							<img
								class="img-fluid"
								src = "{if isset($sidebar)}{$urls.no_picture_image.bySize.small_default.url}{else}{$urls.no_picture_image.bySize.home_default.url}{/if}"
								alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
							>
						{/if}
					{/if}
				{/block}
	 
				<div class="box-label">
					{block name='box_label'}
						{foreach from=$product.flags item=flag}
							{if $flag.type ==  'on-sale'}
								<label class="label product-flag {$flag.type}"><span>{l s='Sale' d='Shop.Theme.Actions'}</span></label>
							{/if}
						{/foreach}
						{foreach from=$product.flags item=flag}
							{if $flag.type ==  'new'}
								<label class="label product-flag {$flag.type}"><span>{l s='New' d='Shop.Theme.Global'}</span></label>
							{/if}
						{/foreach}
					{/block}
				</div>

				{block name='product_flags'}
					<ul class="product-flags">
						{foreach from=$product.flags item=flag}
							{if $flag.type != 'new' && $flag.type != 'on-sale'}
								<li class="product-flag {$flag.type}">{$flag.label}</li>
							{/if}
						{/foreach}
					</ul>
				{/block}

				<div class="box-button clearfix">
					{hook h='displayDeoCartButton' product=$product}
					{hook h='displayDeoWishlistButton' product=$product}
					{hook h='displayDeoCompareButton' product=$product}
					{block name='quick_view'}
						<div class="btn-quickview-product-list{if !$product.main_variants} no-variants{/if} hidden-sm-down">
							<a
								href="javascript:void(0)"
								class="deo-quick-view btn-product btn quick-view"
								data-link-action="quickview"
								data-source=".thumb-gallery-{$product.id}-{$product.id_product_attribute}"
								title="{l s='Quick view' d='Shop.Theme.Actions'}"
							>
								<span class="content-btn-product">
									<i class="loading-btn-product"></i>
									<i class="icon-btn-product icon-quick-view"></i>
									<span class="name-btn-product">{l s='Quick view' d='Shop.Theme.Actions'}</span>
								</span>
							</a>
						</div>
					{/block}
				</div>
				
			</div>
			<div class="product-meta">
				{block name='product_name'}
					{if $page.page_name == 'index'}
						<h3 class="h3 product-title" itemprop="name"><a href="{$product.url}" itemprop="url" content="{$product.url}">{$product.name|truncate:100:'...'}</a></h3>
					{else}
						<h2 class="h3 product-title" itemprop="name"><a href="{$product.url}" itemprop="url" content="{$product.url}">{$product.name|truncate:100:'...'}</a></h2>
					{/if}
				{/block}

				{if isset($product.category_name) && isset($product.id_category_default)}
					<div class="category-default">
						<a href="{$link->getCategoryLink($product.id_category_default)|escape:'html':'UTF-8'}" title="{$product.category_name}">{$product.category_name}</a>
					</div>
				{/if}

				{hook h='displayDeoProductListReview' product=$product}

				{block name='product_price_and_shipping'}
					{if $product.show_price}
						<div class="product-price-and-shipping {if $product.has_discount}has_discount{/if}">
							{if $product.has_discount}
								{hook h='displayProductPriceBlock' product=$product type="old_price"}
								<span class="regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
								{if $product.discount_type === 'percentage'}
									<span class="discount-percentage discount-product">{$product.discount_percentage}</span>
								{elseif $product.discount_type === 'amount'}
									<span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
								{/if}
							{/if}

							{hook h='displayProductPriceBlock' product=$product type="before_price"}

							<span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
								{capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
								{if '' !== $smarty.capture.custom_price}
									{$smarty.capture.custom_price nofilter}
								{else}
									{$product.price}
								{/if}
							</span>
							<div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="invisible">
								<meta itemprop="priceCurrency" content="{$currency.iso_code}" />
								<meta itemprop="price" content="{$product.price_amount}" />
							</div>

							{hook h='displayProductPriceBlock' product=$product type='unit_price'}

							{hook h='displayProductPriceBlock' product=$product type='weight'}
						</div>
					{/if}
				{/block}

				<div class="highlighted-informations{if !$product.main_variants} no-variants{/if}">
					{block name='product_variants'}
						{if $product.main_variants}
							{include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
						{/if}
					{/block}
				</div>
		
				{block name='product_reviews'}
					{hook h='displayProductListReviews' product=$product}
				{/block} 

				<div class="product-description">
					{block name='product_description_short'}
						<div class="product-description-short" itemprop="description">{$product.description_short|strip_tags:false|truncate:150:'...' nofilter}</div>
					{/block}
				</div>
		
			</div>
		</div>
	</article>
</div>
{/block}
