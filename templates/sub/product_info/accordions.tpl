{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{block name='product_accordion'}
<div class="products-accordion" id="accordion" role="tablist" aria-multiselectable="true">
    {* Description Product Detail *}
    <div class="card" id="description">
      <div class="card-header" role="tab" id="headingdescription">
          <h5 class="h5">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapsedescription" aria-expanded="true" aria-controls="collapsedescription">
              {l s='Description' d='Shop.Theme.Catalog'}
            </a>
         </h5>
      </div>
      <div id="collapsedescription" class="collapse in" role="tabpanel" aria-labelledby="headingdescription">
          <div class="card-block">
            {block name='product_description'}
              <div class="product-description product-page-description">{$product.description nofilter}</div>
            {/block}
          </div>
      </div>
    </div>
    {* Product Detail *}
    <div class="card" id="detail-product">
      <div class="card-header" role="tab" id="headingdetails">
          <h5 class="h5">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsedetails" aria-expanded="false" aria-controls="collapsedetails">
                {l s='Product Details' d='Shop.Theme.Catalog'}
            </a>
          </h5>
      </div>
      <div id="collapsedetails" class="collapse" role="tabpanel" aria-labelledby="headingdetails">
        <div class="card-block">
          {block name='product_details'}
            {include file='catalog/_partials/product-details.tpl'}
          {/block}
        </div>
      </div>
  </div>
  {if (int) DeoHelper::getConfig('ENABLE_PRODUCT_REVIEWS')}
  	<div id="deofeature-product-review" class="card">
      <div class="card-header" role="tab" id="heading-product-review">
        <h5 class="h5">
          <a class="collapsed deo-product-show-review-title deofeature-accordion" data-toggle="collapse" data-parent="#accordion" href="#collapsereviews" aria-expanded="false" aria-controls="collapsereviews">
            {l s='Reviews' d='Shop.Theme.Catalog'}
          </a>
        </h5>
      </div>
      <div id="collapsereviews" class="collapse" role="tabpanel" aria-labelledby="heading-product-review">
        <div class="card-block">
  		    {hook h='displayDeoProductPageReviewContent' product=$product}
        </div>
      </div>
  	</div>
  {/if}
  {* Attachments Product Detail *}
  {block name='product_attachments'}
    {if $product.attachments}
      <div class="card" id="attachments">
        <div class="card-header" role="tab" id="headingattachments">
          <h5 class="h5">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseattachments" aria-expanded="false" aria-controls="collapseattachments">
                {l s='Attachments' d='Shop.Theme.Catalog'}
            </a>
          </h5>
        </div>
        <div id="collapseattachments" class="collapse" role="tabpanel" aria-labelledby="headingattachments">
          <div class="card-block">
            <div class="attachments">
              <section class="product-attachments">
                <h3 class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</h3>
                {foreach from=$product.attachments item=attachment}
                  <div class="attachment">
                    <h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
                    <p>{$attachment.description}</p>
                    <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})</a>
                  </div>
                {/foreach}
              </section>
            </div>
          </div>
        </div>
      </div>
    {/if}
  {/block}
  {* Extra Product *}
  {foreach from=$product.extraContent item=extra key=extraKey}
    <div class="card" id="extra-{$extraKey}">
      <div class="card-header" role="tab" id="headingextra-{$extraKey}">
        <h5 class="h5">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseextra-{$extraKey}" aria-expanded="false" aria-controls="collapseextra-{$extraKey}">
              {$extra.title}
          </a>
        </h5>
      </div>
      <div id="collapseextra-{$extraKey}" class="collapse" role="tabpanel" aria-labelledby="headingextra-{$extraKey}">
        <div class="card-block">
          <div class="{$extra.attr.class}" id="extra-content-{$extraKey}" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
           {$extra.content nofilter}
        </div>
        </div>
      </div>
    </div>
  {/foreach}
</div>
{/block}