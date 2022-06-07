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

<div class="language-selector-wrapper dropdown js-dropdown popup-over deo_class" id="language-selector-label">
  <a class="popup-title" href="javascript:void(0)" data-toggle="dropdown" title="{l s='Language' d='Shop.Theme.Global'}" aria-label="{l s='Language dropdown' d='Shop.Theme.Global'}">
    <i class="icon deo-custom-icons"></i>
    <span class="title-name">{l s='Language:' d='Shop.Theme.Global'}</span>
    {foreach from=$languages item=language}
      {if $language.id_lang == $current_language.id_lang}
        <span class="flag">
          <img src="{$urls.img_lang_url|escape:'html':'UTF-8'}{$language.id_lang|escape:'html':'UTF-8'}.jpg" alt="{$language.iso_code|escape:'html':'UTF-8'}"/>
        </span>
        <span class="iso-code">{$language.iso_code|escape:'html':'UTF-8'}</span>
      {/if}
    {/foreach}
    <span class="name-simple">{$current_language.name_simple}</span>
    <i class="icon-arrow-down deo-custom-icons"></i>
  </a>
  <ul class="dropdown-menu popup-content link language-selector" aria-labelledby="language-selector-label">
      {foreach from=$languages item=language}
        <li {if $language.id_lang == $current_language.id_lang} class="current" {/if}>
          <a href="{url entity='language' id=$language.id_lang}" class="dropdown-item" data-iso-code="{$language.iso_code}">
            <img src="{$urls.img_lang_url|escape:'html':'UTF-8'}{$language.id_lang|escape:'html':'UTF-8'}.jpg" alt="{$language.iso_code|escape:'html':'UTF-8'}"/>
            <span class="lang-name">{$language.name_simple}</span>
            <span class="iso-code">{$language.iso_code|escape:'html':'UTF-8'}</span>
          </a>
        </li>
      {/foreach}
  </ul>
</div>

