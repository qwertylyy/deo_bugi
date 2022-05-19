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

{if isset($deo_breadcrumb_image) && $deo_breadcrumb_image}
  <nav data-depth="{$breadcrumb.count}" class="breadcrumb show-breadcrumb-image">
    <div class="breadcrumb-wrapper{if isset($deo_breadcrumb_image_fullwidth) && !$deo_breadcrumb_image_fullwidth} container{/if}">
      <div class="breadcrumb-link">
        {if isset($deo_breadcrumb_image_fullwidth) && $deo_breadcrumb_image_fullwidth}<div class="container">{/if}
          <ol itemscope itemtype="http://schema.org/BreadcrumbList">
            {block name='breadcrumb'}
              {foreach from=$breadcrumb.links item=path name=breadcrumb}
                {block name='breadcrumb_item'}
                  <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                    {if not $smarty.foreach.breadcrumb.last}
                      <a itemprop="item" href="{$path.url}"><span itemprop="name">{$path.title}</span></a>
                    {else}
                      <span itemprop="name">{$path.title}</span>
                    {/if}
                    <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
                  </li>
                {/block}
              {/foreach}
            {/block}
          </ol>
        {if isset($deo_breadcrumb_image_fullwidth) && $deo_breadcrumb_image_fullwidth}</div>{/if}
      </div>
      {if $page.page_name == 'category' && isset($deo_breadcrumb_category_image) && $deo_breadcrumb_category_image}
        {if $category.image.large.url}
          <div class="category-cover">
            <img src="{$category.image.large.url}" class="img-fluid" alt="{$category.image.legend}">
          </div>
        {/if}
      {else}
        <div class="category-cover">
          <img src="{$urls.img_url}bg-breadcrumb.jpg" class="img-fluid" alt="Breadcrumb image">
        </div>
      {/if}
    </div>
  </nav>
{else}
  <nav data-depth="{$breadcrumb.count}" class="breadcrumb">
    <div class="container">
      <ol itemscope itemtype="http://schema.org/BreadcrumbList">
        {block name='breadcrumb'}
          {foreach from=$breadcrumb.links item=path name=breadcrumb}
            {block name='breadcrumb_item'}
              <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                {if not $smarty.foreach.breadcrumb.last}
                  <a itemprop="item" href="{$path.url}"><span itemprop="name">{$path.title}</span></a>
                {else}
                  <span itemprop="name">{$path.title}</span>
                {/if}
                <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
              </li>
            {/block}
          {/foreach}
        {/block}
      </ol>
    </div>
  </nav>
{/if}


