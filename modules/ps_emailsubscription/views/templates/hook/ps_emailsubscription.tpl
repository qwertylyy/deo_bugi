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
{assign var=_expand_id value=10|mt_rand:100000}
<div class="block_newsletter block block-toggler clearfix deo_accordion_class deo_class" id="blockEmailSubscription_{$hookName}">
  <div class="popup-title-newsletter"></div> 
  <div class="popup-content-newsletter">
    <i class="close-popup deo-custom-icons"></i>
    <div class="box-title">
      <div class="title clearfix">
        <h3 class="title_block" id="block-newsletter-label">
          {l s='Newsletter' d='Shop.Theme.Global'}
        </h3>
        <span class="navbar-toggler collapse-icons" data-target="#block_newsletter_dropdown_{$_expand_id}" data-toggle="collapse">
          <i class="add"></i>
          <i class="remove"></i>
        </span> 
      </div> 
      {if $conditions}
        <p class="description sub-title-widget">{$conditions nofilter}</p>
      {/if}
    </div>
    <div class="block_content toggle-footer collapse" id="block_newsletter_dropdown_{$_expand_id}">
      {if $conditions}
        <p class="description sub-title-widget">{$conditions nofilter}</p>
      {/if} 
      <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
        <div class="row">
          <div class="col-xs-12">
              <div class="form-group">
                <div class="input-wrapper">
                  <input
                    name="email"
                    type="email"
                    value="{$value}"
                    placeholder="{l s='Your email...' d='Shop.Theme.Global'}"
                    aria-labelledby="block-newsletter-label"
                    required
                  >
                </div>
                <button
                  class="btn btn-default"
                  name="submitNewsletter"
                  type="submit"
                >
                  <i class="icon-send"></i><span>{l s='Subscribe' d='Shop.Theme.Global'}</span>
                </button>
                <input type="hidden" name="blockHookName" value="{$hookName}" />
                <input type="hidden" name="action" value="0">
              </div>
            
          </div>
          <div class="col-xs-12">
            {if $msg}
              <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                {$msg}
              </p>
            {/if}
            {hook h='displayNewsletterRegistration'}
            {if isset($id_module)}
              {hook h='displayGDPRConsent' id_module=$id_module}
            {/if}
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
