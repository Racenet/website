<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BasePhpbbAuthAccess extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('phpbb_auth_access');
    $this->hasColumn('id', 'integer', 20, array('type' => 'integer', 'autoincrement' => true, 'primary' => true, 'length' => '20'));
    $this->hasColumn('group_id', 'integer', 3, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '3'));
    $this->hasColumn('forum_id', 'integer', 2, array('type' => 'integer', 'unsigned' => '1', 'default' => '0', 'notnull' => true, 'length' => '2'));
    $this->hasColumn('auth_view', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_read', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_post', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_reply', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_edit', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_delete', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_sticky', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_announce', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_vote', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_pollcreate', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_attachments', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_mod', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('auth_download', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
  }

}