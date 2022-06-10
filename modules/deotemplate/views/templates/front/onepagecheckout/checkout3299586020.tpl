{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}{if isset($page.body_classes["layout-full-width"]) && $page.body_classes["layout-full-width"]}<div class="container">{/if}<div class="row box-top-checkout box-flex-center"><div class="left-top-checkout col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-sp-12">

<div id="deoonepagecheckout-account" class="opc-checkout-element opc-element primary-block ">
	<div class="block-inner">
		{include file='module:deotemplate/views/templates/front/onepagecheckout/blocks/account.tpl' type="register" use_tab=false}
	</div>
</div>
</div><div class="right-top-checkout col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12 col-sp-12">

<div id="deoonepagecheckout-address" class="opc-checkout-element opc-element primary-block ">
    <div class="block-inner">
        {include file='module:deotemplate/views/templates/front/onepagecheckout/blocks/address.tpl'}
    </div>
</div></div><div class="left-bottom-checkout col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-sp-12">

<div id="deoonepagecheckout-cart-summary" class="opc-checkout-element opc-element ">
	<div class="block-inner">
		
		<section id="main">
			<div class="cart-grid">
				<div class="cart-container">
					<div class="title-heading shopping-cart-header h2">
						<span class="title">{l s='Order Summary' d='Shop.Theme.Checkout'}</span>
					</div>
				</div>
			</div>
		</section>
		{include file='module:deotemplate/views/templates/front/onepagecheckout/_partials/blocks-loader.tpl'}
		<div class="cart-summary"></div>
	</div>
</div>
</div><div class="right-bottom-checkout col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12 col-sp-12">

<div id="deoonepagecheckout-shipping" class="opc-checkout-element primary-block opc-element ">
    <div class="block-inner">
        <div class="title-heading shipping-method-header"><span class="title">{l s='Shipping Method' d='Shop.Theme.Checkout'}</span></div>
        {include file='module:deotemplate/views/templates/front/onepagecheckout/_partials/blocks-loader.tpl'}
    </div>
</div>

<div id="deoonepagecheckout-payment" class="opc-checkout-element primary-block opc-element ">
	<div class="block-inner">
		<section id="checkout-payment-step" class="js-current-step">
			<div class="dynamic-content">
				
				<div class="title-heading shipping-method-header">
					<span class="title">{l s='Payment method' d='Shop.Theme.Checkout'}</span>
				</div>
				{include file='module:deotemplate/views/templates/front/onepagecheckout/_partials/blocks-loader.tpl'}
			</div>
		</section>
		<div class="static-content"></div>
		<div class="popup-payment-content">
			<div class="popup-header">
				<div class="popup-close-icon"></div>
				<div class="popup-shop-info">
					<div class="popup-shop-logo"><img src="{$shop.logo}"></div>
					<div class="popup-shop-name">{$shop.name}</div>
				</div>
			</div>
			<div class="popup-body">
				<div class="popup-payment-form"></div>
				<div class="popup-payment-button">
					{include file='module:deotemplate/views/templates/front/onepagecheckout/_partials/payment-confirmation-button.tpl'}
				</div>
			</div>
		</div>
	</div>
</div></div></div>{if isset($page.body_classes["layout-full-width"]) && $page.body_classes["layout-full-width"]}</div>{/if}{if isset($page.body_classes["layout-full-width"]) && $page.body_classes["layout-full-width"]}<div class="container">{/if}<div class="row box-bottom-checkout"><div class="bottom-checkout col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-sp-12">

<div id="deoonepagecheckout-order-message" class="opc-checkout-element opc-element " {if !$show_order_message}style="display: none;"{/if}>
    <div class="block-inner">
        {include file='module:deotemplate/views/templates/front/onepagecheckout/blocks/order-message.tpl'}
    </div>
</div>

<div id="deoonepagecheckout-confirm" class="opc-checkout-element opc-element ">
    <div class="block-inner">
        {include file='module:deotemplate/views/templates/front/onepagecheckout/blocks/confirm.tpl'}
    </div>
</div>

<div id="deoonepagecheckout-reassurance" class="opc-checkout-element opc-element ">
    <div class="block-inner">
		{block name='hook_reassurance'}
			{hook h='displayReassurance'}
		{/block}
	</div>
</div></div></div>{if isset($page.body_classes["layout-full-width"]) && $page.body_classes["layout-full-width"]}</div>{/if}