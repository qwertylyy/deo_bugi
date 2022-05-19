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
<div id="js-product-list-header">
	{if $listing.pagination.items_shown_from == 1}
		{if !empty($category.image.large.url) && (int) DeoHelper::getConfig('BANNER_CATEGORY_PAGE')}
			<div class="category-cover category-image{if isset($deo_breadcrumb_image) && $deo_breadcrumb_image && isset($deo_breadcrumb_category_image) && $deo_breadcrumb_category_image} breadcrumb-image-category-hidden{/if}">
				<img class="img-fluid" src="{$category.image.large.url}" alt="{if !empty($category.image.legend)}{$category.image.legend}{else}{$category.name}{/if}" loading="lazy">
			</div>
		{/if}
		<h1 class="h1 category-name">{$category.name}</h1>
		{if $category.description && $category.description != ''}
			<div class="block-category">
				<div id="category-description">{$category.description nofilter}</div>
			</div>
		{/if}
	{/if}
</div>
