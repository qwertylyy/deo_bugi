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
 
{if isset($listing.rendered_facets) && isset($displayedFacets) && $displayedFacets|count}
	<div id="search_filters_wrapper" class="hidden-sm-down block">
		<div id="search_filter_controls" class="hidden-md-up">
			<button data-search-url="{$clear_all_link}" class="btn btn-tertiary js-search-filters-clear-all">
				<i class="material-icons">&#xE14C;</i>
				{l s='Clear all' d='Shop.Theme.Actions'}
			</button>
			<button class="btn btn-secondary ok">
				{l s='OK' d='Shop.Theme.Actions'}
			</button>
		</div>

		<div class="block_content">
			{block name='facets_title'}
				<p class="title_block h6 hidden-sm-down">
					<span>{l s='Filter By' d='Shop.Theme.Actions'}</span>
				</p>
			{/block}
			{if isset($listing.rendered_active_filters)}
				{$listing.rendered_active_filters nofilter}
			{/if}
			{if isset($listing.rendered_facets)}
				{$listing.rendered_facets nofilter}	
			{/if}
		</div>
	</div>
{/if}
