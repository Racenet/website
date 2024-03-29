<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BasePhpbbSearchWordmatch extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('phpbb_search_wordmatch');
    $this->hasColumn('id', 'integer', 20, array('type' => 'integer', 'autoincrement' => true, 'primary' => true, 'length' => '20'));
    $this->hasColumn('post_id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'default' => '0', 'notnull' => true, 'length' => '3'));
    $this->hasColumn('word_id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'default' => '0', 'notnull' => true, 'length' => '3'));
    $this->hasColumn('title_match', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
  }

}