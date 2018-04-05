<?php

include_once ROOTDIR."/modules/addons/clean_pdf/options.php";

$quotepdf_override = ROOTDIR."/modules/addons/clean_pdf/templates/overrides/quotepdf.php";
if (file_exists($quotepdf_override)){
	include ROOTDIR."/modules/addons/clean_pdf/templates/overrides/quotepdf.php";
}else{
	if ($_LANG['locale'] != 'ar_AR' && $_LANG['locale'] != 'he_IL' && $_LANG['locale'] != 'fa_IR'){
	    include ROOTDIR."/modules/addons/clean_pdf/templates/quotepdf.php";
	}else{
	    include ROOTDIR."/modules/addons/clean_pdf/templates/quotepdf_rtl.php";
	}
}
