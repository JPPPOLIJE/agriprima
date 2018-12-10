{if ($pageDisplayed == "site") }
<div id="submit-button" class="largeButton">
	<a href="mailto:agriprima@polije.ac.id">Contact Agriprima, Journal of Applied Agricultural Sciences</a>
</div>
{else}
<div id="submit-button" class="largeButton">
	<a href="{url page="about" op="submissions"}">{translate key="user.noRoles.submitArticle"}</em></a>
</div>
{/if}
