<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BasePhpbbThemes extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('phpbb_themes');
    $this->hasColumn('themes_id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'primary' => true, 'autoincrement' => true, 'length' => '3'));
    $this->hasColumn('template_name', 'string', 30, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '30'));
    $this->hasColumn('style_name', 'string', 30, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '30'));
    $this->hasColumn('img_size_poll', 'integer', 2, array('type' => 'integer', 'unsigned' => '1', 'length' => '2'));
    $this->hasColumn('img_size_privmsg', 'integer', 2, array('type' => 'integer', 'unsigned' => '1', 'length' => '2'));
    $this->hasColumn('head_stylesheet', 'string', 100, array('type' => 'string', 'length' => '100'));
    $this->hasColumn('body_background', 'string', 100, array('type' => 'string', 'length' => '100'));
    $this->hasColumn('body_bgcolor', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('body_text', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('body_link', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('body_vlink', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('body_alink', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('body_hlink', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('tr_color1', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('tr_color2', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('tr_color3', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('tr_class1', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('tr_class2', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('tr_class3', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('th_color1', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('th_color2', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('th_color3', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('th_class1', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('th_class2', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('th_class3', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('td_color1', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('td_color2', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('td_color3', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('td_class1', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('td_class2', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('td_class3', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('fontface1', 'string', 50, array('type' => 'string', 'length' => '50'));
    $this->hasColumn('fontface2', 'string', 50, array('type' => 'string', 'length' => '50'));
    $this->hasColumn('fontface3', 'string', 50, array('type' => 'string', 'length' => '50'));
    $this->hasColumn('fontsize1', 'integer', 1, array('type' => 'integer', 'length' => '1'));
    $this->hasColumn('fontsize2', 'integer', 1, array('type' => 'integer', 'length' => '1'));
    $this->hasColumn('fontsize3', 'integer', 1, array('type' => 'integer', 'length' => '1'));
    $this->hasColumn('fontcolor1', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('fontcolor2', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('fontcolor3', 'string', 6, array('type' => 'string', 'length' => '6'));
    $this->hasColumn('span_class1', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('span_class2', 'string', 25, array('type' => 'string', 'length' => '25'));
    $this->hasColumn('span_class3', 'string', 25, array('type' => 'string', 'length' => '25'));
  }

}