{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->
</div><!-- container -->
{strip}
{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
	{assign var=issn value=$currentJournal->getSetting('onlineIssn')}
{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
	{assign var=issn value=$currentJournal->getSetting('printIssn')}
{/if}

{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
<div id="pageFooter">
{if $pageFooter}
	{$pageFooter}
{/if}
{call_hook name="Templates::Common::Footer::PageFooter"}
	<div id="standardFooter">
		{if $issn}
			<p>ISSN: {$issn}</p>
		{/if}		
		<p>Managed by <a href="https://jpp.polije.ac.id">Departement of Agricultural Sciences</a>, Published by <a href="https://www.polije.ac.id">State Polytechnic of Jember</a>.</p>
		<a href="https://agriprima.polije.ac.id">
			<img src="{$baseUrl}/plugins/themes/agriprima/img/footer.png" alt="Politeknik Negeri Jember"/>
		</a>
	</div>
{/strip}
<script type="text/javascript" src="{$baseUrl}/plugins/themes/agriprima/js/menu.js"></script>
</div>


{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}


</body>
</html>
