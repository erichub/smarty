<?php
require 'libs/Smarty.class.php';

$smarty = new Smarty;

$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = true;
//$smarty->cache_lifetime = 120;

$smarty->assign('toto', 'bla');

$smarty->assign('days', array('lundi','mardi','mercredi','jeudi','vendredi','samedi','dimanche'));

$smarty->assign('text', "Lorem ipsum\n\nLorem ipsum\n\nLorem ipsum");

$smarty->assign('date1', date('d-m-Y H:i:s'));
$smarty->assign('date2', time());
$smarty->assign('date3', strtotime('2015-07-17 11:00:00'));

$smarty->assign('p', 42);

$smarty->display('tpl/index.tpl');