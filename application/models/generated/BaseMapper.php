<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BaseMapper extends Doctrine_Record
{
  public function setTableDefinition()
  {
    $this->setTableName('mapper');
    $this->hasColumn('id', 'integer', 3, array('type' => 'integer', 'unsigned' => '1', 'primary' => true, 'autoincrement' => true, 'length' => '3'));
    $this->hasColumn('name', 'string', 64, array('type' => 'string', 'default' => '', 'notnull' => true, 'length' => '64'));
    $this->hasColumn('created', 'timestamp', 25, array('type' => 'timestamp', 'default' => '', 'notnull' => true, 'length' => '25'));
  }

  public function setUp()
  {
    $this->hasMany('Map', array('local' => 'id',
                                'foreign' => 'mapper_id'));
  }
}