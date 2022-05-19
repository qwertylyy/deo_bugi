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
	<h1 class="page-title">{l s='Order history' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_right_content'}
	{if $orders}
		<h3>{l s='Here are the orders you\'ve placed since your account was created.' d='Shop.Theme.Customeraccount'}</h3>
		<table class="table table-bordered table-labeled hidden-sm-down">
			<thead class="thead-default">
				<tr>
					<th>{l s='Order reference' d='Shop.Theme.Checkout'}</th>
					<th>{l s='Date' d='Shop.Theme.Checkout'}</th>
					<th>{l s='Total price' d='Shop.Theme.Checkout'}</th>
					<th class="hidden-md-down">{l s='Payment' d='Shop.Theme.Checkout'}</th>
					<th class="hidden-md-down">{l s='Status' d='Shop.Theme.Checkout'}</th>
					<th>{l s='Invoice' d='Shop.Theme.Checkout'}</th>
					<th class="text-sp-center">{l s='Actions' d='Shop.Theme.Checkout'}</th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$orders item=order}
					<tr>
						<th scope="row">{$order.details.reference}</th>
						<td>{$order.details.order_date}</td>
						<td class="text-sp-center">{$order.totals.total.value}</td>
						<td class="hidden-md-down">{$order.details.payment}</td>
						<td>
							<span
								class="label label-pill {$order.history.current.contrast}"
								style="background-color:{$order.history.current.color}"
							>
								{$order.history.current.ostate_name}
							</span>
						</td>
						<td class="text-sp-center hidden-md-down">
							{if $order.details.invoice_url}
								<a href="{$order.details.invoice_url}"><i class="material-icons">&#xE415;</i></a>
							{else}
								-
							{/if}
						</td>
						<td class="text-sp-center order-actions">
							<a href="{$order.details.details_url}" data-link-action="view-order-details">
								<i class="deo-custom-icons icon-list"></i>
								{l s='Details' d='Shop.Theme.Customeraccount'}
							</a>
							{if $order.details.reorder_url}
								<a href="{$order.details.reorder_url}">
									<i class="deo-custom-icons icon-refresh"></i>
									{l s='Reorder' d='Shop.Theme.Actions'}
								</a>
							{/if}
						</td>
					</tr>
				{/foreach}
			</tbody>
		</table>

		<div class="orders hidden-md-up">
			{foreach from=$orders item=order}
				<div class="order">
					<div class="row">
						<div class="col-sm-9 col-xs-9 col-sp-12">
							<a href="{$order.details.details_url}"><h3>{$order.details.reference}</h3></a>
							<div class="date">{$order.details.order_date}</div>
							<div class="total">{$order.totals.total.value}</div>
							<div class="status">
								<span
									class="label label-pill {$order.history.current.contrast}"
									style="background-color:{$order.history.current.color}"
								>
									{$order.history.current.ostate_name}
								</span>
							</div>
						</div>
						<div class="col-sm-3 col-xs-3 col-sp-12 text-xs-right text-sp-center">
							<div class="box-button">
								<a href="{$order.details.details_url}" class="btn btn-sm btn-outline view-order-details" data-link-action="view-order-details" title="{l s='Details' d='Shop.Theme.Customeraccount'}">
									{l s='Details' d='Shop.Theme.Customeraccount'}
								</a>
								{if $order.details.reorder_url}
									<a href="{$order.details.reorder_url}" class="btn btn-sm btn-outline reorder" title="{l s='Reorder' d='Shop.Theme.Actions'}">
										{l s='Reorder' d='Shop.Theme.Actions'}
									</a>
								{/if}
							</div>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
	{/if}
{/block}
