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
{extends file='customer/page-sidebar.tpl'}

{block name='page_title_sidebar'}
	<h1 class="page-title">{l s='Your account' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_right_content'}
	<div class="infomations-customer">
		<div class="info-item"><label>{l s='First name' d='Shop.Theme.Customeraccount'}</label><span>{$customer.firstname}</span></div>
		<div class="info-item"><label>{l s='Last name' d='Shop.Theme.Customeraccount'}</label><span>{$customer.lastname}</span></div>
		<div class="info-item"><label>{l s='Email' d='Shop.Theme.Customeraccount'}</label><span>{$customer.email}</span></div>
		{if isset($customer.birthday) && $customer.birthday !== '0000-00-00'}
			<div class="info-item"><label>{l s='Birthday' d='Shop.Theme.Customeraccount'}</label><span>{$customer.birthday}</span></div>
		{/if}
		{if isset($customer.website) && $customer.website}
			<div class="info-item"><label>{l s='Website' d='Shop.Theme.Customeraccount'}</label><span>{$customer.website}</span></div>
		{/if}
		{if isset($customer.company) && $customer.company}
			<div class="info-item"><label>{l s='Company' d='Shop.Theme.Customeraccount'}</label><span>{$customer.company}</span></div>
		{/if}
		{if isset($customer.addresses) && count($customer.addresses)}
			<div class="info-item"><label>{l s='Addresses' d='Shop.Theme.Customeraccount'}</label>
				<div class="addresses row">
					{foreach from=$customer.addresses item=address}
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 col-sp-12">
							{block name='customer_address'}
								{include file='customer/_partials/block-address.tpl' address=$address}
							{/block}
						</div>
					{/foreach}
				</div>
			</div>
		{/if}
	</div>
{/block}
