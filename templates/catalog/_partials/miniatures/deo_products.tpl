{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{if !isset($GRID_MODE) || !isset($NUMBER_PRODUCT_DESKTOP) || !isset($NUMBER_PRODUCT_MODULE) || !isset($NUMBER_PRODUCT_TABLET) || !isset($NUMBER_PRODUCT_SMALL_TABLET) || !isset($NUMBER_PRODUCT_MOBILE) || !isset($NUMBER_PRODUCT_SMALL_MOBILE)}
    {block name="setting"}
      {include file="layouts/setting.tpl"}
    {/block}
{/if}

{if !isset($productClassWidget) && !isset($sidebar)}
    {assign var="productClassWidget" value={hook h="pagebuilderConfig" configName="productClass"}}
{/if}
{if !isset($productProfileDefault)}
    {assign var="productProfileDefault" value={hook h="pagebuilderConfig" configName="productKey"}}
{/if}



{if isset($responsive_plist) && $responsive_plist}
    {assign var="colValue" value="$responsive_plist" scope="parent"}
{else}
    {function define_number_product}
        {if $data.columnlarge=="5"}
            {assign var="col_cat_product_xxl" value="col-xxl-2-4"}
        {else}
            {assign var="col_cat_product_xxl" value="col-xxl-{12/$data.columnlarge}"}
        {/if}
        {if $data.column=="5"}
            {assign var="col_cat_product_xl" value="col-xl-2-4"}
        {else}
            {assign var="col_cat_product_xl" value="col-xl-{12/$data.column}"}
        {/if}
        {if $data.largedevice=="5"}
            {assign var="col_cat_product_lg" value="col-lg-2-4"}
        {else}
            {assign var="col_cat_product_lg" value="col-lg-{12/$data.largedevice}"}
        {/if}
        {assign var="colValue" value="col-sp-{12/$data.mobile} col-xs-{12/$data.extrasmalldevice} col-sm-{12/$data.smalldevice} col-md-{12/$data.tablet} {$col_cat_product_lg} {$col_cat_product_xl} {$col_cat_product_xxl}" scope="parent"} 
    {/function} 

    {*define numbers of product per line in other page for desktop*}
    {$data = []}
    {if (isset($page.page_name) && $page.page_name != 'index')}
        {if isset($page.body_classes['layout-full-width']) && $page.body_classes['layout-full-width']}
            {$data  =  ['columnlarge' => $NUMBER_PRODUCT_LARGE_DESKTOP,'column' => $NUMBER_PRODUCT_DESKTOP,'largedevice' => $NUMBER_PRODUCT_SMALL_DESKTOP,'extrasmalldevice' => $NUMBER_PRODUCT_MOBILE,'tablet' => $NUMBER_PRODUCT_TABLET,'smalldevice' => $NUMBER_PRODUCT_SMALL_TABLET,'mobile' => $NUMBER_PRODUCT_SMALL_MOBILE]}
            {* {assign var='nbItemsPerLine' value=$NUMBER_PRODUCT_LARGE_DESKTOP}
            {assign var='nbItemsPerLineTablet' value=$NUMBER_PRODUCT_TABLET}
            {assign var='nbItemsPerLineMobile' value=$NUMBER_PRODUCT_MOBILE} *}
        {elseif (isset($page.body_classes['layout-left-column']) && $page.body_classes['layout-left-column']) || (isset($page.body_classes['layout-right-column']) && $page.body_classes['layout-right-column'])}
            {$data  =  ['columnlarge' => $NUMBER_PRODUCT_LARGE_DESKTOP_SIDEBAR,'column' => $NUMBER_PRODUCT_DESKTOP_SIDEBAR,'largedevice' => $NUMBER_PRODUCT_SMALL_DESKTOP_SIDEBAR,'extrasmalldevice' => $NUMBER_PRODUCT_MOBILE_SIDEBAR,'tablet' => $NUMBER_PRODUCT_TABLET_SIDEBAR,'smalldevice' => $NUMBER_PRODUCT_SMALL_TABLET_SIDEBAR,'mobile' => $NUMBER_PRODUCT_SMALL_MOBILE_SIDEBAR]}
            {* {assign var='nbItemsPerLine' value=$NUMBER_PRODUCT_LARGE_DESKTOP_SIDEBAR}
            {assign var='nbItemsPerLineTablet' value=$NUMBER_PRODUCT_TABLET_SIDEBAR}
            {assign var='nbItemsPerLineMobile' value=$NUMBER_PRODUCT_MOBILE_SIDEBAR} *}
        {elseif isset($page.body_classes['layout-both-columns']) && $page.body_classes['layout-both-columns']}
            {$data  =  ['columnlarge' => $NUMBER_PRODUCT_LARGE_DESKTOP_BOTH,'column' => $NUMBER_PRODUCT_DESKTOP_BOTH,'largedevice' => $NUMBER_PRODUCT_SMALL_DESKTOP_BOTH,'extrasmalldevice' => $NUMBER_PRODUCT_MOBILE_BOTH,'tablet' => $NUMBER_PRODUCT_TABLET_BOTH,'smalldevice' => $NUMBER_PRODUCT_SMALL_TABLET_BOTH,'mobile' => $NUMBER_PRODUCT_SMALL_MOBILE_BOTH]}
            {* {assign var='nbItemsPerLine' value=$NUMBER_PRODUCT_LARGE_DESKTOP_BOTH}
            {assign var='nbItemsPerLineTablet' value=$NUMBER_PRODUCT_TABLET_BOTH}
            {assign var='nbItemsPerLineMobile' value=$NUMBER_PRODUCT_MOBILE_BOTH} *}
        {/if}
    {else}
        {$data  =  ['columnlarge' => $NUMBER_PRODUCT_MODULE,'column' => $NUMBER_PRODUCT_MODULE,'largedevice' => $NUMBER_PRODUCT_SMALL_DESKTOP,'extrasmalldevice' => $NUMBER_PRODUCT_MOBILE,'tablet' => $NUMBER_PRODUCT_TABLET,'smalldevice' => $NUMBER_PRODUCT_SMALL_TABLET,'mobile' => $NUMBER_PRODUCT_SMALL_MOBILE]}
        {* {assign var='nbItemsPerLine' value=$NUMBER_PRODUCT_MODULE}
        {assign var='nbItemsPerLineTablet' value=$NUMBER_PRODUCT_TABLET}
        {assign var='nbItemsPerLineMobile' value=$NUMBER_PRODUCT_MOBILE} *}
    {/if}

    {define_number_product data=$data}
{/if}

{*define numbers of product per line in other page for tablet*}
{* {assign var='nbLi' value=$products|count}
{assign var='nbLines' value=$nbLi/$nbItemsPerLine}
{assign var='nbLinesTablet' value=$nbLi/$nbItemsPerLineTablet} *}

<!-- Products list -->
{assign var="categoryLayout" value={hook h="pagebuilderConfig" configName="categoryLayout"}}
{assign var="classCategoryLayout" value={hook h="pagebuilderConfig" configName="classCategoryLayout"}}

<div {if isset($id) && $id} id="{$id}"{/if} class="product_list {if isset($deo_page) && $deo_page=='category'}{$GRID_MODE}{/if} {if isset($classCategoryLayout) && $classCategoryLayout != ""}{$classCategoryLayout}{elseif isset($productClassWidget) && !isset($sidebar)} {$productClassWidget}{/if} ">
    <div class="row">
        {foreach from=$products item=product name=products}
            {* {assign var='totModulo' value=$products|count/$nbItemsPerLine}
            {assign var='totModuloTablet' value=$products|count/$nbItemsPerLineTablet}
            {assign var='totModuloMobile' value=$products|count/$nbItemsPerLineMobile}
            {if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
            {if $totModuloTablet == 0}{assign var='totModuloTablet' value=$nbItemsPerLineTablet}{/if}
            {if $totModuloMobile == 0}{assign var='totModuloMobile' value=$nbItemsPerLineMobile}{/if} *}   
            <div class="ajax_block_product {$colValue}
                {* {if $smarty.foreach.products.iteration%$nbItemsPerLine == 0} last-in-line
                {elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1} first-in-line{/if}
                {if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModulo)} last-line{/if}
                {if $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 0} last-item-of-tablet-line
                {elseif $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}
                {if $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 0} last-item-of-mobile-line
                {elseif $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}
                {if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModuloMobile)} last-mobile-line{/if} *}
                ">
                {block name='product_miniature'}
                    {if isset($sidebar) && $sidebar}
                        {include file='catalog/_partials/miniatures/product.tpl' product=$product}
                    {else}
                        {if isset($productProfileDefault) && $productProfileDefault}
                            {* exits THEME_NAME/profiles/profile_name.tpl -> load template*}
                            {if isset($categoryLayout) && $categoryLayout != ""}
                                {hook h='displayDeoProfileProduct' product=$product profile=$categoryLayout}
                            {else}
                                {hook h='displayDeoProfileProduct' product=$product profile=$productProfileDefault}
                            {/if}
                        {else}
                            {include file='catalog/_partials/miniatures/product.tpl' product=$product}
                        {/if}
                    {/if}
                {/block}
            </div>
        {/foreach}
    </div>
</div>