/*
Navicat PGSQL Data Transfer

Source Server         : postgres
Source Server Version : 90603
Source Host           : localhost:5432
Source Database       : producthuntdb
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90603
File Encoding         : 65001

Date: 2020-11-30 15:37:02
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 21
 CACHE 1;
SELECT setval('"public"."auth_permission_id_seq"', 21, true);

-- ----------------------------
-- Sequence structure for auth_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."auth_user_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for auth_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."django_admin_log_id_seq"', 5, true);

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."django_content_type_id_seq"', 7, true);

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;
SELECT setval('"public"."django_migrations_id_seq"', 15, true);

-- ----------------------------
-- Sequence structure for products_product_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."products_product_id_seq";
CREATE SEQUENCE "public"."products_product_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."products_product_id_seq"', 3, true);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add product', '7', 'add_product');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change product', '7', 'change_product');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete product', '7', 'delete_product');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"password" varchar(128) COLLATE "default" NOT NULL,
"last_login" timestamptz(6),
"is_superuser" bool NOT NULL,
"username" varchar(150) COLLATE "default" NOT NULL,
"first_name" varchar(30) COLLATE "default" NOT NULL,
"last_name" varchar(150) COLLATE "default" NOT NULL,
"email" varchar(254) COLLATE "default" NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', 'pbkdf2_sha256$100000$khWgfpwNqxeI$QwHerrVXd71wUA7NpKve+3F97jovwTCJ1c21I7bBv9o=', '2020-11-30 08:11:59.376876+05:45', 'f', 'user', '', '', '', 'f', 't', '2019-01-29 15:12:00+05:45');
INSERT INTO "public"."auth_user" VALUES ('2', 'pbkdf2_sha256$100000$eerVcGnDJ6tc$3zpdLp0648t54J7SM9DBX31SkGXA5IWTF3XiKRinSK0=', '2020-11-30 08:09:26+05:45', 't', 'admin', 'Utsav', 'Joshi', 'admin@gmail.com', 't', 't', '2019-01-29 15:18:58+05:45');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"object_id" text COLLATE "default",
"object_repr" varchar(200) COLLATE "default" NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text COLLATE "default" NOT NULL,
"content_type_id" int4,
"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES ('1', '2020-11-30 08:10:16.376097+05:45', '2', 'admin', '2', '[{"changed": {"fields": ["username", "first_name", "last_name", "email"]}}]', '4', '2');
INSERT INTO "public"."django_admin_log" VALUES ('2', '2020-11-30 08:10:42.333014+05:45', '2', 'admin', '2', '[{"changed": {"fields": ["password"]}}]', '4', '2');
INSERT INTO "public"."django_admin_log" VALUES ('3', '2020-11-30 08:10:47.634306+05:45', '2', 'admin', '2', '[]', '4', '2');
INSERT INTO "public"."django_admin_log" VALUES ('4', '2020-11-30 08:11:10.364481+05:45', '1', 'user', '2', '[{"changed": {"fields": ["username"]}}]', '4', '2');
INSERT INTO "public"."django_admin_log" VALUES ('5', '2020-11-30 08:11:37.08125+05:45', '1', 'user', '2', '[{"changed": {"fields": ["password"]}}]', '4', '2');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"app_label" varchar(100) COLLATE "default" NOT NULL,
"model" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('2', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('3', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('4', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('6', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('7', 'products', 'product');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
"id" int4 DEFAULT nextval('django_migrations_id_seq'::regclass) NOT NULL,
"app" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2019-01-29 12:22:37.157771+05:45');
INSERT INTO "public"."django_migrations" VALUES ('2', 'auth', '0001_initial', '2019-01-29 12:22:38.06482+05:45');
INSERT INTO "public"."django_migrations" VALUES ('3', 'admin', '0001_initial', '2019-01-29 12:22:38.199413+05:45');
INSERT INTO "public"."django_migrations" VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-01-29 12:22:38.209084+05:45');
INSERT INTO "public"."django_migrations" VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-01-29 12:22:38.228035+05:45');
INSERT INTO "public"."django_migrations" VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-01-29 12:22:38.234019+05:45');
INSERT INTO "public"."django_migrations" VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-01-29 12:22:38.243715+05:45');
INSERT INTO "public"."django_migrations" VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-01-29 12:22:38.251697+05:45');
INSERT INTO "public"."django_migrations" VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-01-29 12:22:38.262701+05:45');
INSERT INTO "public"."django_migrations" VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-01-29 12:22:38.265384+05:45');
INSERT INTO "public"."django_migrations" VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-01-29 12:22:38.275391+05:45');
INSERT INTO "public"."django_migrations" VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-01-29 12:22:38.327324+05:45');
INSERT INTO "public"."django_migrations" VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-01-29 12:22:38.338297+05:45');
INSERT INTO "public"."django_migrations" VALUES ('14', 'sessions', '0001_initial', '2019-01-29 12:22:38.447979+05:45');
INSERT INTO "public"."django_migrations" VALUES ('15', 'products', '0001_initial', '2019-01-29 16:40:39.252131+05:45');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) COLLATE "default" NOT NULL,
"session_data" text COLLATE "default" NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('wthu1ftbraww8au8804athq38aogo99p', 'NDI2MTdjMWZkYzhiY2JkYzIwYzgxZWM5YzYxNDViNzYxY2QzZWNjYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjNkOTAzMTZjMmQzNWE5NTdkNTYxYzFmNGFlZTU4MDhhMzVhNDQ2In0=', '2019-02-13 15:10:06.743962+05:45');

-- ----------------------------
-- Table structure for products_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."products_product";
CREATE TABLE "public"."products_product" (
"id" int4 DEFAULT nextval('products_product_id_seq'::regclass) NOT NULL,
"title" varchar(255) COLLATE "default" NOT NULL,
"url" text COLLATE "default" NOT NULL,
"pub_date" timestamptz(6) NOT NULL,
"votes_total" int4 NOT NULL,
"image" varchar(100) COLLATE "default" NOT NULL,
"icon" varchar(100) COLLATE "default" NOT NULL,
"body" text COLLATE "default" NOT NULL,
"hunter_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of products_product
-- ----------------------------
INSERT INTO "public"."products_product" VALUES ('2', 'Google', 'http://google.com', '2019-01-29 23:28:14.777492+05:45', '3', 'images/shutterstock-724339942_rlXLFAh.jpg', 'images/google-07-132_fvJJ9dZ.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1');
INSERT INTO "public"."products_product" VALUES ('3', 'Apple', 'http://apple.com', '2019-01-30 17:39:31.899357+05:45', '5', 'images/800px-Aerial_view_of_Apple_Park_dllu.jpg', 'images/800px-Apple_logo_black.svg.png', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. It is considered one of the Big Four of technology along with Amazon, Google and Facebook.

The company''s hardware products include the iPhone smartphone, the iPad tablet computer, the Mac personal computer, the iPod portable media player, the Apple Watch smartwatch, the Apple TV digital media player, and the HomePod smart speaker. Apple''s software includes the macOS and iOS operating systems, the iTunes media player, the Safari web browser, and the iLife and iWork creativity and productivity suites, as well as professional applications like Final Cut Pro, Logic Pro, and Xcode. Its online services include the iTunes Store, the iOS App Store and Mac App Store, Apple Music, and iCloud.

Apple was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne in April 1976 to develop and sell Wozniak''s Apple I personal computer. It was incorporated as Apple Computer, Inc., in January 1977, and sales of its computers, including the Apple II, grew quickly. Within a few years, Jobs and Wozniak had hired a staff of computer designers and had a production line. Apple went public in 1980 to instant financial success. Over the next few years, Apple shipped new computers featuring innovative graphical user interfaces, such as the original Macintosh in 1984, and Apple''s marketing commercials for its products received widespread critical acclaim. However, the high price tag of its products and limited software titles caused problems, as did power struggles between executives at the company. In 1985, Wozniak stepped away from Apple, while Jobs resigned and founded a new company—NeXT—with former Apple employees.', '1');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "django_migrations"."id";
ALTER SEQUENCE "public"."products_product_id_seq" OWNED BY "products_product"."id";

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree ("name" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree ("content_type_id");

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree ("username" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING btree ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING btree ("group_id");

-- ----------------------------
-- Uniques structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING btree ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree ("user_id");

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK ((action_flag >= 0));

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree ("session_key" "pg_catalog"."varchar_pattern_ops");
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree ("expire_date");

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Indexes structure for table products_product
-- ----------------------------
CREATE INDEX "products_product_hunter_id_9c375c1e" ON "public"."products_product" USING btree ("hunter_id");

-- ----------------------------
-- Primary Key structure for table products_product
-- ----------------------------
ALTER TABLE "public"."products_product" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."products_product"
-- ----------------------------
ALTER TABLE "public"."products_product" ADD FOREIGN KEY ("hunter_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
