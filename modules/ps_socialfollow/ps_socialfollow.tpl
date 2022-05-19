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
{block name='block_social'}
	{if count($social_links)}
		{assign var=_expand_id value=10|mt_rand:100000}
		<div class="block-social block block-toggler deo_accordion_class deo_class">
			<div class="box-title">
				<div class="title clearfix">
					<h3 class="title_block">
						{l s='Social network' d='Shop.Theme.Global'}
					</h3>
					<span class="navbar-toggler collapse-icons" data-target="#block_social_dropdown_{$_expand_id}" data-toggle="collapse">
						<i class="add"></i>
						<i class="remove"></i>
					</span>
				</div>
			</div>
			<div class="block_content toggle-footer collapse" id="block_social_dropdown_{$_expand_id}">
				<ul>
					{foreach from=$social_links item='social_link'}
						<li class="{$social_link.class}"><a href="{$social_link.url}" title="{$social_link.label}" target="_blank" data-toggle="ui-tooltip" data-position="top" rel="noopener noreferrer"><i class="icon-social"></i><span>{$social_link.label}</span></a></li>
					{/foreach}
				</ul>
			</div>
		</div>
	{/if}
{/block}
 