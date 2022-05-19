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
{if isset($deo_subcategory) && $deo_subcategory && isset($subcategories) && count($subcategories) > 0}
	<div id="subcategories">
		<h2 class="subcategory-heading">{l s='Subcategories' d='Shop.Theme.Category'}</h2>
		<div class="row subcategories-list">
			{foreach from=$subcategories item=subcategory}
				<div class="col-xxl-3 col-xl-3 col-lg-4 col-md-4 col-sm-4 col-xs-6 col-sp-6">
					<div class="subcategory-block">
						{if isset($subcategory.image)}
							<div class="subcategory-image">
								<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
									<img class="img-fluid" src="{$subcategory.image.small.url}" alt="{$subcategory.name|escape:'html':'UTF-8'}" loading="lazy"/>
								</a>
							</div>
						{/if}
						<div class="subcategory-meta">
							<h3 class="subcategory-name"><a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a></h3> 
							<div class="subcategory-description">
								{$subcategory.description|strip_tags|truncate:120:'...'|escape:'html':'UTF-8' nofilter}
							</div>   
						</div>
					</div>
				</div>
			{/foreach}
		</div>
	</div>
{/if}

