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
{block name='order_messages_table'}
  {if $order.messages}
    <h3 class="text-sp-center">{l s='Messages' d='Shop.Theme.Customeraccount'}</h3>
    <div class="box box-border messages">
      {foreach from=$order.messages item=message}
        <div class="message">
          <p>{$message.name}<br>{$message.message_date}</p>
          <p><label>{l s='Messages' d='Shop.Theme.Customeraccount'}:</label> <span>{$message.message nofilter}</span></p>
        </div>
      {/foreach}
    </div>
  {/if}
{/block}

{block name='order_message_form'}
  <section class="order-message-form box">
    <form action="{$urls.pages.order_detail}" method="post">

      <header class="text-sp-center">
        <h3>{l s='Add a message' d='Shop.Theme.Customeraccount'}</h3>
        <p>{l s='If you would like to add a comment about your order, please write it in the field below.' d='Shop.Theme.Customeraccount'}</p>
      </header>

      <section class="form-fields box box-border">

        <div class="form-group row">
          <label class="col-md-12 form-control-label">{l s='Product' d='Shop.Forms.Labels'}</label>
          <div class="col-md-12">
            <select name="id_product" class="form-control form-control-select">
              <option value="0">{l s='-- please choose --' d='Shop.Forms.Labels'}</option>
              {foreach from=$order.products item=product}
                <option value="{$product.id_product}">{$product.name}</option>
              {/foreach}
            </select>
          </div>
        </div>

        <div class="form-group row">
          <label class="col-md-12 form-control-label">{l s='Messages' d='Shop.Theme.Customeraccount'}</label>
          <div class="col-md-12">
            <textarea rows="3" name="msgText" class="form-control"></textarea>
          </div>
        </div>

        <footer class="form-footer text-sp-right">
          <input type="hidden" name="id_order" value="{$order.details.id}">
          <button type="submit" name="submitMessage" class="btn btn-outline form-control-submit">
            {l s='Send' d='Shop.Theme.Actions'}
          </button>
        </footer>

      </section>

    </form>
  </section>
{/block}
