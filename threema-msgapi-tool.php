#!/usr/bin/php
<?php
/**
 * @author Threema GmbH
 * @copyright Copyright (c) 2015, Threema GmbH
 */

try {
include 'threema_msgapi.phar';

	$tool = new \Threema\Console\Run($argv);
	$tool->run();
}
catch (\Threema\Core\Exception $exception) {
	echo "ERROR: ".$exception->getMessage()."\n";
	die();
}

