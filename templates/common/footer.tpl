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
<div id="pageFooter">
	{if $pageFooter}
	{$pageFooter}
	{/if}
	{call_hook name="Templates::Common::Footer::PageFooter"}
		<div id="footer-middle">
			<div id="footer-4col">
				<div id="footer-col0">
					<div style="width: 100%"><iframe src="{translate key="plugins.theme.agriprima.maps"}" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe></div>
				</div>
				
				<div id="footer-col1">
					<div>
						<img src="{$baseUrl}/plugins/themes/agriprima/img/footer.png" style="height: 60px;"/><br/>
						<h3 style="margin-top: .5em;">Official Website of eJournal System</h3>
						<p style="margin: 0;">All content is licensed under a <a rel="license" href="{translate key="plugins.theme.agriprima.urlcc"}" target="_blank">{translate key="plugins.theme.agriprima.cc"}</a></p>
					</div>
					<div style="margin-top: 5px;">
						<div>
							<a rel="license" href="{translate key="plugins.theme.agriprima.urlcc"}" target="_blank"><img alt="Creative Commons License" style="border-width:0;float:left; margin:8px 10px 0 0" src="{translate key="plugins.theme.agriprima.imgcc"}"></a>
						</div>
						<div style="padding-top: 5px;">
						<strong>{translate key="plugins.theme.agriprima.copyright"}</strong><br>
						<p class="footer__copy" style=" margin: 0;"><em>{translate key="plugins.theme.agriprima.subcopyright"}</em></p>
						</div>
					</div>
				</div>

				<div id="footer-col2">
					<h3 style="margin: 50px 0 10px 0;">About Us</h3><hr/>
					<p>eISSN. <a title="Electronic ISSN" href="https://portal.issn.org/resource/ISSN/{translate key="plugins.theme.agriprima.ISSN"}" target="_blank">{translate key="plugins.theme.agriprima.ISSN"}</a></p>
					<p>Powered by. <a title="OJS System" href="https://pkp.sfu.ca/ojs/" target="_blank">Open Journal System Ver. <strong>2.4.8-5</strong></a></p>
					<p>Managed by. <a title="Departement/Faculty" href="{translate key="plugins.theme.agriprima.urlDepartement"}" target="_blank">{translate key="plugins.theme.agriprima.departement"}</a></p>
					<p>Published by. <a title="University" href="{translate key="plugins.theme.agriprima.urlUniversity"}" target="_blank">{translate key="plugins.theme.agriprima.university"}</a></p>
					<p title="Address">{translate key="plugins.theme.agriprima.address"}. <em>{translate key="plugins.theme.agriprima.street"}</em></p>
				</div>	
				
		
				<div id="footer-col3">
					<h3 style="margin: 50px 0 10px 0;">Support Link</h3><hr/>
					<ul style="padding-left: 1.3em;">
						<li><a href="javascript:openHelp('{if $helpTopicId}{get_help_id|escape key="$helpTopicId" url="true"}{else}{url page="help"}{/if}')">{translate key="plugins.theme.agriprima.howto"}</a></li>
						<li><a href="{url page="about" op="submissions"}">{translate key="plugins.theme.agriprima.howsubmit"}</a></li>
						<li><a href="{url page="issue" op="current"}">{translate key="plugins.theme.agriprima.currentpub"}</a></li>
						<li><a href="{url page="information" op="readers"}" target="_blank">{translate key="plugins.theme.agriprima.forreader"}</a></li>
						<li><a href="{url page="information" op="librarians"}" target="_blank">{translate key="plugins.theme.agriprima.forlibrarians"}</a></li>
					</ul>
				</div>	
				<div id="footer-col4">
					<h3 style="margin: 50px 0 10px 0;">Contact Us</h3><hr/>
					<p>{translate key="about.contact.principalContact"}. <a href="mailto:{translate key="plugins.theme.agriprima.mailPrinsipalContact"}">{translate key="plugins.theme.agriprima.PrinsipalContactName"}</a></p>
					<p>{translate key="about.contact.supportContact"}. <a href="mailto:{translate key="plugins.theme.agriprima.mailSupportContact"}"> {translate key="plugins.theme.agriprima.SupportContactName"}</a></p>
					<p>Website. <a title="URL" href="{translate key="plugins.theme.agriprima.UrlWebsite"}" target="_blank"> {translate key="plugins.theme.agriprima.UrlWebsite"}</a></p>
					<p>Official Email. <a title="Mailing Address" href="mailto:{translate key="plugins.theme.agriprima.OfficialMail"}"> {translate key="plugins.theme.agriprima.OfficialMail"}</a></p>
					<p style="" title="Telp/fax"> Telp/fax. {translate key="plugins.theme.agriprima.Telp.Fax"}</p>			
				</div>
			</div>
		</div>
	<div id="footer-bottom"></div>
<script type="text/javascript" src="{$baseUrl}/plugins/themes/agriprima/js/menu.js"></script>
</div>
{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}
</div>
</body>
</html>