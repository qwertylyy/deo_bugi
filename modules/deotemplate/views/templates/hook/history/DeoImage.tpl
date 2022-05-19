{* 
 *  @author    DeoTemplate <deotemplate@gmail.com>
 *  @copyright by DeoTemplate
 *  @license   http://deotemplate.com - prestashop template provider
*}

<div id="image-{$formAtts.form_id}" class="block {(isset($formAtts.class)) ? $formAtts.class : ''} {if isset($formAtts.sub_title) && $formAtts.sub_title}has-sub-title{/if}">
    {if isset($formAtts.title) && $formAtts.title}
        <h4 class="title"><span>{$formAtts.title nofilter}{* HTML form , no escape necessary *}</span></h4>
    {/if}
    
    <div class="media">
        <div class="left-block">
            {if isset($formAtts.description) && $formAtts.description}
                <div class="image_description">
                    {($formAtts.description) ? $formAtts.description:'' nofilter}{* HTML form , no escape necessary *}
                </div>
            {/if}
        </div>
        <div class="right-block">
            {if isset($formAtts.url) && $formAtts.url}
            <a class="image" href="{$formAtts.url}{*full url can not escape*}" {(isset($formAtts.is_open) && $formAtts.is_open) ? 'target="_blank"' : ''}>
            {/if}
                {if isset($formAtts.image) && $formAtts.image}
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
                {/if}
            {if isset($formAtts.url) && $formAtts.url}
            </a>
            {/if}
            {if isset($formAtts.sub_title) && $formAtts.sub_title}
                <div class="sub-title">{$formAtts.sub_title nofilter}</div>
            {/if}
        </div>
    </div>
</div>
