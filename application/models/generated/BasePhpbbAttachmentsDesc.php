<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BasePhpbbAttachmentsDesc extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('phpbb_attachments_desc');
    $this->hasColumn('attach_id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'primary' => true, 'autoincrement' => true, 'length' => '3'));
    $this->hasColumn('physical_filename', 'string', 255, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '255'));
    $this->hasColumn('real_filename', 'string', 255, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '255'));
    $this->hasColumn('download_count', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'default' => '0', 'notnull' => true, 'length' => '3'));
    $this->hasColumn('filesize', 'integer', 4, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '4'));
    $this->hasColumn('filetime', 'integer', 4, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '4'));
    $this->hasColumn('thumbnail', 'integer', 1, array('type' => 'integer', 'default' => '0', 'notnull' => true, 'length' => '1'));
    $this->hasColumn('comment', 'string', 255, array('type' => 'string', 'length' => '255'));
    $this->hasColumn('extension', 'string', 100, array('type' => 'string', 'length' => '100'));
    $this->hasColumn('mimetype', 'string', 100, array('type' => 'string', 'length' => '100'));
  }

}