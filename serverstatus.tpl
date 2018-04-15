<p>{$LANG.serverstatusheadingtext}</p>

{foreach from=$issues item=issue}

    <div class="panel {if $issue.clientaffected}panel-warning{else}panel-info{/if}">
        <div class="panel-heading">
            {$issue.title} ({$issue.status})
        </div>
        <ul class="list-group">
            <li class="list-group-item {if $issue.rawPriority == 'Critical'}list-group-item-danger{elseif $issue.rawPriority == 'High'}list-group-item-warning{elseif $issue.rawPriority == 'Low'}list-group-item-success{else}list-group-item-info{/if}"><strong>{$LANG.networkissuespriority}</strong> - {$issue.priority}</li>
            {if $issue.server or $issue.affecting}<li class="list-group-item"><strong>{$LANG.networkissuesaffecting} {$issue.type}</strong> - {if $issue.type eq $LANG.networkissuestypeserver}{$issue.server}{else}{$issue.affecting}{/if}</li>{/if}
            <li class="list-group-item">
                <p>
                    {$issue.description}
                </p>
            </li>
            <li class="list-group-item"><strong>{$LANG.networkissuesdate}</strong> - {$issue.startdate}{if $issue.enddate} - {$issue.enddate}{/if}</li>
            <li class="list-group-item"><strong>{$LANG.networkissueslastupdated}</strong> - {$issue.lastupdate}</li>
        </ul>
    </div>

{foreachelse}
    {include file="$template/includes/alert.tpl" type="success" msg=$noissuesmsg textcenter=true}
{/foreach}

<div class="btn-group">
    <a href="{if $prevpage}{$smarty.server.PHP_SELF}?{if $view}view={$view}&amp;{/if}page={$prevpage}{else}#{/if}" class="btn btn-default {if !$prevpage}disabled{/if}">&lt; {$LANG.previouspage}</a>
    <a href="{if $nextpage}{$smarty.server.PHP_SELF}?{if $view}view={$view}&amp;{/if}page={$nextpage}{else}#{/if}" class="btn btn-default {if !$nextpage}disabled{/if}">{$LANG.nextpage} &gt;</a>
</div>



{* {include file="$template/includes/subheader.tpl" title=$LANG.serverstatustitle} *}

<h2>DNS Servers</h2>

{* DNS Status Header *}

{if $servers}

	<div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>{$LANG.servername}</th>
                    <th class="text-center">DNS</th>
                    <th class="text-center">{$LANG.serverstatusserverload}</th>
                    <th class="text-center">{$LANG.serverstatusuptime}</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$servers key=num item=server}
                 {* Show only DNS servers here *}
                  {if $server.name eq 'dns1' or $server.name eq 'dns2' or $server.name eq 'dns3' or $server.name eq 'dns4'}
                    <tr>
                        <td>{$server.name}</td>
                        <td class="text-center" id="port53_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="load{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="uptime{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                            <script>
                            jQuery(document).ready(function() {
                                checkPort({$num}, 53);
                                getStats({$num});
                            });
                            </script>
                        </td>
                    </tr>
                    {/if}
                {foreachelse}
                    <tr>
                        <td colspan="7">{$LANG.serverstatusnoservers}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
{/if}

{* Hosting Status Header *}

<h2>Hosting Servers</h2>
{if $servers}
	<div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>{$LANG.servername}</th>
                    <th class="text-center">HTTP</th>
                    <th class="text-center">DNS</th>
                    <th class="text-center">FTP</th>
                    <th class="text-center">POP3</th>
                    <th class="text-center">SMTP</th>
                    <th class="text-center">{$LANG.serverstatusserverload}</th>
                    <th class="text-center">{$LANG.serverstatusuptime}</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$servers key=num item=server}
                {* Show only Hosting servers here *}
                {if $server.name neq 'dns1' and $server.name neq 'dns2' and $server.name neq 'dns3' and $server.name neq 'dns4'}
                    <tr>
                        <td>{$server.name}</td>
                        <td class="text-center" id="port80_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="port53_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="port21_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="port995_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                         <td class="text-center" id="port465_{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="load{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                        </td>
                        <td class="text-center" id="uptime{$num}">
                            <span class="fa fa-spinner fa-spin"></span>
                            <script>
                            jQuery(document).ready(function() {
                                checkPort({$num}, 80);
                                checkPort({$num}, 53);
                                checkPort({$num}, 21);
                                checkPort({$num}, 995);
                                checkPort({$num}, 465);
                                getStats({$num});
                            });
                            </script>
                        </td>
                    </tr>
                    {/if}
                {foreachelse}
                    <tr>
                        <td colspan="7">{$LANG.serverstatusnoservers}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>

{/if}
