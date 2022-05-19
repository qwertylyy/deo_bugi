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
{assign var="initial_slide" value=0}
{foreach from=$product.images item=image name="sliders"}
	{if $image.id_image == $product.default_image.id_image}
		{$initial_slide = $smarty.foreach.sliders.iteration - 1}
		{break}
	{/if}
{/foreach}
<div class="images-container js-images-container {(isset($quickview) && $quickview) ? 'images-for-quickview' : 'images-for-detail'}" data-initialslide="{$initial_slide}">
	{block name='product_cover_thumbnails'}

		{block name='product_cover'}
			<div class="product-cover">
				{include file='catalog/_partials/product-flags.tpl'}
	
				<div class="slick-row">
					<div class="product-images slick-slider deo-carousel deo-carousel-loading">
						{if $product.default_image}
							{foreach from=$product.images item=image}
								<a href="{$image.bySize.large_default.url}" rel="product-images-{$product.id_product}" class="image-container slick-slide{if $image.id_image == $product.default_image.id_image} initial-slide{/if} loading-xxl-1 loading-xl-1 loading-md-1 loading-sm-1 loading-xs-1 loading-sp-1">
									{if isset($lazyload) && $lazyload && $deo_lazyload}
										<span class="lazyload-wrapper" style="padding-bottom: {DeoHelper::calculateRateImage($image.bySize.large_default.width,$image.bySize.large_default.height)};">
											<span class="lazyload-icon"></span>
										</span>
										<img
											class="deo-js-qv-product-cover {if isset($gallery) && $gallery}lazyload{else}deo-lazyload-img{/if} img-fluid"
											{if isset($gallery) && $gallery}data-src{else}data-lazy{/if} = "{$image.bySize.large_default.url}"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
											alt = "{$image.legend}" 
											title="{$image.legend}" 
											itemprop="image"
										>
									{else}
										<img class="deo-js-qv-product-cover img-fluid" 
											src="{$image.bySize.large_default.url}" 
											alt="{$image.legend}"
											title="{$image.legend}" 
											itemprop="image"
										>
									{/if}
								</a>
							{/foreach}  
						{else}
							<a href="{$image.bySize.large_default.url}" rel="product-images-{$product.id_product}" class="image-container slick-slide initial-slide loading-xxl-1 loading-xl-1 loading-md-1 loading-sm-1 loading-xs-1 loading-sp-1">
								{if isset($lazyload) && $lazyload && $deo_lazyload}
									<span class="lazyload-wrapper" style="padding-bottom: {DeoHelper::calculateRateImage($urls.no_picture_image.bySize.large_default.width,$urls.no_picture_image.bySize.large_default.height)};">
											<span class="lazyload-icon"></span>
										</span>
									<img class="img-fluid lazyload no_picture_image" 
										{if isset($gallery) && $gallery}data-src{else}data-lazy{/if}="{$urls.no_picture_image.bySize.large_default.url}" 
										src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
										alt="{$product.name}" 
										title="{$product.name}" 
										itemprop="image"
									>
								{else}
									<img class="img-fluid no_picture_image" 
										src="{$urls.no_picture_image.bySize.large_default.url}" 
										alt="{$product.name}" 
										title="{$product.name}" 
										itemprop="image"
									>
								{/if}
							</a>
						{/if}
					</div>
				</div>
				{if $product.default_image}
					<div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
						<i class="zoom-in"></i>
					</div>
					<div class="layer hidden-md-up">
						<i class="zoom-in"></i>
					</div>
				{/if}
			</div>
		{/block}

		{block name='product_images'}
			<div class="product-thumbnail-carousel">
				<div class="slick-row">
					<div class="thumb-images slick-slider deo-carousel deo-carousel-loading">
						{if $product.default_image}
							{foreach from=$product.images item=image}
								<div class="thumb-container js-thumb-container slick-slide{if $image.id_image == $product.default_image.id_image} initial-slide{/if} {(isset($col_thumbnail)) ? $col_thumbnail : 'col-thumbnail'}">
									<a href="{$image.bySize.large_default.url}" rel="product-thumb-{$product.id_product}" class="thumbnail-image{if $image.id_image == $product.default_image.id_image} selected{/if}"> 
									
										{if isset($lazyload) && $lazyload && $deo_lazyload}
											<span class="lazyload-wrapper" style="padding-bottom: {if isset($size)}{DeoHelper::calculateRateImage($image.bySize[$size].width,$image.bySize[$size].height)}{else}{DeoHelper::calculateRateImage($image.bySize.home_default.width,$image.bySize.home_default.height)}{/if};">
												<span class="lazyload-icon"></span>
											</span>
											<img
												class="deo-js-thumb {if isset($gallery) && $gallery}lazyload{else}deo-lazyload-img{/if} img-fluid"
												{if isset($gallery) && $gallery}data-src{else}data-lazy{/if} = "{if isset($size)}{$image.bySize[$size].url}{else}{$image.bySize.home_default.url}{/if}"
												data-zoom-image="{$image.bySize.large_default.url}"
												src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
												alt = "{$image.legend}" 
												title="{$image.legend}" 
												itemprop="image"
											>
										{else}
											<img class="deo-js-thumb img-fluid" 
												src="{if isset($size)}{$image.bySize[$size].url}{else}{$image.bySize.home_default.url}{/if}"
												data-zoom-image="{$image.bySize.large_default.url}"
												alt="{$image.legend}"
												title="{$image.legend}" 
												itemprop="image"
											>
										{/if}
									</a>
								</div>
							{/foreach}
						{else}
							<div class="thumb-container js-thumb-container slick-slide initial-slide {(isset($col_thumbnail)) ? $col_thumbnail : 'col-thumbnail'}">
								<a class="thumbnail-image selected"> 	
									{if isset($lazyload) && $lazyload && $deo_lazyload}
										<span class="lazyload-wrapper" style="padding-bottom: {if isset($size)}{DeoHelper::calculateRateImage($urls.no_picture_image.bySize[$size].width,$urls.no_picture_image.bySize[$size].height)}{else}{DeoHelper::calculateRateImage($urls.no_picture_image.bySize.home_default.width,$urls.no_picture_image.bySize.home_default.height)}{/if};">
											<span class="lazyload-icon"></span>
										</span>
										<img 
											class="img-fluid no_picture_image" 
											{if isset($gallery) && $gallery}data-src{else}data-lazy{/if}="{if isset($size)}{$urls.no_picture_image.bySize[$size].url}{else}{$urls.no_picture_image.bySize.home_default.url}{/if}"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
											alt="{$product.name}"
											title="{$product.name}"
											itemprop="image"
										>
									{else}
										<img 
											class="img-fluid no_picture_image" 
											src="{if isset($size)}{$urls.no_picture_image.bySize[$size].url}{else}{$urls.no_picture_image.bySize.home_default.url}{/if}"
											alt="{$product.name}"
											title="{$product.name}"
											itemprop="image"
										>
									{/if}
								</a>
							</div>
						{/if}
					</div>
				</div>
			</div>
		{/block}
	{/block}
{hook h='displayAfterProductThumbs'}
</div>

