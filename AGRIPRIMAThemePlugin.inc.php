<?php

/**
 * @file plugins/themes/agriprima/AGRIPRIMAThemePlugin.inc.php
 *
 * Copyright (c) 2013-2018 Simon Fraser University Library
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class AGRIPRIMAThemePlugin
 * @ingroup plugins_themes_agriprima
 *
 * @brief "agriprima" theme plugin
 */

import('classes.plugins.ThemePlugin');

class AGRIPRIMAThemePlugin extends ThemePlugin {
	/**
	 * Get the name of this plugin. The name must be unique within
	 * its category.
	 * @return String name of plugin
	 */
	function getName() {
		return 'AGRIPRIMAThemePlugin';
	}

	function getDisplayName() {
		return 'Agriprima Theme';
	}

	function getDescription() {
		return 'agriprima layout';
	}

	function getLocaleFilename($locale) {
		return null; // No locale data
	}

	function activate(&$templateMgr) {
		$templateMgr->template_dir[0] = Core::getBaseDir() 
										. DIRECTORY_SEPARATOR 
										. 'plugins' 
										. DIRECTORY_SEPARATOR 
										. 'themes' 
										. DIRECTORY_SEPARATOR 
										. 'agriprima' 
										. DIRECTORY_SEPARATOR 
										. 'templates';   
											      
		$templateMgr->compile_id = 'agriprimaTheme';
	}
}

?>
