<?php

include_once ROOTDIR."/modules/addons/clean_pdf/options.php";

$invoicepdf_override = ROOTDIR."/modules/addons/clean_pdf/templates/overrides/invoicepdf.php";
if (file_exists($invoicepdf_override)){
		include ROOTDIR."/modules/addons/clean_pdf/templates/overrides/invoicepdf.php";
}else{
	if ($_LANG['locale'] != 'ar_AR' && $_LANG['locale'] != 'he_IL' && $_LANG['locale'] != 'fa_IR'){
		include ROOTDIR."/modules/addons/clean_pdf/templates/invoicepdf.php";
	}else{
		include ROOTDIR."/modules/addons/clean_pdf/templates/invoicepdf_rtl.php";
	}
}
