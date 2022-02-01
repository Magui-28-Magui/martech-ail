<?php

define("DB_HOST", "localhost");
define("DB_NAME", "martech_ail_2");
define("DB_USER", "root");
define("DB_PASS", "");

/*
define("DB_HOST", "192.168.7.182");
define("DB_NAME", "martech_ail");
define("DB_USER", "jlgc");
define("DB_PASS", "joseLuis15!");
*/


$connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if(!$connection)
{
  die("Error on DB connection :(");
}
$connection->set_charset("utf8");


