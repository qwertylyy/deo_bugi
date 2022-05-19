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

<section class="new-products clearfix block title-normal title-center">
    <div class="box-title">
      	<h2 class="h2 products-section-title title_block">
      		<a href="{$allNewProductsLink}">{l s='New products' d='Shop.Theme.Global'}</a>
      	</h2>
    </div>
  	<div class="block_content">
	  	{include file="catalog/_partials/productlist.tpl" products=$products sidebar=true}
	  	<a href="{$allNewProductsLink}" class="all-product-link btn btn-outline">
	  		{l s='View more' d='Shop.Theme.Global'}
	  	</a>
  	</div>
</section>

