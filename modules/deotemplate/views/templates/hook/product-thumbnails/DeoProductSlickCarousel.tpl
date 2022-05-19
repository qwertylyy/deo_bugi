{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{function name=thumbnail}
	<div class="thumbnail">
		<div class="thumbnail-image">
			{if $product.cover}
				{if (isset($formAtts.lazyload) && $formAtts.lazyload) || (isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload)}
					<a href="javascript:void(0)" class="image">
						<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.small_default};">
							<span class="lazyload-icon"></span>
						</span>
						{* <img
							class="img-fluid {if $formAtts.carousel_type == "owlcarousel"}lazyOwl{/if}"
							{if $formAtts.carousel_type == "owlcarousel"}data-src{elseif $formAtts.carousel_type == "slickcarousel"}data-lazy{/if} = "{$product.cover.bySize.small_default.url}"
							src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						> *}
						<img
							class="img-fluid"
							data-lazy = "{$product.cover.bySize.small_default.url}"
							src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						>
					</a>
				{else}
					<a href="javascript:void(0)" class="image">
						<img
							class="img-fluid"
							src = "{$product.cover.bySize.small_default.url}"
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						>
					</a>
				{/if}
			{else}
				{if (isset($formAtts.lazyload) && $formAtts.lazyload) || (isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload)}
					<a href="javascript:void(0)" class="image">
						<span class="lazyload-wrapper" style="padding-bottom: {$rate_images.small_default};">
							<span class="lazyload-icon"></span>
						</span>
						{* <img
							class="img-fluid {if $formAtts.carousel_type == "owlcarousel"}lazyOwl{/if}"
							{if $formAtts.carousel_type == "owlcarousel"}data-src{elseif $formAtts.carousel_type == "slickcarousel"}data-lazy{/if} = "{$urls.no_picture_image.bySize.small_default.url}"
							src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						> *}
						<img
							class="img-fluid"
							data-lazy = "{$urls.no_picture_image.bySize.small_default.url}"
							src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						>
					</a>
				{else}
					<a href="javascript:void(0)" class="image">
						<img
							class="img-fluid"
							src = "{$urls.no_picture_image.bySize.small_default.url}"
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
						>
					</a>
				{/if}
			{/if}
		</div>
		<div class="thumbnail-meta">
			<h4 class="title" itemprop="name">
				{* <a href="{$product.url}"> *}{$product.name}{* </a> *}
			</h4>
			{if $product.show_price}
				<div class="product-price-and-shipping {if $product.has_discount}has_discount{/if}">
					{if $product.has_discount}
						{hook h='displayProductPriceBlock' product=$product type="old_price"}

						<span class="regular-price">{$product.regular_price}</span>
						{if $product.discount_type === 'percentage'}
						<span class="discount-percentage discount-product">{$product.discount_percentage}</span>
						{elseif $product.discount_type === 'amount'}
						<span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
						{/if}
					{/if}

					{hook h='displayProductPriceBlock' product=$product type="before_price"}
					<span class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
						<span itemprop="priceCurrency" content="{$currency.iso_code}"></span><span itemprop="price" content="{$product.price_amount}">{$product.price}</span>
					</span>

					{hook h='displayProductPriceBlock' product=$product type='unit_price'}

					{hook h='displayProductPriceBlock' product=$product type='weight'}
				</div>
			{/if}
		</div>
	</div>
{/function}

{if isset($formAtts.lib_has_error) && $formAtts.lib_has_error}
    {if isset($formAtts.lib_error) && $formAtts.lib_error}
        <div class="alert alert-warning leo-lib-error">{$formAtts.lib_error}</div>
    {/if}
{else}
	{if !empty($products)}
		<div class="wrapper-block clearfix">
			<div class="big-block">
				<div class="slick-row">
					<div class="slick-carousel deo-carousel list-product-slick-carousel slick-slider deo-carousel-loading big-product {if isset($formAtts.slick_showloading) && $formAtts.slick_showloading}show-icon-loading{/if} {if isset($productClassWidget)}{$productClassWidget}{/if}" id="{$formAtts.form_id}_big"
						data-centermode="false" 
						data-dots="false" 
						data-adaptiveheight="{if isset($formAtts.slick_autoheight) && $formAtts.slick_autoheight}true{else}false{/if}" 
						data-infinite="{if isset($formAtts.slick_loopinfinite) && $formAtts.slick_loopinfinite}true{else}false{/if}" 
						data-vertical="false" 
						data-verticalswiping="false" 
						data-autoplay="{if isset($formAtts.slick_autoplay) && $formAtts.slick_autoplay}true{else}false{/if}" 
						data-autoplayspeed="{if isset($formAtts.slick_autoplayspeed) && $formAtts.slick_autoplayspeed}{$formAtts.slick_autoplayspeed}{/if}" 
						data-pauseonhover="{if isset($formAtts.slick_pauseonhover) && $formAtts.slick_pauseonhover}true{else}false{/if}" 
						data-arrows="{if isset($formAtts.slick_arrows) && $formAtts.slick_arrows}true{else}false{/if}" 
						data-slidestoshow="1" 
						data-slidestoscroll="1" 
						data-rtl="{if isset($IS_RTL) && $IS_RTL}true{else}false{/if}" 
						data-lazyload="{if isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload}true{else}false{/if}" 
						data-lazyloadtype="{if isset($formAtts.slick_lazyload_type) && $formAtts.slick_lazyload_type}{$formAtts.slick_lazyload_type}{/if}" 
						data-responsive="false" 
						data-mousewheel="false" 
						data-asNavFor="#{$formAtts.form_id}_small" 
						data-fade="{if isset($formAtts.slick_fade) && $formAtts.slick_fade}true{else}false{/if}" 
					>		
						{$mproducts=array_chunk($products,1)}
						{foreach from=$mproducts item=products name=mypLoop}
							<div class="slick-slide loading-xl-1 loading-lg-1 loading-md-1 loading-sm-1 loading-xs-1 loading-sp-1">
								<div class="item">
									{foreach from=$products item=product name=products}
										{if isset($product_item_path)}
											{include file="$product_item_path"}
										{/if}
									{/foreach}
								</div>
							</div>
						{/foreach}
					</div>
				</div>
			</div>
			<div class="small-block">
				<div class="slick-row">
					<div class="slick-carousel deo-carousel list-product-slick-carousel slick-slider deo-carousel-loading small-product {if isset($formAtts.slick_showloading) && $formAtts.slick_showloading}show-icon-loading{/if} {if isset($productClassWidget)}{$productClassWidget}{/if}" id="{$formAtts.form_id}_small"
						data-centermode="{if isset($formAtts.slick_centermode) && $formAtts.slick_centermode}true{else}false{/if}" 
						data-centerpadding="{if isset($formAtts.slick_centerpadding) && $formAtts.slick_centerpadding}{$formAtts.slick_centerpadding}{else}false{/if}px"
						data-dots="{if isset($formAtts.slick_dot) && $formAtts.slick_dot}true{else}false{/if}" 
						data-adaptiveheight="{if isset($formAtts.slick_autoheight) && $formAtts.slick_autoheight}true{else}false{/if}" 
						data-infinite="{if isset($formAtts.slick_loopinfinite) && $formAtts.slick_loopinfinite}true{else}false{/if}" 
						data-vertical="{if isset($formAtts.slick_vertical) && $formAtts.slick_vertical}true{else}false{/if}" 
						data-verticalswiping="{if isset($formAtts.slick_vertical) && $formAtts.slick_vertical}true{else}false{/if}" 
						data-autoplay="{if isset($formAtts.slick_autoplay) && $formAtts.slick_autoplay}true{else}false{/if}" 
						data-autoplayspeed="{if isset($formAtts.slick_autoplayspeed) && $formAtts.slick_autoplayspeed}{$formAtts.slick_autoplayspeed}{/if}" 
						data-pauseonhover="{if isset($formAtts.slick_pauseonhover) && $formAtts.slick_pauseonhover}true{else}false{/if}" 
						data-arrows="false" 
						data-slidestoshow="{if isset($formAtts.slick_slidestoshow) && $formAtts.slick_slidestoshow}{$formAtts.slick_slidestoshow}{/if}" 
						data-slidestoscroll="{if isset($formAtts.slick_slidestoscroll) && $formAtts.slick_slidestoscroll}{$formAtts.slick_slidestoscroll}{/if}" 
						data-rtl="{if isset($IS_RTL) && $IS_RTL}true{else}false{/if}" 
						data-lazyload="{if isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload}true{else}false{/if}" 
						data-lazyloadtype="{if isset($formAtts.slick_lazyload_type) && $formAtts.slick_lazyload_type}{$formAtts.slick_lazyload_type}{/if}" 
						data-responsive="{if isset($formAtts.slick_items_custom) && $formAtts.slick_items_custom}{Tools::jsonEncode($formAtts.slick_items_custom)}{/if}" 
						data-mousewheel="{if isset($formAtts.slick_mousewheel) && $formAtts.slick_mousewheel}true{else}false{/if}" 
						data-asnavfor="#{$formAtts.form_id}_big" 
						data-focusOnSelect="true" 
					>
						{$mproducts=array_chunk($products,$formAtts.slick_row)}
						{foreach from=$mproducts item=products name=mypLoop}
							<div class="slick-slide {if isset($formAtts.slick_vertical) && $formAtts.slick_vertical}loading-vertical {/if}{if isset($formAtts.array_fake_item.xxl)}loading-xxl-{$formAtts.array_fake_item.xxl} {/if}{if isset($formAtts.array_fake_item.xl)}loading-xl-{$formAtts.array_fake_item.xl} {/if}{if isset($formAtts.array_fake_item.lg)}loading-lg-{$formAtts.array_fake_item.lg} {/if}{if isset($formAtts.array_fake_item.md)}loading-md-{$formAtts.array_fake_item.md} {/if}{if isset($formAtts.array_fake_item.sm)}loading-sm-{$formAtts.array_fake_item.sm} {/if}{if isset($formAtts.array_fake_item.xs)}loading-xs-{$formAtts.array_fake_item.xs} {/if}{if isset($formAtts.array_fake_item.sp)}loading-sp-{$formAtts.array_fake_item.sp}{/if}">
								<div class="item">
									{foreach from=$products item=product name=products}
										{if isset($product_item_path)}
											{thumbnail}
					            		{/if}
									{/foreach}
								</div>
							</div>
						{/foreach}
					</div>
				</div>
			</div>
		</div>
	{else}
		<p class="alert alert-info">{l s='No products at this time.' d='Shop.Theme.Global'}</p>	
	{/if}
{/if}

