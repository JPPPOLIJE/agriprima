{**
 * templates/common/search.tpl
 *
 *
 * Search Bar
 *
 *}

{if $enableLanguageToggle}
<div style="padding: 5px 10px 5px 0; float: right;">
	<script type="text/javascript">
		<!--
		function changeLanguage() {ldelim}
			var e = document.getElementById('languageSelect');
			var new_locale = e.options[e.selectedIndex].value;

			var redirect_url = '{url|escape:"javascript" page="user" op="setLocale" path="NEW_LOCALE" source=$smarty.server.REQUEST_URI escape=false}';
			redirect_url = redirect_url.replace("NEW_LOCALE", new_locale);

			window.location.href = redirect_url;
		{rdelim}
		//-->
	</script>
	<select id="languageSelect" {if $isPostRequest}disabled="disabled" {/if}size="1" name="locale" class="selectMenu" style="float:none">{html_options options=$languageToggleLocales selected=$currentLocale}</select>
	<input style="margin-top: 1px; background-image: linear-gradient(#efefef, #e2e2e2); color: black;" type="submit" class="button" value="{translate key='form.submit'}" onclick="changeLanguage(); return false;" />
</div>
{/if}