{include file='./partials/sidebar.tpl' assign='sidebar'}

{include file='./partials/header.tpl' title='Page title'}

{$sidebar}

Valeur de $toto = {$toto} <br><br>

{$text|nl2br|strtoupper} <br><br>

Date 1 : {$date1} <br><br>

Date 2 : {$date2|date_format:"%d-%m-%Y %H:%M:%S"} <br><br>

Date 3 : {$date2|date_format:"%d/%m/%Y %H:%M:%S"} <br><br>

<hr>
{section name=day loop=$days}
	{$smarty.section.day.index} : {$days[day]}<br>
{/section}

<hr>

{foreach $days as $day}
	{$day}<br>
{/foreach}

<hr>

{foreach $days as $key => $value}
	{$key} : {$value}<br>
{/foreach}

<hr>

{for $i=0 to 10 step 2}
	{$i};
{/for}

{$sidebar}

{include file='./partials/footer.tpl'}