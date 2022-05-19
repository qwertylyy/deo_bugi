{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{block name='product_tabs'}
	<div class="product-tabs tabs">
		<ul class="nav nav-tabs" role="tablist">
			{if $product.description}
				<li class="nav-item">
					<a class="nav-link{if $product.description} active js-product-nav-active{/if}"
						data-toggle="tab"
						href="#description"
						role="tab"
						aria-controls="description"
						{if $product.description} aria-selected="true"{/if}>{l s='Description' d='Shop.Theme.Catalog'}
					</a>
				</li>
			{/if}
			<li class="nav-item">
				<a class="nav-link{if !$product.description} active js-product-nav-active{/if}"
					data-toggle="tab"
					href="#detail-product"
					role="tab"
					aria-controls="detail-product"
					{if !$product.description} aria-selected="true"{/if}>{l s='Product Details' d='Shop.Theme.Catalog'}
				</a>
			</li>
			{if $product.attachments}
				<li class="nav-item">
					<a class="nav-link"
						data-toggle="tab"
						href="#attachments"
						role="tab"
						aria-controls="attachments">{l s='Attachments' d='Shop.Theme.Catalog'}
					</a>
				</li>
			{/if}
			{foreach from=$product.extraContent item=extra key=extraKey}
				<li class="nav-item">
					<a class="nav-link"
						data-toggle="tab"
						href="#extra-{$extraKey}"
						role="tab"
						aria-controls="extra-{$extraKey}">{$extra.title}
					</a>
				</li>
			{/foreach}
			{if (int) DeoHelper::getConfig('ENABLE_PRODUCT_REVIEWS')}
				<li class="nav-item">
					<a class="nav-link deo-product-show-review-title" data-toggle="tab" href="#deo-product-show-review-content" role="tabpanel">{l s='Reviews' d='Shop.Theme.Catalog'}</a>
				</li>
			{/if}
		</ul>

		<div class="tab-content" id="tab-content">
			<div class="tab-pane fade{if $product.description} in active js-product-tab-active{/if}" id="description" role="tabpanel">
				{block name='product_description'}
					<div class="product-description product-page-description">{$product.description nofilter}</div>
				{/block}
			</div>

			<div class="tab-pane fade{if !$product.description} in active js-product-tab-active{/if}" id="detail-product" role="tabpanel">
				{block name='product_details'}
					{include file='catalog/_partials/product-details.tpl'}
				{/block}
			</div>

			{block name='product_attachments'}
				{if $product.attachments}
					<div class="tab-pane fade in" id="attachments" role="tabpanel">
						<section class="product-attachments">
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
					</div>
				{/if}
			{/block}

			{if (int) DeoHelper::getConfig('ENABLE_PRODUCT_REVIEWS')}
				<div class="tab-pane fade in" id="deo-product-show-review-content">	
					{hook h='displayDeoProductPageReviewContent' product=$product}
				</div>
			{/if}
			
			{foreach from=$product.extraContent item=extra key=extraKey}
				<div class="tab-pane fade in {$extra.attr.class}" id="extra-{$extraKey}" role="tabpanel" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
				   {$extra.content nofilter}
				</div>
		   {/foreach}
		</div>
	</div>
{/block}