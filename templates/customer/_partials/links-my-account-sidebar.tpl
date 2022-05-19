{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
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
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *} 


<div class="deo-links">
	<ul>
		<li id="myaccount-link" class="link-item">
			<a href="{$urls.pages.my_account}">
				<i class="deo-custom-icons icon-user"></i>
				<span>{l s='My account' d='Shop.Theme.Customeraccount'}</span>
			</a>
		</li>
		<li id="identity-link" class="link-item">
			<a href="{$urls.pages.identity}">
				<i class="deo-custom-icons icon-info"></i>
				<span>{l s='Information' d='Shop.Theme.Customeraccount'}</span>
			</a>
		</li>

		{if $customer.addresses|count}
			<li id="addresses-link" class="link-item">
				<a href="{$urls.pages.addresses}">
					<i class="deo-custom-icons icon-localtion"></i>
					<span>{l s='Addresses' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{else}
			<li id="address-link" class="link-item">
				<a href="{$urls.pages.address}">
					<i class="deo-custom-icons icon-localtion"></i>
					<span>{l s='Add first address' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{/if}

		{if !$configuration.is_catalog}
			<li id="history-link" class="link-item">
				<a href="{$urls.pages.history}">
					<i class="deo-custom-icons icon-history"></i>
					<span>{l s='Order history and details' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{/if}

		{if !$configuration.is_catalog}
			<li id="order-slips-link" class="link-item" >
				<a href="{$urls.pages.order_slip}">
					<i class="deo-custom-icons icon-credit"></i>
					<span>{l s='Credit slips' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{/if}

		{if $configuration.voucher_enabled && !$configuration.is_catalog}
			<li id="discounts-link" class="link-item">
				<a href="{$urls.pages.discount}">
					<i class="deo-custom-icons icon-discounts"></i>
					<span>{l s='Vouchers' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{/if}

		{if $configuration.return_enabled && !$configuration.is_catalog}
			<li id="returns-link" class="link-item">
				<a href="{$urls.pages.order_follow}">
					<i class="deo-custom-icons icon-recycle"></i>
					<span>{l s='Merchandise returns' d='Shop.Theme.Customeraccount'}</span>
				</a>
			</li>
		{/if}

		{block name='display_customer_account'}
			{hook h='displayCustomerAccount'}
		{/block}
		
		<li id="returns-link" class="link-item">
			<a href="{url entity=index params=['mylogout' => '']}">
				<i class="deo-custom-icons icon-sign-out"></i>
				<span>{l s='Sign out' d='Shop.Theme.Actions'}</span>
			</a>
		</li>
	</ul>
</div>