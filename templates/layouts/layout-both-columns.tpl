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

{include file='_partials/helpers.tpl'}

<!doctype html>
<html lang="{$language.locale}" 
  {if isset($IS_RTL) && $IS_RTL} 
    dir="rtl"
    {if isset($DEO_RTL) && $DEO_RTL} 
      class="rtl{if isset($deo_skin_default)} {$deo_skin_default}{/if}"
    {/if}
  {else} 
    class="{if isset($deo_skin_default)}{$deo_skin_default}{/if}" 
  {/if}
>
  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}{if isset($deo_stickey_menu) && $deo_stickey_menu} keep-header{/if}{if isset($breadcrumb.count) && $breadcrumb.count > 1} has-breadcrumb{/if}{if isset($deo_header_mobile) && $deo_header_mobile} deo-active-header-mobile{/if}{if isset($deo_nav_mobile) && $deo_nav_mobile} deo-active-nav-mobile{/if}{if isset($deo_content_mobile) && $deo_content_mobile} deo-active-content-mobile{/if}{if isset($deo_footer_mobile) && $deo_footer_mobile} deo-active-footer-mobile{/if}{if isset($deo_is_mobile) && $deo_is_mobile} deo-is-mobile{/if}{if isset($deo_is_tablet) && $deo_is_tablet} deo-is-tablet{/if}">

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <main id="page" class="{($page.page_name == 'product') ? $class_detail : ''}">
      {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
      {/block}
      <header id="header">
        <div class="header-container">
          {block name='header'}
            {include file='_partials/header.tpl'}
          {/block}
        </div>
      </header>
      {block name='deo-nav-mobile'}
        {if isset($deo_is_mobile) && $deo_is_mobile && isset($deo_nav_mobile) && $deo_nav_mobile}
          {block name='deo_nav_mobile'}
            <nav class="deo-nav-mobile">
              {if isset($fullwidth_hook.displayDeoNavMobile) && $fullwidth_hook.displayDeoNavMobile == 0}
                <div class="container">
              {/if}
                  <div class="inner">{hook h='displayDeoNavMobile'}</div>
              {if isset($fullwidth_hook.displayDeoNavMobile) && $fullwidth_hook.displayDeoNavMobile == 0}
                </div>
              {/if}
            </nav>
          {/block}
        {/if}
      {/block}
      
      <section id="wrapper">
        {block name='notifications'}
          {include file='_partials/notifications.tpl'}
        {/block}
      	{hook h="displayWrapperTop"}
        {block name='breadcrumb'}
          {include file='_partials/breadcrumb.tpl'}
        {/block}
        {block name='deo_fullwidth_hook_open'}
          {if isset($fullwidth_hook.displayHome) && $fullwidth_hook.displayHome == 0}
            <div class="container">
          {/if}
        {/block}
          <div class="row">
            {block name="left_column"}
              <div id="left-column" class="sidebar col-sp-12 col-xs-12 col-sm-12 col-md-4 col-lg-3">
                {if $page.page_name == 'product'}
                  {hook h='displayLeftColumnProduct'}
                {else}
                  {hook h="displayLeftColumn"}
                {/if}
              </div>
            {/block}

            {block name="content_wrapper"}
              <div id="content-wrapper" class="js-content-wrapper left-column right-column col-sp-12 col-xs-12 col-sm-12 col-md-4 col-lg-6">
                {hook h="displayContentWrapperTop"}
                {block name="content"}
                  <p>Hello world! This is HTML5 Boilerplate.</p>
                {/block}
                {hook h="displayContentWrapperBottom"}
              </div>
            {/block}

            {block name="right_column"}
              <div id="right-column" class="sidebar col-sp-12 col-xs-12 col-sm-12 col-md-4 col-lg-3">
                {if $page.page_name == 'product'}
                  {hook h='displayRightColumnProduct'}
                {else}
                  {hook h="displayRightColumn"}
                {/if}
              </div>
            {/block}
          </div>
          {block name='deo-bottom-content'}{/block}
        {block name='deo_fullwidth_hook_close'}  
          {if isset($fullwidth_hook.displayHome) && $fullwidth_hook.displayHome == 0}
            </div>
          {/if}
        {/block}
        {hook h="displayWrapperBottom"}
      </section>

      <footer id="footer" class="footer-container js-footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>
    </main>

    {hook h="displayDeoPanelTool"}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}
  </body>

</html>
