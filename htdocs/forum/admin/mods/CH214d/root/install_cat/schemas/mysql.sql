
ALTER TABLE phpbb_forums DROP forum_type;
ALTER TABLE phpbb_forums ADD forum_type CHAR(1) BINARY NOT NULL DEFAULT 'f' AFTER forum_status;
ALTER TABLE phpbb_forums ADD forum_main SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER forum_status;
ALTER TABLE phpbb_forums ADD auth_global_announce TINYINT( 2 ) NOT NULL DEFAULT '0' AFTER auth_announce;
ALTER TABLE phpbb_forums ADD forum_last_title VARCHAR( 255 );
ALTER TABLE phpbb_forums ADD forum_last_poster MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_last_username VARCHAR( 25 );
ALTER TABLE phpbb_forums ADD forum_last_time INT( 11 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_link VARCHAR( 255 );
ALTER TABLE phpbb_forums ADD forum_link_hit_count TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_link_hit BIGINT(20) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_link_start INT(11) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_style MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_nav_icon VARCHAR( 255 );
ALTER TABLE phpbb_forums ADD forum_icon VARCHAR( 255 );
ALTER TABLE phpbb_forums ADD forum_topics_ppage TINYINT( 2 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_topics_sort VARCHAR( 25 );
ALTER TABLE phpbb_forums ADD forum_topics_order VARCHAR( 4 );
ALTER TABLE phpbb_forums ADD forum_index_pack TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_index_split TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_board_box TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_forums ADD forum_subs_hidden TINYINT( 1 ) NOT NULL DEFAULT '0';

ALTER TABLE phpbb_auth_access ADD auth_global_announce TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER auth_announce;

ALTER TABLE phpbb_topics ADD topic_sub_type mediumint(5) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_topics ADD topic_sub_title VARCHAR( 255 ) DEFAULT NULL;
ALTER TABLE phpbb_topics ADD topic_first_username VARCHAR( 25 );
ALTER TABLE phpbb_topics ADD topic_last_poster MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_topics ADD topic_last_username VARCHAR( 25 );
ALTER TABLE phpbb_topics ADD topic_last_time INT( 11 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_topics ADD topic_icon SMALLINT( 3 ) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE phpbb_topics ADD topic_duration INT( 11 ) NOT NULL DEFAULT '0';

ALTER TABLE phpbb_topics CHANGE topic_title topic_title VARCHAR( 255 ) NOT NULL;

ALTER TABLE phpbb_posts ADD post_icon SMALLINT( 3 ) UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE phpbb_posts_text ADD post_sub_title VARCHAR( 255 ) DEFAULT NULL;
ALTER TABLE phpbb_posts_text CHANGE post_subject post_subject VARCHAR( 255 ) DEFAULT NULL;

ALTER TABLE phpbb_users ADD user_unread_date INT( 11 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_unread_topics TEXT;
ALTER TABLE phpbb_users ADD user_keep_unreads TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_topics_sort VARCHAR( 25 ) NOT NULL;
ALTER TABLE phpbb_users ADD user_topics_order VARCHAR( 4 ) NOT NULL;
ALTER TABLE phpbb_users ADD user_smart_date TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_dst TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_board_box TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_index_pack TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_index_split TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_users ADD user_session_logged TINYINT( 1 ) NOT NULL DEFAULT '0';

ALTER TABLE phpbb_groups ADD group_status TINYINT( 2 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_groups ADD group_user_id MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE phpbb_groups ADD group_user_list TEXT NOT NULL;

ALTER TABLE phpbb_themes ADD images_pack VARCHAR( 100 ) NOT NULL DEFAULT '' AFTER style_name;
ALTER TABLE phpbb_themes ADD custom_tpls VARCHAR( 100 ) NOT NULL DEFAULT '' AFTER images_pack;

CREATE TABLE phpbb_users_cache (
  user_id MEDIUMINT(8) NOT NULL DEFAULT '0',
  cache_id VARCHAR(5) NOT NULL DEFAULT '',
  cache_data LONGTEXT,
  cache_time INT(11) DEFAULT '0',
  PRIMARY KEY  ( user_id, cache_id )
);

CREATE TABLE phpbb_presets (
  preset_id MEDIUMINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  preset_type VARCHAR(5) NOT NULL DEFAULT '',
  preset_name VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY ( preset_id )
);

CREATE TABLE phpbb_presets_data (
  preset_id MEDIUMINT(5) UNSIGNED NOT NULL DEFAULT '0',
  preset_auth VARCHAR(50) NOT NULL DEFAULT '',
  preset_value TINYINT(1) DEFAULT NULL,
  PRIMARY KEY ( preset_id, preset_auth )
);

CREATE TABLE phpbb_icons (
  icon_id MEDIUMINT(3) NOT NULL AUTO_INCREMENT,
  icon_name VARCHAR(50) NOT NULL DEFAULT '',
  icon_url VARCHAR(255) NOT NULL DEFAULT '',
  icon_auth VARCHAR(50) NOT NULL DEFAULT '',
  icon_types VARCHAR(255) DEFAULT NULL,
  icon_order MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY  (icon_id)
);

CREATE TABLE phpbb_cp_fields (
  field_id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  field_name VARCHAR(50) NOT NULL DEFAULT '',
  panel_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  field_order MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  field_attr TEXT NOT NULL DEFAULT '',
  PRIMARY KEY  (field_id),
  KEY panel_id (panel_id,field_name)
);

CREATE TABLE phpbb_cp_panels (
  panel_id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  panel_shortcut VARCHAR(30) NOT NULL DEFAULT '',
  panel_name VARCHAR(50) NOT NULL DEFAULT '',
  panel_main MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  panel_order MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  panel_file VARCHAR(50) NOT NULL DEFAULT '',
  panel_auth_type CHAR(1) BINARY NOT NULL DEFAULT '',
  panel_auth_name VARCHAR(50) NOT NULL DEFAULT '',
  panel_hidden TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY  (panel_id)
);

CREATE TABLE phpbb_cp_patches (
  patch_id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  patch_file VARCHAR(255) NOT NULL DEFAULT '',
  patch_time int(11) NOT NULL DEFAULT '0',
  patch_version VARCHAR(25) NOT NULL DEFAULT '',
  patch_date VARCHAR(8) NOT NULL DEFAULT '',
  patch_ref VARCHAR(255) NOT NULL DEFAULT '',
  patch_author VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (patch_id)
);

CREATE TABLE phpbb_auths_def (
  auth_id SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  auth_type CHAR(1) BINARY NOT NULL DEFAULT '',
  auth_name VARCHAR(50) NOT NULL DEFAULT '',
  auth_desc VARCHAR(255) NOT NULL DEFAULT '',
  auth_title TINYINT(1) NOT NULL DEFAULT '0',
  auth_order MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY  (auth_id)
);

CREATE TABLE phpbb_auths (
  group_id MEDIUMINT(8) NOT NULL DEFAULT '0',
  obj_type CHAR(1) BINARY NOT NULL DEFAULT '',
  obj_id MEDIUMINT(8) NOT NULL DEFAULT '0',
  auth_name VARCHAR(50) NOT NULL DEFAULT '',
  auth_value TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY  (group_id,obj_type,obj_id,auth_name),
  KEY group_id (group_id,obj_type),
  KEY obj_type (obj_type,obj_id),
  KEY auth_name (obj_type, auth_name)
);

CREATE TABLE phpbb_topics_attr (
  attr_id mediumint(5) unsigned NOT NULL auto_increment,
  attr_name varchar(50) NOT NULL DEFAULT '',
  attr_fname varchar(50) DEFAULT NULL,
  attr_fimg varchar(50) DEFAULT NULL,
  attr_tname varchar(50) DEFAULT NULL,
  attr_timg varchar(50) DEFAULT NULL,
  attr_order mediumint(8) NOT NULL DEFAULT '0',
  attr_field varchar(50) DEFAULT NULL,
  attr_cond char(2) DEFAULT NULL,
  attr_value smallint(3) NOT NULL DEFAULT 0,
  attr_auth varchar(50) DEFAULT NULL,
  PRIMARY KEY  (attr_id)
);

ALTER TABLE phpbb_config ADD config_static SMALLINT(1) UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE phpbb_topics ADD INDEX ( topic_last_time );
ALTER TABLE phpbb_posts ADD INDEX ( post_icon );
ALTER TABLE phpbb_groups ADD INDEX ( group_user_id );
ALTER TABLE phpbb_config ADD INDEX ( config_static );
