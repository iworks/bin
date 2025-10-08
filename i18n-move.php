#!/usr/bin/php -d memory_limit=512M
<?php
if ( 2 > count( $argv ) ) {
	echo 'No argument supplied';
	echo PHP_EOL;
	echo "usage $0 'Plugin Name'";
	echo PHP_EOL;
	exit;
}
$branches  = array( 'stable', 'dev' );
$languages = array(
	'ar'    => 'ar_AR',
	'bg'    => 'bg_BG',
	'cs'    => 'cs_CZ',
	'de'    => 'de_DE',
	'es'    => 'es_ES',
	'fa'    => 'fa_IR',
	'fi'    => 'fi',
	'fr'    => 'fr_FR',
	'he'    => 'he_IL',
	'it'    => 'it_IT',
	'nl'    => 'nl_NL',
	'pl'    => 'pl_PL',
	'pt-br' => 'pt_BR',
	'ro'    => 'ro_RO',
	'sk'    => 'sk_SK',
	'sv'    => 'sv_SE',
	'tr'    => 'tr_TR',
	'uk'    => 'uk',
	'zh'    => 'zh_TW',
	'zh-tw' => 'zh_TW',
	'zh-cn' => 'zh_CN',
);

foreach ( $branches as $branch ) {
	foreach ( $languages as $language => $code ) {

		$file = sprintf(
			'wp-plugins-%s-%s-%s.po',
			$argv[1],
			$branch,
			$language
		);
		if ( ! is_file( $file ) ) {
			continue;
		}
		$target = sprintf(
			'%s-%s.po',
			$argv[1],
			$code
		);
		rename( $file, $target );
		printf( 'rename %s to %s%s', $file, $target, PHP_EOL );
	}
}
