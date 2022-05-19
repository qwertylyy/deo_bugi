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
<div class="userinfo-selector links dropdown js-dropdown popup-over {if $logged}logged{/if} deo_class">
  <a href="javascript:void(0)" data-toggle="dropdown" class="popup-title" title="{l s='Account' d='Shop.Theme.Global'}">
    <i class="icon deo-custom-icons"></i>
    <span class="name-simple">{l s='Account' d='Shop.Theme.Global'}</span>
    <i class="icon-arrow-down deo-custom-icons"></i>
  </a>
  <ul class="popup-content dropdown-menu user-info">
    {if $logged}
      <li class="account-name">
        <a
          class="account dropdown-item" 
          href="{$urls.pages.my_account}"
          title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
          rel="nofollow"
        >
          <i class="icon deo-custom-icons"></i>
          <span>{l s='Hello' d='Shop.Theme.Global'} {$customerName}</span>
        </a>
      </li>
    {else}
      <li class="sign-up">
        {if (int) DeoHelper::getConfig('SOCIAL_LOGIN_ENABLE')}
          <a
            href="javascript:void(0)" 
            class="signup dropdown-item deo-social-login" 
            data-enable-sociallogin="{if (int) DeoHelper::getConfig('SOCIAL_LOGIN_FACEBOOK_ENABLE') || (int) DeoHelper::getConfig('SOCIAL_LOGIN_GOOGLE_ENABLE') || (int) DeoHelper::getConfig('SOCIAL_LOGIN_TWITTER_ENABLE')}1{else}0{/if}" 
            data-type="popup" 
            data-layout="register"
            title="{l s='Register' d='Shop.Theme.Global'}"
            rel="nofollow"
          >
            <i class="icon deo-custom-icons"></i>
            <span>{l s='Register' d='Shop.Theme.Global'}</span>
          </a>
        {else}
          <a
            class="signup dropdown-item"
            href="{$urls.pages.register}"
            title="{l s='Register' d='Shop.Theme.Global'}"
            rel="nofollow"
          >
            <i class="icon deo-custom-icons"></i>
            <span>{l s='Register' d='Shop.Theme.Global'}</span>
          </a>
        {/if}
      </li>
    {/if}
    {if (int) DeoHelper::getConfig('ENABLE_PRODUCT_WISHLIST')}
    	<li class="wishlist-popup">
        <a
          class="deo-btn-wishlist dropdown-item"
          href="{url entity='module' name='deotemplate' controller='mywishlist'}"
          title="{l s='Wishlist' d='Shop.Theme.Global'}"
          rel="nofollow"
        >
          <i class="icon deo-custom-icons"></i>
          <span>{l s='Wishlist' d='Shop.Theme.Global'} <span class="deo-total-wishlist deo-total">0</span></span>
        </a>
      </li>
    {/if}
    {if (int) DeoHelper::getConfig('ENABLE_PRODUCT_COMPARE')}
    	<li class="compare-popup">
        <a
          class="deo-btn-compare dropdown-item"
          href="{url entity='module' name='deotemplate' controller='compare'}"
          title="{l s='Compare' d='Shop.Theme.Global'}"
          rel="nofollow"
        >
          <i class="icon deo-custom-icons"></i>
          <span>{l s='Compare' d='Shop.Theme.Global'} <span class="deo-total-compare deo-total">0</span></span>
        </a>
      </li>
    {/if}
    <li class="check-out">
      <a
        class="checkout dropdown-item"
        href="{url entity='cart' params=['action' => show]}"
        title="{l s='Checkout' d='Shop.Theme.Customeraccount'}"
        rel="nofollow"
      >
        <i class="icon deo-custom-icons"></i>
        <span>{l s='Checkout' d='Shop.Theme.Actions'}</span>
      </a>
    </li>
    {if $logged}
      <li class="my-account">
        <a
          class="myacount dropdown-item"
          href="{$urls.pages.my_account}"
          title="{l s='My account' d='Shop.Theme.Global'}"
          rel="nofollow"
        >
          <i class="icon deo-custom-icons"></i>
          <span>{l s='My account' d='Shop.Theme.Global'}</span>
        </a>
      </li>
      <li class="sign-out-popup">
        <a
          class="logout dropdown-item"
          href="{$urls.actions.logout}"
          rel="nofollow"
        >
          <i class="icon deo-custom-icons"></i>
          <span>{l s='Sign out' d='Shop.Theme.Global'}</span>
        </a>
      </li>
    {else}
      <li class="sign-in-popup">
        {if (int) DeoHelper::getConfig('SOCIAL_LOGIN_ENABLE')}
          <a  
            href="javascript:void(0)"
            class="signin dropdown-item deo-social-login" 
            data-enable-sociallogin="{if (int) DeoHelper::getConfig('SOCIAL_LOGIN_FACEBOOK_ENABLE') || (int) DeoHelper::getConfig('SOCIAL_LOGIN_GOOGLE_ENABLE') || (int) DeoHelper::getConfig('SOCIAL_LOGIN_TWITTER_ENABLE')}1{else}0{/if}" 
            data-type="popup" 
            data-layout="login"
            title="{l s='Sign in' d='Shop.Theme.Actions'}"
            rel="nofollow">
            <i class="icon deo-custom-icons"></i>
            <span>{l s='Sign in' d='Shop.Theme.Actions'}</span>
          </a>
        {else}
          <a
            class="signin dropdown-item"
            href="{$urls.pages.my_account}"
            title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
            rel="nofollow"
          >
            <i class="icon deo-custom-icons"></i>
            <span>{l s='Sign in' d='Shop.Theme.Actions'}</span>
          </a>
        {/if}
      </li>
    {/if}
  </ul>
</div>