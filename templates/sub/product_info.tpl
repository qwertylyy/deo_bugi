{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

{if isset($deo_is_mobile) && $deo_is_mobile}
	{include file="sub/product_info/accordions.tpl"}
{else}	
	{if $type == "show_all"}
		{include file="sub/product_info/default.tpl"}
	{elseif $type == "accordions"}
		{include file="sub/product_info/accordions.tpl"}
	{elseif $type == "tab"}
		{include file="sub/product_info/tab.tpl"}
	{/if}
{/if}