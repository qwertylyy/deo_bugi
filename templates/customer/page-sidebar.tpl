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
{extends file='customer/page.tpl'}

{block name='page_content_top'}{/block}
{block name='page_content'}
  <div class="deo-my-account">
    <div class="row">
      <div class="col-lg-3 col-md-12 left-sidebar">
        {include file='customer/_partials/links-my-account-sidebar.tpl'}
      </div>
      <div class="col-lg-9 col-md-12 right-content">
        {block name='page_title_sidebar'}{/block}
        {block name='customer_notifications'}
          {include file='_partials/notifications.tpl'}
        {/block}
        <div class="deo-content">
          {block name='page_right_content'}{/block}
        </div>
      </div>
    </div>
  </div>
{/block}
