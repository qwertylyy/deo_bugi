{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

<div id="image-{$formAtts.form_id}" class="block {(isset($formAtts.class)) ? $formAtts.class : ''} {if isset($formAtts.sub_title) && $formAtts.sub_title}has-sub-title{/if}">

    {if isset($formAtts.image) && $formAtts.image}
        <span class="link-service">
            {if (isset($formAtts.url) && $formAtts.url) || (isset($formAtts.description) && $formAtts.description)}
                <a href="{if isset($formAtts.description) && $formAtts.description}javascript:void(0);{else}{$formAtts.url}{/if}" 
                {if isset($formAtts.description) && $formAtts.description}
                    data-toggle="modal" data-target="#modal-image-{$formAtts.form_id}"
                {/if}>
            {/if}
                {if isset($formAtts.lazyload) && $formAtts.lazyload}
                    <span class="lazyload-wrapper" style="padding-bottom: {$formAtts.rate_image};">
                        <span class="lazyload-icon"></span>
                    </span>
                    <img data-src="{$formAtts.image}" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="img-fluid lazyload {(isset($formAtts.animation) && $formAtts.animation != 'none' && $formAtts.animation) ? 'has-animation' : ''}"
                        {if isset($formAtts.animation) && $formAtts.animation != 'none' && $formAtts.animation} data-animation="{$formAtts.animation}" {/if}
                        {if $formAtts.animation_delay != '' && $formAtts.animation_delay} data-animation-delay="{$formAtts.animation_delay}" {/if}
                        title="{((isset($formAtts.alt) && $formAtts.alt) ? $formAtts.alt : '')}"
                        alt="{((isset($formAtts.alt) && $formAtts.alt) ? $formAtts.alt : '')}"/>
                {else}
                    <img src="{$formAtts.image}" class="img-fluid {(isset($formAtts.animation) && $formAtts.animation != 'none' && $formAtts.animation) ? 'has-animation' : ''}"
                        {if isset($formAtts.animation) && $formAtts.animation != 'none' && $formAtts.animation} data-animation="{$formAtts.animation}" {/if}
                        {if $formAtts.animation_delay != '' && $formAtts.animation_delay} data-animation-delay="{$formAtts.animation_delay}" {/if}
                        title="{((isset($formAtts.alt) && $formAtts.alt) ? $formAtts.alt : '')}"
                        alt="{((isset($formAtts.alt) && $formAtts.alt) ? $formAtts.alt : '')}" loading="lazy"/>
                {/if}
            {if (isset($formAtts.url) && $formAtts.url) || (isset($formAtts.description) && $formAtts.description)}
                </a>
            {/if}
        </span>
    {/if}

    {if isset($formAtts.title) && $formAtts.title}
        <h4 class="title">
            {if (isset($formAtts.url) && $formAtts.url) || (isset($formAtts.description) && $formAtts.description)}
                <a href="{if isset($formAtts.description) && $formAtts.description}javascript:void(0);{else}{$formAtts.url}{/if}" 
                {if isset($formAtts.description) && $formAtts.description}
                    data-toggle="modal" data-target="#modal-image-{$formAtts.form_id}"
                {/if}>
            {/if}

            {$formAtts.title nofilter}
            {* HTML form , no escape necessary *}

            {if (isset($formAtts.url) && $formAtts.url) || (isset($formAtts.description) && $formAtts.description)}
                </a>
            {/if}
        </h4>
    {/if}
    {if isset($formAtts.sub_title) && $formAtts.sub_title}
        <div class="sub-title">{$formAtts.sub_title nofilter}</div>
    {/if}
    
    <div class="read-more">
        <a href="{if isset($formAtts.description) && $formAtts.description}javascript:void(0);{else}{$formAtts.url}{/if}" {if isset($formAtts.description) && $formAtts.description}data-toggle="modal" data-target="#modal-image-{$formAtts.form_id}"{/if}>{l s='Read more' d='Shop.Theme.Global'}</a>
    </div>
</div>

{if isset($formAtts.description) && $formAtts.description}
    <div class='image_description'>
        <div class="modal fade" id="modal-image-{$formAtts.form_id}">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        {($formAtts.description) ? $formAtts.description:'' nofilter}{* HTML form , no escape necessary *}
                    </div>
                </div>
            </div>
        </div>
    </div>
{/if}