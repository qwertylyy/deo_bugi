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
<div class="modal fade js-product-images-modal deo-product-modal" id="product-modal" data-thumbnails=".product-images-{$product.id_product}">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="product-modal-wrapper">
					<figure>
						<div class="slick-row">
							<div class="product-modal-cover slick-slider deo-carousel deo-carousel-loading">
								{if $product.default_image}
									{foreach from=$product.images item=image}
										<div class="image-container slick-slide{if $image.id_image == $product.default_image.id_image} initial-slide{/if} loading-xxl-1 loading-xl-1 loading-md-1 loading-sm-1 loading-xs-1 loading-sp-1">
											{if $deo_lazyload}
												<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.small_default};">
													<span class="lazyload-icon"></span>
												</span>
												<img
													class="deo-js-qv-product-cover deo-lazyload-img img-fluid"
													data-lazy = "{$image.bySize.large_default.url}"
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
										</div>
									{/foreach}  
								{else}
									<div class="image-container slick-slide initial-slide loading-xxl-1 loading-xl-1 loading-md-1 loading-sm-1 loading-xs-1 loading-sp-1">
										<img class="img-fluid no_picture_image" 
											src="{$urls.no_picture_image.bySize.large_default.url}" 
											alt="{$product.name}" 
											title="{$product.name}" 
											itemprop="image"
										>
									</div>
								{/if}
							</div>
						</div>

						<figcaption class="image-caption">
							{block name='product_description_short'}
								<div id="product-description-short-modal" itemprop="description">{$product.description_short nofilter}</div>
							{/block}
						</figcaption>
					</figure>

					{block name='product_images'}
						<div class="product-thumbnail-carousel">
							<div class="slick-row">
								<aside id="thumbnails" class="thumbnails product-modal-thumb slick-slider deo-carousel deo-carousel-loading">
									{if $product.default_image}
										{foreach from=$product.images item=image}
											<div class="thumb-container js-thumb-container slick-slide{if $image.id_image == $product.default_image.id_image} initial-slide{/if} col-thumbnail">
												<div class="thumbnail-image{if $image.id_image == $product.default_image.id_image} selected{/if}"> 
													{if $deo_lazyload}
														<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.small_default};">
															<span class="lazyload-icon"></span>
														</span>
														<img
															class="deo-js-thumb deo-lazyload-img img-fluid"
															data-lazy = "{$image.bySize.home_default.url}"
															data-zoom-image="{$image.bySize.large_default.url}"
															src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
															alt = "{$image.legend}" 
															title="{$image.legend}" 
															itemprop="image"
														>
													{else}
														<img class="deo-js-thumb img-fluid" 
															src="{$image.bySize.large_default.url}" 
															data-zoom-image="{$image.bySize.large_default.url}"
															alt="{$image.legend}"
															title="{$image.legend}" 
															itemprop="image"
														>
													{/if}
												</div>
											</div>
										{/foreach}
									{else}
										<div class="thumb-container js-thumb-container slick-slide initial-slide col-thumbnail">
											<div class="thumbnail-image selected"> 
												<img 
													class="img-fluid no_picture_image" 
													src="{$urls.no_picture_image.bySize.home_default.url}"
													alt="{$product.name}"
													title="{$product.name}"
													itemprop="image"
												>
											</div>
										</div>
									{/if}
								</aside>
							</div>
						</div>
					{/block}
				</div>
			</div>
		</div>
	</div>
</div>
