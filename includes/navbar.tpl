{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" class="{if $item->hasChildren()}dropdown{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
        <a {if $item->hasChildren()}class="dropdown-toggle" data-toggle="dropdown" href="#"{else}href="{if $item->getName() eq 'Announcements'}announcements.php{elseif $item->getName() eq 'Knowledgebase'}knowledgebase.php{elseif $item->getName() eq 'Downloads'}downloads.php{else}{$item->getUri()}{/if}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
            {$item->getLabel()}
            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
            {if $item->hasChildren()}&nbsp;<b class="caret"></b>{/if}
        </a>
        {if $item->hasChildren()}
            <ul class="dropdown-menu">
            {foreach $item->getChildren() as $childItem}
                <li menuItemName="{$childItem->getName()}"{if $childItem->getClass()} class="{$childItem->getClass()}"{/if} id="{$childItem->getId()}">
                    <a href="{if $childItem->getName() eq 'Announcements'}announcements.php{elseif $childItem->getName() eq 'Knowledgebase'}knowledgebase.php{elseif $childItem->getName() eq 'Downloads'}downloads.php{else}{$childItem->getUri()}{/if}"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                        {$childItem->getLabel()}
                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                    </a>
                </li>
            {/foreach}
            </ul>
        {/if}
    </li>
{/foreach}
