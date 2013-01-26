<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| CStrike-Regnick application config
| -------------------------------------------------------------------------
| This file lets you change various settings for CStrike-Regnick 
| application. 
|
*/

/**
 * Password encryption method
 *  Values: md5, none
 *
 * Default value: 'none'
 *
 * @deprecated This is changed on the fly according to `passwd_type` column from `users` table.
 */
$config['password_encrypt'] = 'none';

/**
 * Use those sexy tooltips ?
 * 
 * Default value: true
 */
$config['ui.tooltips'] = true;

/* End of file regnick.php */
/* Location: ./application/config/regnick.php */
