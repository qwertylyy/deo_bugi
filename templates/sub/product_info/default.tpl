{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{block name='product_default'}
<div class="default-info-product">
	{if $product.description}
		<div id="description" class="info-default">
			<h4 class="title-info-product">{l s='Description' d='Shop.Theme.Catalog'}</h4>
			{block name='product_description'}
				<div class="product-description product-page-description info-content">{$product.description nofilter}</div>
			{/block}
		</div>
	{/if}
	<div id="detail-product" class="info-default">
		<h4 class="title-info-product">{l s='Product Details' d='Shop.Theme.Catalog'}</h4>
		<div class="info-content">
			{block name='product_details'}
				{include file='catalog/_partials/product-details.tpl'}
			{/block}
		</div>
	</div>

	{if (int) DeoHelper::getConfig('ENABLE_PRODUCT_REVIEWS')}
		<div id="deofeature-product-review" class="info-default">
			<h4 class="title-info-product deo-product-show-review-title">{l s='Reviews' d='Shop.Theme.Catalog'}</h4>
			<div class="info-content">
				{hook h='displayDeoProductPageReviewContent' product=$product}
			</div>
		</div>
	{/if}
	{* Attachments Product Detail *}
	{if $product.attachments}
		<div id="attachments" class="info-default">
			<h4 class="title-info-product">{l s='Attachments' d='Shop.Theme.Catalog'}</h4>
			{block name='product_attachments'}
				<section class="product-attachments info-content">
					<h3 class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</h3>
					{foreach from=$product.attachments item=attachment}
						<div class="attachment">
							<h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
							<p>{$attachment.description}</p>
							<a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
							 {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
							</a>
						</div>
					{/foreach}
				</section>
			{/block}
		</div>
	{/if}
	{* Attachments Product Detail *}
	{if count($product.extraContent)}
		<div id="product-extra" class="info-default">
			{foreach from=$product.extraContent item=extra key=extraKey}
				<h4 class="title-info-product">{$extra.title}</h4>
				<div class="{$extra.attr.class} info-content" id="extra-{$extraKey}" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
				   {$extra.content nofilter}
				</div>
			{/foreach}
		</div>
	{/if}
</div>
{/block}