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

<div class="currency-selector dropdown js-dropdown popup-over deo_class_module" id="currency-selector-label">
  <a href="javascript:void(0)" data-toggle="dropdown" class="popup-title"  title="{l s='Currency' d='Shop.Theme.Global'}" aria-label="{l s='Currency dropdown' d='Shop.Theme.Global'}">
    <i class="icon deo-custom-icons"></i>
    <span class="title-name">{l s='Currency:' d='Shop.Theme.Global'}</span>
    <span class="name-simple">
      {if $current_currency.iso_code !== $current_currency.sign}<span class="symbol-currency">{$current_currency.sign}</span>{/if} <span class="unit-currency">{$current_currency.iso_code}</span>
    </span>
    <i class="icon-arrow-down deo-custom-icons"></i>
  </a>
  <ul class="popup-content dropdown-menu" aria-labelledby="currency-selector-label">  
  {foreach from=$currencies item=currency}
  <li {if $currency.current} class="current" {/if}>
    <a title="{$currency.name}" rel="nofollow" href="{$currency.url}" class="dropdown-item">{if $current_currency.iso_code !== $current_currency.sign}{$currency.sign} {/if}{$currency.iso_code}</a>
  </li>
  {/foreach}
  </ul>
</div>