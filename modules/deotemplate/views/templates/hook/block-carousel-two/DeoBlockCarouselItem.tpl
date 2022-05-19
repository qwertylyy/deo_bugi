{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

<div class="block-carousel-container{if isset($slider.class) && $slider.class} {$slider.class}{/if}">
	<div class="meta-carousel">
		<div class="left-carousel">
			{if isset($slider.description) && !empty($slider.description)}
				<div class="descript">{$slider.description|rtrim nofilter}</div>
			{/if}
		</div>
		<div class="right-carousel">
			<div class="image">
				{if $slider.link}
				<a title="{$slider.title nofilter}" {if $formAtts.is_open}target="_blank"{/if} href="{$slider.link}" class="link-image">
				{/if}
					{if isset($slider.image) && $slider.image}
						{if (isset($formAtts.lazyload) && $formAtts.lazyload && isset($formAtts.carousel_type) && $formAtts.carousel_type == "owlcarousel") || (isset($formAtts.slick_lazyload) && $formAtts.slick_lazyload && isset($formAtts.carousel_type) && $formAtts.carousel_type == "slickcarousel")}
							<span class="lazyload-wrapper" style="padding-bottom: {$slider.rate_image};">
								<span class="lazyload-icon"></span>
							</span>
							<img class="img-fluid {if isset($formAtts.carousel_type) && $formAtts.carousel_type == "owlcarousel"}lazyOwl{/if}" {if isset($formAtts.carousel_type) &&  $formAtts.carousel_type == "owlcarousel"}data-src{elseif isset($formAtts.carousel_type) && $formAtts.carousel_type == "slickcarousel"}data-lazy{/if}="{$slider.image}" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="{$slider.title nofilter}"/>
						{else}
							<img class="img-fluid" src="{$slider.image}" alt="{$slider.title nofilter}" loading="lazy"/> 
						{/if}
					{/if}
				{if $slider.link}
				</a>
				{/if}
			</div>
			<div class="group-title">
				{if isset($slider.title) && !empty($slider.title)}
					<h3 class="title">
						{if $slider.link}
						<a title="{$slider.title nofilter}" {if $formAtts.is_open}target="_blank"{/if} href="{$slider.link}">
						{/if}
							{$slider.title nofilter}
						{if $slider.link}
						</a>
						{/if}
					</h3>
				{/if}
				{if isset($slider.sub_title) && !empty($slider.sub_title)}
					<p class="sub-title">{$slider.sub_title nofilter}</p>
				{/if}
			</div>
		</div>
	</div>
</div>