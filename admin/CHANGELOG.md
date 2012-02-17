Madrona Version 0.0.1 - 1/28/2012
---
    * Created Joomla component using xCIDeveloper 
    * Merged Webzash folders
    * Replace references to Model and Controller classes with CI_Model and CI_Controller
    * Installs correctly - at this point no functionality is available, but it doesn't crash!

Madrona Version 0.0.2 - 1/30/2012
---
	* Removed html headers from view templates, leaving only the tags from the body.
	* Add view tamplate script and css references back programatically.
	* Merged subclass namespace MY_ into XAVOC_
	* Added XAVOC_url_helper redirect override to translate CI redirect syntax to Joomla

Madrona Version 0.0.3 - 1/31/2012
---
	* Added XAVOC_url_helper anchor override to translate CI link syntax to Joomla

Madrona Version 0.0.4 - 2/2/2012
---
	* Changed startup to use the Joomla database connection and ignore ini files. 

Madrona Version 0.0.5 - 2/5/2012
---
	* Remove database param entry from screens.
	* Remove admin_template and user_template, consolidate all in template.
	* Flatten menu so everything is one panel.
	
Madrona Version 0.0.6 2/8/2012
---
	* Integrate SQL script to create and load db into install process.
	* Load UCOA Version 3 as default chart of accounts.
	* Move menu to JToolbar area.

Madrona Version 0.1 2/16/2012
---
	* Added icon to menu, tweaked manifest to smooth install.