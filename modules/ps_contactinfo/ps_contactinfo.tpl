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

<div class="block-contact block block-toggler deo_accordion_class deo_class">
  {assign var=_expand_id value=10|mt_rand:100000}
  <div class="box-title">
    <div class="title clearfix">
      <p class="block-contact-title title_block">
        <a href="{$urls.pages.stores}">{l s='About us' d='Shop.Theme.Global'}</a>
      </p>
      <span class="navbar-toggler collapse-icons" data-target="#footer_sub_menu_{$_expand_id}" data-toggle="collapse">
        <i class="add"></i>
        <i class="remove"></i>
      </span>
    </div>
  </div>
  <div class="toggle-footer collapse" id="footer_sub_menu_{$_expand_id}">
    <ul class="list-block">
      {if $contact_infos.address && ($contact_infos.address.address1 || $contact_infos.address.address1)}
        {if $contact_infos.address.address1}
          <li>
            <i class="icon-location"></i>
            <span>
              {* [1][/1] is for a HTML tag. *}
              {$contact_infos.address.address1}, 
              {if $contact_infos.address.city}
                {$contact_infos.address.city}, 
              {/if}
              {if $contact_infos.address.country}
                {$contact_infos.address.country}
              {/if}
            </span>
          </li>
        {/if}
        {if  $contact_infos.address.address2}
          <li>
            <i class="icon-location"></i>
            <span>
              {* [1][/1] is for a HTML tag. *}
              {$contact_infos.address.address2}, 
              {if $contact_infos.address.city}
                {$contact_infos.address.city}, 
              {/if}
              {if $contact_infos.address.country}
                {$contact_infos.address.country}
              {/if}
            </span>
          </li>
        {/if}
      {else}
        <li>
          <i class="icon-location"></i>
          <span>
            {* [1][/1] is for a HTML tag. *}
            {if $contact_infos.address.city}
              {$contact_infos.address.city}, 
            {/if}
            {if $contact_infos.address.country}
              {$contact_infos.address.country}
            {/if}
          </span>
        </li>
      {/if}

      {if $contact_infos.phone}
        <li>
          <i class="icon-phone"></i>
          {* [1][/1] is for a HTML tag. *}
          {l s='[1]%phone%[/1]'
            sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%phone%' => $contact_infos.phone
            ]
            d='Shop.Theme.Global'
          }
        </li>
      {/if}

      {if $contact_infos.fax}
        <li>
          <i class="icon-printer"></i>
          {* [1][/1] is for a HTML tag. *}
          {l s='[1]%fax%[/1]'
            sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%fax%' => $contact_infos.fax
            ]
            d='Shop.Theme.Global'
          }
        </li>
      {/if}

      {if $contact_infos.email && $display_email}
        <li>
          <i class="icon-mail"></i>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='[1]%email%[/1]'
            sprintf=[
              '[1]' => '<a href="mailto:'|cat:$contact_infos.email|cat:'" class="dropdown">',
              '[/1]' => '</a>',
              '%email%' => $contact_infos.email
            ]
            d='Shop.Theme.Global'
          }
        </li>
      {/if}
    </ul>
  </div>
</div>