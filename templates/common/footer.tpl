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
	{assign var=pissn value=$currentJournal->getSetting('printIssn')}
{/if}

{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
<div id="pageFooter">
{if $pageFooter}
	{$pageFooter}
{/if}
{call_hook name="Templates::Common::Footer::PageFooter"}
	<div style="max-width: 1600px;margin-left: auto;margin-right: auto;padding: 0 1%;">
	<div id="footer-middletitle">
	<div id="footer-middle">
	<div id="footer-contacttitle">
	<div style="width: 100%"><iframe width="100%" height="NaN" src="https://maps.google.com/maps?width=100%&amp;height=NaN&amp;hl=en&amp;q=Politeknik%20Negeri%20Jember+(Maps)&amp;ie=UTF8&amp;t=p&amp;z=16&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Create Google Map</a></iframe></div>
	</div>
		<div id="left">
			<div>
			<img src="{$baseUrl}/plugins/themes/agriprima/img/footer.png" style="height: 60px;"/><br/>
			<h3 style="margin-top: .5em;">Official Website of Agriprima eJournal System</h3>
			<p style="margin: 0;">All content is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution ShareAlike 4.0 International License</a></p>
			</div>
			<div style="margin-top: 5px;">
				<div>
				<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0;float:left; margin:5px 10px 0 0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png"></a>
				</div>
				<div style="padding-top: 5px;">
				<strong>© 2018, Agriprima, Journal of Applied Agricultural Sciences.</strong><br>
				<p class="footer__copy" style=" margin: 0;">All rights reserved.</p>
				</div>
			</div>
		</div>

	<div id="center">
			
			<h3 style="margin: 50px 0 10px 0;">About Us</h3><hr/>
			<p>e-ISSN: <a title="Electronic ISSN" href="http://www.issn.lipi.go.id/issn.cgi?daftar&1492407276&101&&"_blank">2579-9479</a></p>
			<p>Powered by: <a  style="font-style: italic;" title="OJS System" href="https://pkp.sfu.ca/ojs/" target="_blank">Open Journal System Ver. <strong>2.4.8-3</strong></a></p>
			<p>Managed by: <a title="Departement/Faculty" href=""_blank"> {translate key="jurusan"}</a></p>
			<p>Published by: <a title="University" href="http://www.polije.ac.id" target="_blank"> {translate key="instansi"}</a></p>
			<p style="font-style: italic" title="Address">Address: Jl. Mastrip Po.Box 164 Jember </p>
	</div>	
		
		
		<div id="right">
			<h3 style="margin: 50px 0 10px 0;">Support Link</h3><hr/>
			<ul>
				<li><a href="javascript:openHelp('{if $helpTopicId}{get_help_id|escape key="$helpTopicId" url="true"}{else}{url page="help"}{/if}')">How to Use this Website</a></li>
				<li><a href="{url page="about" op="submissions"}">How to Submit an Article</a></li>
				<li><a href="{url page="issue" op="current"}">Our Current Publication</a></li>
				<li><a href="" target="_blank">Information for Reader</a></li>
				<li><a href="" target="_blank">Information for Publisher</a></li>
			</ul>
		</div>	
	<div id="footer-sharetitle">
			<h3 style="margin: 50px 0 10px 0;">Contact Us</h3><hr/>
			<p>{translate key="about.contact.principalContact"}: <a href="mailto:cherry_triwidiarto@polije.ac.id">
				Ir. Cherry Triwidiarto, M.Si</a></p>
			<p>{translate key="about.contact.supportContact"}: <a href="mailto:afif_sugi@polije.ac.id"> Afif Sugi Hendrianto, S.ST</a></p>
			<p>Website: <a title="URL" href="https://agriprima.polije.ac.id" target="_blank"> https://agriprima.polije.ac.id</a></p>
			<p>Oficial Mail: <a title="Mailing Address" href="mailto:agriprima@polije.ac.id"> agriprima@polije.ac.id</a></p>
			<p style="" title="Telp/fax"> Telp/fax : (0331) 333532-34 Ext.229 / (0331) 333531</p>			
	</div>
	</div>
		</div>
	<div id="footer-bottom"></div>
	
{/strip}
<script type="text/javascript" src="{$baseUrl}/plugins/themes/agriprima/js/menu.js"></script>
</div>
</div>

{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}

</div>

</body>
</html>
