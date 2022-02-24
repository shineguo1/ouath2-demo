/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80019
Source Host           : 10.0.70.100:3306
Source Database       : oauth2

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-02-24 18:34:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `client_details`
-- ----------------------------
DROP TABLE IF EXISTS `client_details`;
CREATE TABLE `client_details` (
`ID`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID' ,
`CLIENT_ID`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`RESOURCE_IDS`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`CLIENT_SECRET`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`SCOPE`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`AUTHORIZED_GRANT_TYPES`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`WEB_SERVER_REDIRECT_URI`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`AUTHORITIES`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'implicit,client_credentials妯″紡璇ュ瓧娈靛繀椤昏璁剧疆瀵瑰簲鐨勬潈闄愬€硷紝璇︾粏瑙乻ecurity-oauth2鏂囨。璇存槑' ,
`ACCESS_TOKEN_VALIDITY`  int NULL DEFAULT NULL ,
`REFRESH_TOKEN_VALIDITY`  int NULL DEFAULT NULL ,
`ADDITIONAL_INFORMATION`  varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`AUTOAPPROVE`  tinyint(1) NULL DEFAULT NULL ,
`DELETE_FLAG`  bit(1) NULL DEFAULT NULL ,
`CREATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍒涘缓鑰?' ,
`CREATED_AT`  timestamp NULL DEFAULT NULL COMMENT '鍒涘缓鏃堕棿' ,
`UPDATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '淇敼鑰?' ,
`UPDATED_AT`  timestamp NULL DEFAULT NULL COMMENT '淇敼鏃堕棿' ,
PRIMARY KEY (`ID`),
UNIQUE INDEX `IDX_CLIENT_ID` (`CLIENT_ID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='字段说明见spring-security-oauth2官方文档的oauth_client_details表'
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of client_details
-- ----------------------------
BEGIN;
INSERT INTO `client_details` VALUES ('1', 'myClient', 'myResource', '$2a$10$7MKoq09uZe95fWNJGlVl7uQPPP9UEK2ZmXbWnR90iMNUBBEOBd6e.', 'all,account,pay,user,dept', 'authorization_code,password,refresh_token,implicit,client_credentials', 'http://www.baidu.com,http://www.sina.com/aabc/def?num=1', null, '1468', null, null, '0', '', 'SYSTEM', '2022-02-21 02:33:10', 'SYSTEM', '2022-02-21 02:33:10');
COMMIT;

-- ----------------------------
-- Table structure for `client_interface`
-- ----------------------------
DROP TABLE IF EXISTS `client_interface`;
CREATE TABLE `client_interface` (
`ID`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID' ,
`CLIENT_ID`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '瀹㈡埛绔唬鐮両D锛堝敮涓€閿紝闈炰富閿級' ,
`METHOD`  varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '璇锋眰鏂瑰紡GET/POST/PUT/DELETE' ,
`URL`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '璇锋眰璺緞' ,
`DESCRIPTION`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '閹诲繗鍫?' ,
`CREATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍒涘缓鑰?' ,
`CREATED_AT`  timestamp NULL DEFAULT NULL COMMENT '鍒涘缓鏃堕棿' ,
`UPDATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '淇敼鑰?' ,
`UPDATED_AT`  timestamp NULL DEFAULT NULL COMMENT '淇敼鏃堕棿' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='客户端接口表'
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of client_interface
-- ----------------------------
BEGIN;
INSERT INTO `client_interface` VALUES ('1', 'myClient', 'GET', 'http://www.baidu.com/user', null, null, null, null, null), ('2', 'myClient', null, 'http://www.baidu.com/dept', null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for `client_module`
-- ----------------------------
DROP TABLE IF EXISTS `client_module`;
CREATE TABLE `client_module` (
`ID`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID' ,
`CLIENT_ID`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '瀹㈡埛绔唬鐮両D锛堝敮涓€閿紝闈炰富閿級' ,
`NAME`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '妯″潡鍚?' ,
`CODE`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '妯″潡浠ｇ爜' ,
`DESCRIPTION`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '閹诲繗鍫?' ,
`CREATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍒涘缓鑰?' ,
`CREATED_AT`  timestamp NULL DEFAULT NULL COMMENT '鍒涘缓鏃堕棿' ,
`UPDATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '淇敼鑰?' ,
`UPDATED_AT`  timestamp NULL DEFAULT NULL COMMENT '淇敼鏃堕棿' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='客户端模块表'
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of client_module
-- ----------------------------
BEGIN;
INSERT INTO `client_module` VALUES ('1', 'myClient', '用户', 'USER', null, null, null, null, null), ('2', 'myClient', '部门', 'DEPT', null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for `client_scope_rel`
-- ----------------------------
DROP TABLE IF EXISTS `client_scope_rel`;
CREATE TABLE `client_scope_rel` (
`ID`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID' ,
`TYPE`  varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍏宠仈绫诲瀷锛歁ODULE, INTERFACE' ,
`REL_ID`  bigint NULL DEFAULT NULL COMMENT '鍏宠仈琛?CLIENT_MODULE, CLIENT_INTERFACE)涓婚敭' ,
`SCOPE`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鎺堟潈鑼冨洿' ,
`CREATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍒涘缓鑰?' ,
`CREATED_AT`  timestamp NULL DEFAULT NULL COMMENT '鍒涘缓鏃堕棿' ,
`UPDATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '淇敼鑰?' ,
`UPDATED_AT`  timestamp NULL DEFAULT NULL COMMENT '淇敼鏃堕棿' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='客户端授权范围关系表'
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of client_scope_rel
-- ----------------------------
BEGIN;
INSERT INTO `client_scope_rel` VALUES ('1', 'INTERFACE', '1', 'user', null, null, null, null), ('2', 'INTERFACE', '1', 'all', null, null, null, null), ('3', 'INTERFACE', '2', 'dept', null, null, null, null), ('4', 'INTERFACE', '2', 'all', null, null, null, null), ('5', 'MODULE', '1', 'user', null, null, null, null), ('6', 'MODULE', '1', 'all', null, null, null, null), ('7', 'MODULE', '2', 'dept', null, null, null, null), ('8', 'MODULE', '2', 'all', null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for `oauth_access_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
`token_id`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`token`  blob NULL ,
`authentication_id`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_name`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`client_id`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`authentication`  blob NULL ,
`refresh_token`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`token_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
BEGIN;
INSERT INTO `oauth_access_token` VALUES ('ecfd728859a759271eb87592a5a8e08c', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F2B4D50E2787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002462383561326631382D306464332D346161312D626661642D3034373861366639353131637371007E000977080000017FC59D7D9978737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000001740004757365727874000662656172657274002465616664666265332D623965302D346633372D396566362D666466373830346531636533, 'f74beba4b3c1808d68cc62dd67130336', 'bob', 'myClient', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000002120200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000C524F4C455F44454641554C547871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E001478707400086D79436C69656E74737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F64657400066C36657A586E74000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000573636F7065740003616C6C74000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740014687474703A2F2F7777772E62616964752E636F6D740009636C69656E745F69647400086D79436C69656E7478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000017400047573657278017371007E002B770C000000103F400000000000017371007E000D74000C524F4C455F44454641554C54787371007E001A3F400000000000007708000000100000000078740014687474703A2F2F7777772E62616964752E636F6D737200396F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E546F6B656E52657175657374D62A84B8CF38F8010200014C00096772616E745479706571007E000E7871007E00157400086D79436C69656E747371007E00187371007E001A3F400000000000067708000000080000000474000D726566726573685F746F6B656E74002462383561326631382D306464332D346161312D626661642D30343738613666393531316374000D636C69656E745F73656372657474000631323334353674000A6772616E745F7479706574000D726566726573685F746F6B656E740009636C69656E745F696471007E0035787371007E00287371007E002A770C000000103F400000000000007871007E003D7371007E002B770C000000103F4000000000000174000A6D795265736F75726365787371007E002B770C000000103F40000000000001740004636F6465787372005B6F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E707265617574682E50726541757468656E7469636174656441757468656E7469636174696F6E546F6B656E00000000000002120200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E00487074000073720049706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E73656375726974792E70726F76696465722E7573657264657461696C732E417574685573657250F375A6F3A857850200024C000B617574686F72697469657371007E00044C000B7573657244657461696C7374003B4C706572732F67786A2F73656375726974792F6F61757468322F6672616D65776F726B2F636F72652F656E746974792F646F732F55736572444F3B78707371007E000B0000000177040000000171007E000F7873720039706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E636F72652E656E746974792E646F732E55736572444F3F17F528A71535E10200034C000870617373776F726471007E000E4C000673746174757371007E000E4C0008757365726E616D6571007E000E78720035706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E6D7962617469732E42617365456E7469747900000000000000010200054C00096372656174656441747400104C6A6176612F7574696C2F446174653B4C000963726561746564427971007E000E4C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000975706461746564417471007E00504C000975706461746564427971007E000E78707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017EFB604F207874000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017371007E005377080000017EFB604F207874000653595354454D74003C243261243130244B61663065625A4F31496B5379732F674F6B764D7175317173384448777152534C5A564D33346D726254327A724C665A75313662697400064E4F524D414C740003626F62, '600d2dbe76d545ce3a592f2861349505');
COMMIT;

-- ----------------------------
-- Table structure for `oauth_refresh_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
`token_id`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`token`  blob NULL ,
`authentication`  blob NULL ,
PRIMARY KEY (`token_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
BEGIN;
INSERT INTO `oauth_refresh_token` VALUES ('600d2dbe76d545ce3a592f2861349505', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002462383561326631382D306464332D346161312D626661642D3034373861366639353131637372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017FC59D7D9978, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000002120200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000C524F4C455F44454641554C547871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E001478707400086D79436C69656E74737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F64657400066C36657A586E74000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000573636F7065740003616C6C74000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740014687474703A2F2F7777772E62616964752E636F6D740009636C69656E745F69647400086D79436C69656E7478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000017400047573657278017371007E002B770C000000103F400000000000017371007E000D74000C524F4C455F44454641554C54787371007E001A3F400000000000007708000000100000000078740014687474703A2F2F7777772E62616964752E636F6D707371007E002B770C000000103F4000000000000174000A6D795265736F75726365787371007E002B770C000000103F40000000000001740004636F6465787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000002120200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E003A707073720049706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E73656375726974792E70726F76696465722E7573657264657461696C732E417574685573657250F375A6F3A857850200024C000B617574686F72697469657371007E00044C000B7573657244657461696C7374003B4C706572732F67786A2F73656375726974792F6F61757468322F6672616D65776F726B2F636F72652F656E746974792F646F732F55736572444F3B78707371007E000B000000017704000000017371007E000D74000C524F4C455F44454641554C547873720039706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E636F72652E656E746974792E646F732E55736572444F3F17F528A71535E10200034C000870617373776F726471007E000E4C000673746174757371007E000E4C0008757365726E616D6571007E000E78720035706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E6D7962617469732E42617365456E7469747900000000000000010200054C00096372656174656441747400104C6A6176612F7574696C2F446174653B4C000963726561746564427971007E000E4C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000975706461746564417471007E00434C000975706461746564427971007E000E78707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017EFB604F207874000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017371007E004677080000017EFB604F207874000653595354454D74003C243261243130244B61663065625A4F31496B5379732F674F6B764D7175317173384448777152534C5A564D33346D726254327A724C665A75313662697400064E4F524D414C740003626F62), ('a011a98e527a1eae61a4521cc48b453c', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002433313335343531362D623930622D343064662D613338312D6661313833333666386431657372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017FBB5E9A6C78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000002120200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000C524F4C455F44454641554C547871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E001478707400086D79436C69656E74737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F6465740006496D4C356A5074000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000573636F7065740003616C6C74000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740014687474703A2F2F7777772E62616964752E636F6D740009636C69656E745F69647400086D79436C69656E7478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000174000370617978017371007E002B770C000000103F400000000000017371007E000D74000C524F4C455F44454641554C54787371007E001A3F400000000000007708000000100000000078740014687474703A2F2F7777772E62616964752E636F6D707371007E002B770C000000103F4000000000000174000A6D795265736F75726365787371007E002B770C000000103F40000000000001740004636F6465787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000002120200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E003A707073720049706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E73656375726974792E70726F76696465722E7573657264657461696C732E41757468557365724F1B1298F589CEEE0200024C000B617574686F72697469657371007E00044C000B7573657244657461696C7374003B4C706572732F67786A2F73656375726974792F6F61757468322F6672616D65776F726B2F636F72652F656E746974792F64616F2F55736572444F3B78707371007E000B000000017704000000017371007E000D74000C524F4C455F44454641554C547873720039706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E636F72652E656E746974792E64616F2E55736572444FE1279CDC2036D1CB0200034C000870617373776F726471007E000E4C000673746174757371007E000E4C0008757365726E616D6571007E000E78720035706572732E67786A2E73656375726974792E6F61757468322E6672616D65776F726B2E6D7962617469732E42617365456E7469747900000000000000010200054C00096372656174656441747400104C6A6176612F7574696C2F446174653B4C000963726561746564427971007E000E4C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000975706461746564417471007E00434C000975706461746564427971007E000E78707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017EFB604F207874000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017371007E004677080000017EFB604F207874000653595354454D74003C243261243130244B61663065625A4F31496B5379732F674F6B764D7175317173384448777152534C5A564D33346D726254327A724C665A75313662697400064E4F524D414C740003626F62);
COMMIT;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`ID`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID' ,
`USER_NAME`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鐢ㄦ埛鍚?' ,
`PASSWORD`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '瀵嗙爜' ,
`STATUS`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鐢ㄦ埛鐘舵€?' ,
`CREATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '鍒涘缓鑰?' ,
`CREATED_AT`  timestamp NULL DEFAULT NULL COMMENT '鍒涘缓鏃堕棿' ,
`UPDATED_BY`  varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '淇敼鑰?' ,
`UPDATED_AT`  timestamp NULL DEFAULT NULL COMMENT '淇敼鏃堕棿' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'bob', '$2a$10$Kaf0ebZO1IkSys/gOkvMqu1qs8DHwqRSLZVM34mrbT2zrLfZu16bi', 'NORMAL', 'SYSTEM', '2022-02-15 03:15:00', 'SYSTEM', '2022-02-15 03:15:00'), ('2', 'tom', '$2a$10$Kaf0ebZO1IkSys/gOkvMqu1qs8DHwqRSLZVM34mrbT2zrLfZu16bi', 'NORMAL', 'SYSTEM', '2022-02-15 09:04:56', 'SYSTEM', '2022-02-15 09:04:56');
COMMIT;

-- ----------------------------
-- Auto increment value for `client_details`
-- ----------------------------
ALTER TABLE `client_details` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `client_interface`
-- ----------------------------
ALTER TABLE `client_interface` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `client_module`
-- ----------------------------
ALTER TABLE `client_module` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `client_scope_rel`
-- ----------------------------
ALTER TABLE `client_scope_rel` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `user`
-- ----------------------------
ALTER TABLE `user` AUTO_INCREMENT=3;