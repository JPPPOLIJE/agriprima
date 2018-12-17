{**
 * templates/article/footer.tpl
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Article View -- Footer component.
 *}

{if $sharingEnabled}
<!-- start AddThis -->
	{if isset($sharingDropDownMenu)}
		{if isset($sharingUserName)}
			<script type="text/javascript">
				var addthis_pub = '{$sharingUserName}';
			</script>
		{/if}
		<br />
		<br />
		<div class="addthis_container">
			<a href="https://www.addthis.com/bookmark.php"
				onmouseover="return addthis_open(this, '', '{$sharingArticleURL|escape:"javascript"}', '{$sharingArticleTitle|escape:"javascript"}')"
				onmouseout="addthis_close()" onclick="return addthis_sendto()">
					<img src="{$sharingButtonUrl}" width="{$sharingButtonWidth}" height="{$sharingButtonHeight}" border="0" alt="Bookmark and Share" style="border:0;padding:0" />
			</a>
			<script type="text/javascript" src="https://s7.addthis.com/js/200/addthis_widget.js"></script>
		</div>
	{else}
		<a href="https://www.addthis.com/bookmark.php"
			onclick="window.open('https://www.addthis.com/bookmark.php?pub={$sharingUserName|escape:"url"}&amp;url={$sharingRequestURL|escape:"url"}&amp;title={$sharingArticleTitle|escape:"url"}', 'addthis',
			                     'scrollbars=yes,menubar=no,width=620,height=520,resizable=yes,toolbar=no,location=no,status=no');
			         return false;"
			title="Bookmark using any bookmark manager!" target="_blank">
				<img src="{$sharingButtonUrl}" width="{$sharingButtonWidth}" height="{$sharingButtonHeight}" border="0" alt="Bookmark and Share" style="border:0;padding:0" />
		</a>
	{/if}
<!-- end AddThis -->
{/if}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->

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
	<div id="footer-middle">
			<div id="footer-4col">
				<div id="footer-col0">
					<div style="width: 100%">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3949.442512518246!2d113.72212841538575!3d-8.158092183991236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd695b6f92a7187%3A0x6ffab1009691be7c!2sGedung+Jurusan+Produksi+Pertanian!5e0!3m2!1sid!2sid!4v1544809003003" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
				
				<div id="footer-col1">
					<div>
						<img src="{$baseUrl}/plugins/themes/agriprima/img/footer.png" style="height: 60px;"/><br/>
						<h3 style="margin-top: .5em;">Official Website of eJournal System</h3>
						<p style="margin: 0;">All content is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution ShareAlike 4.0 International License</a></p>
					</div>
					<div style="margin-top: 5px;">
						<div>
							<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/" target="_blank"><img alt="Creative Commons License" style="border-width:0;float:left; margin:8px 10px 0 0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png"></a>
						</div>
						<div style="padding-top: 5px;">
						<strong>© 2018. A G R I P R I M A</strong><br>
						<p class="footer__copy" style=" margin: 0;"><em>Journal of Applied Agricultural Sciences</em></p>
						</div>
					</div>
				</div>

				<div id="footer-col2">
					<h3 style="margin: 50px 0 10px 0;">About Us</h3><hr/>
					<p>e-ISSN: <a title="Electronic ISSN" href="http://issn.pdii.lipi.go.id/issn.cgi?daftar&1485746618&1&&" target="_blank">2549-2942</a></p>
					<p>Powered by: <a title="OJS System" href="https://pkp.sfu.ca/ojs/" target="_blank">Open Journal System Ver. <strong>2.4.8-3</strong></a></p>
					<p>Managed by: <a title="Departement/Faculty" href="https://jpp.polije.ac.id" target="_blank">{translate key="jurusan"}</a></p>
					<p>Published by: <a title="University" href="http://www.polije.ac.id" target="_blank">{translate key="instansi"}</a></p>
					<p title="Address">Address: <em>Jl. Mastrip Po.Box 164 Jember</em></p>
				</div>	
				
		
				<div id="footer-col3">
					<h3 style="margin: 50px 0 10px 0;">Support Link</h3><hr/>
					<ul style="padding-left: 1.3em;">
						<li><a href="javascript:openHelp('{if $helpTopicId}{get_help_id|escape key="$helpTopicId" url="true"}{else}{url page="help"}{/if}')">How to Use this Website</a></li>
						<li><a href="{url page="about" op="submissions"}">How to Submit an Article</a></li>
						<li><a href="{url page="issue" op="current"}">Our Current Publication</a></li>
						<li><a href="{url page="information" op="readers"}" target="_blank">Information for Reader</a></li>
						<li><a href="{url page="information" op="librarians"}" target="_blank">Information for Publisher</a></li>
					</ul>
				</div>	
				<div id="footer-col4">
					<h3 style="margin: 50px 0 10px 0;">Contact Us</h3><hr/>
					<p>{translate key="about.contact.principalContact"}: <a href="mailto:cherry_triwidiarto@polije.ac.id">Ir. Cherry Triwidiarto, M.Si</a></p>
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
<script type="text/javascript">
{literal}
  window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);
 
  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };
 
  return t;
}(document, "script", "twitter-wjs"));
 {/literal}
</script>
</div>
</div>

{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}

</div>

</body>
</html>
