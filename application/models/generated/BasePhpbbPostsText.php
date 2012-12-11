<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BasePhpbbPostsText extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('phpbb_posts_text');
    $this->hasColumn('post_id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'primary' => true, 'length' => '3'));
    $this->hasColumn('bbcode_uid', 'string', 10, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '10'));
    $this->hasColumn('post_subject', 'string', 60, array('type' => 'string', 'length' => '60'));
    $this->hasColumn('post_text', 'string', 2147483647, array('type' => 'string', 'length' => '2147483647'));
  }

  public function setUp()
  {
    $this->hasMany('PhpbbPosts', array('local' => 'post_id',
                                       'foreign' => 'post_id'));
  }
}