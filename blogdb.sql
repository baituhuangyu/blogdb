/*
SQLyog Trial v12.11 (64 bit)
MySQL - 5.6.24-log : Database - blogdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blogdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blogdb`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add auth group',7,'add_authgroup'),(20,'Can change auth group',7,'change_authgroup'),(21,'Can delete auth group',7,'delete_authgroup'),(22,'Can add auth group permissions',8,'add_authgrouppermissions'),(23,'Can change auth group permissions',8,'change_authgrouppermissions'),(24,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(25,'Can add auth permission',9,'add_authpermission'),(26,'Can change auth permission',9,'change_authpermission'),(27,'Can delete auth permission',9,'delete_authpermission'),(28,'Can add auth user',10,'add_authuser'),(29,'Can change auth user',10,'change_authuser'),(30,'Can delete auth user',10,'delete_authuser'),(31,'Can add auth user groups',11,'add_authusergroups'),(32,'Can change auth user groups',11,'change_authusergroups'),(33,'Can delete auth user groups',11,'delete_authusergroups'),(34,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(35,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(36,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(37,'Can add django admin log',13,'add_djangoadminlog'),(38,'Can change django admin log',13,'change_djangoadminlog'),(39,'Can delete django admin log',13,'delete_djangoadminlog'),(40,'Can add django content type',14,'add_djangocontenttype'),(41,'Can change django content type',14,'change_djangocontenttype'),(42,'Can delete django content type',14,'delete_djangocontenttype'),(43,'Can add django migrations',15,'add_djangomigrations'),(44,'Can change django migrations',15,'change_djangomigrations'),(45,'Can delete django migrations',15,'delete_djangomigrations'),(46,'Can add django session',16,'add_djangosession'),(47,'Can change django session',16,'change_djangosession'),(48,'Can delete django session',16,'delete_djangosession'),(49,'Can add django site',17,'add_djangosite'),(50,'Can change django site',17,'change_djangosite'),(51,'Can delete django site',17,'delete_djangosite'),(52,'Can add student',18,'add_student'),(53,'Can change student',18,'change_student'),(54,'Can delete student',18,'delete_student'),(55,'Can add blog category',19,'add_blogcategory'),(56,'Can change blog category',19,'change_blogcategory'),(57,'Can delete blog category',19,'delete_blogcategory'),(58,'Can add blog',20,'add_blog'),(59,'Can change blog',20,'change_blog'),(60,'Can delete blog',20,'delete_blog'),(61,'Can add site',21,'add_site'),(62,'Can change site',21,'change_site'),(63,'Can delete site',21,'delete_site');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$15000$wQ94AMnaQuPS$6DdDDL8+PTlG1vJan6S0oEbU6nKBYUsPmXcmOdf3ONA=','2015-05-10 16:01:10',1,'root','','','',1,1,'2015-05-10 15:31:55');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogname` varchar(512) DEFAULT NULL,
  `author` char(50) DEFAULT NULL,
  `posttime` datetime DEFAULT NULL,
  `blogcategory` varchar(512) DEFAULT NULL,
  `blogcontent` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `blog` */

insert  into `blog`(`id`,`blogname`,`author`,`posttime`,`blogcategory`,`blogcontent`) values (1,'沪指大涨近3%上4300 创业板暴涨近6%','赵雪晨','2015-05-11 14:59:37','财经','海外网5月11日电 午后开盘沪指快速拉升，银行、证券、保险小幅拉升震荡上扬，盘面上权重股搭台题材股唱戏，呈现普涨格局。截至收盘，沪指报4333.58点，上涨127.66点，涨幅3.04%；深成指报14944.88点，上涨463.63点，涨幅3.20%；中小板指报9404.14点，上涨466.40点，涨幅5.22%；创业板指报3146.83点，上涨173.23点，涨幅5.83%。\r\n\r\n大盘在大跌三日之后企稳，今日则借助降息利好再度上涨。前期沪指调整幅度过大，结束调整之后更是率先上涨，今日再度站上4300点，有企稳需求。成交量方面，沪指成交7152亿元，深市成交6985亿元，两市共成交14137亿元。\r\n\r\n盘面上看，计算机、工业4.0、在线教育、全息手机、智能汽车等板块涨幅靠前，等板块跌幅领先。全天有近300只非ST股涨停。板块方面，次新股、电子信息、医疗器械、互联网金融、电商、智能机器涨幅靠前，银行、保险、证券午后翻红拉升。\r\n\r\n有分析认为，央行为正在消化调整的股市送来流动，对股市产生了强大的提振作用。A股今日打破了预期利好兑现后见光死的魔咒，强势反弹，显示资金对后市看好。大盘有望重拾上涨趋势，继续前进，回归牛途，投资者应注意把握相关节奏和机会。\r\n\r\n周末消息面，首先，降息来袭。中国人民银行决定，自2015年5月11日起下调金融机构人民币贷款和存款基准利率。金融机构一年期贷款基准利率下调 0.25个百分点至5.1%；一年期存款基准利率下调0.25个百分点至2.25%。多数分析认为，基本面政策面护航，货币市场利率低位，牛市行情将继续演绎。\r\n\r\n其次，8日证监会按法定程序核准了20家企业的首发申请。这些企业及其承销商将分别与沪深交易所协商确定发行日程，并陆续刊登招股说明书。5月第一批新股IPO将启动，但是融资规模暂时不大，投资者不用过分担心抽血效应。\r\n\r\n再次，宏观经济方面，中国4月CPI同比增长1.5%，预期增长1.6%，前值增长1.4%。中国4月PPI同比-4.6%，预期-4.5%，前值-4.6%。未来物价水平可能有所回升，但仍处于低位。这为货币政策的宽松仍然留出了空间。\r\n\r\n技术面看，沪指日K线，MACD、慢速KD都出现死叉，短期指标需要修复。周K线看，已经跌破5周均线，在上涨趋势中，以10周均线为调整的趋势线，市场不有效跌破10周均线。我们认为，中长期走势依然是强势。\r\n\r\n整体来看，随着上周五开始巨额打新资金陆续解冻，加上大盘短期也已经出现较为严重的超跌，风险有了一定的释放，这对解冻资金有较强的吸引力，因此大盘有望延续技术性超跌反弹，一些结构性热点再度火爆也是可以预期的事情。操作策略上，仓重的投资者可借机降低仓位，适当调仓换投，仓轻的投资者则可以趁着消息面的暖意浓浓参与行情。'),(2,'央行11日起降息0.25% 宽松加码但非“QE”','周悦','2015-05-11 11:01:44','财经','摘要：央行再度出手。5月10日下午，央行宣布，自11日起，金融机构一年期贷款基准利率下调0.25个百分点至5.1%；一年期存款基准利率下调0.25个百分点至2.25%；同时结合推进利率市场化改革，将金融机构存款利率浮动区间的上限由存款基准利率的1.3倍调整为1.5倍；其他各档次贷款及存款基准利率、个人住房公积金存贷款利率相应调整。\r\n央行降息0.25%\r\n央行再度出手。5月10日下午，央行宣布，自11日起，金融机构一年期贷款基准利率下调0.25个百分点至5.1%；一年期存款基准利率下调0.25个百分点至2.25%；同时结合推进利率市场化改革，将金融机构存款利率浮动区间的上限由存款基准利率的1.3倍调整为1.5倍；其他各档次贷款及存款基准利率、个人住房公积金存贷款利率相应调整。\r\n宽松加码 但非“QE”\r\n值得注意的是，央行在此次报告中强调，降息不是QE，是为了扩大去年11月与今年3月两次降息的“战果”，进一步推动社会融资成本下行。\r\n这是继2014年11月22日和2015年2月28日后，央行在不到半年时间内第三次降息。此外，央行还在2月4日和4月19日两度全面下调各类存款类金融机构人民币存款准备金率0.5个百分点和1个百分点。央行的一些列政策使得外界对中国货币政策产生了一些诸如“强刺激”和“中国版QE（量化宽松）”等议论。\r\n中国人民银行研究局首席经济学家马骏表示，不应该将这次利率下调解读为中国版的量化宽松。将存款利率上限从基准利率的1.3倍扩大到1.5倍，其主要考量是防止“诱导性上浮”。当前流动性充裕，大部分金融机构不会用足这个1.5倍的上限。\r\n万博经济研究院院长滕泰也表示，降息不是中国版QE，是降低社会融资成本在路上。中国经济下行趋势未改，各项指标未见好转，企业实际融资成本仍然是欧美的两倍以上，持续降息是必要的。\r\n尽管非“QE”，但不少经济学家认为货币政策在适度宽松加码。兴业银行首席经济学家鲁政委表示，这标志着货币政策调控思路的重大转变：由此前的\"稳健\"操作转向实际上的\"宽松\"。以此支持融资成本的下降和地方债置换。\r\n持同样观点的还有中金公司，中金表示这是“预期之中的放松”。在上次降准100个基点之后，市场对于五月份降息有较高的预期。央行在周末公布的一季度货币执行报告显示，即使在连续的放松之后，银行贷款的平均利率虽然已经有所下降但依然高达6.5%。一季度上市非金融企业的净资产收益率（ROE）也大约只有6.5%，两者差值几乎是历史上最小的水平，表明货币政策需要进一步的放松以支持实体经济融资成本下降。这次降息预计将进一步锁定市场关于货币政策放松的预期，使得实际利率继续下行，对实体经济也将起到一定的帮助作用。\r\n让利实体经济\r\n本次降息的另一个信号是，央行着意于引导金融让利实体经济。\r\n央行谈到此次降息原因表示，国内物价水平总体处于低位，实际利率仍高于历史平均水平，为继续适当使用利率工具提供了空间。此次进一步存贷款基准利率，重点是进一步推动社会融资成本下行，支持实体经济持续健康发展。\r\n尽管央行在去年11月和今年3月已经两次降息，对降低实体经济融资成本起到了重要的引导作用，但从统计数据来看，实体经济融资成本仍偏高。\r\n上周五发布的一季度货币政策执行报告显示，3月份，非金融企业及其他部门贷款加权平均利率为6.56%，比上年12月下降0.22个百分点。但是，从利率浮动情况看，3月份，一般贷款中执行下浮利率的贷款占比为11.30%，比上年12月下降1.80个百分点；执行基准、上浮利率的贷款占比分别为19.77%和68.93%，比上年12月分别上升0.14个和1.66个百分点。一降一升抵消，使得实体经济的实际融资成本并没有显著下降。\r\n在4月时，国务院总理李克强前往国开行、工行、兴业银行考察时，多次希望银行切实降低企业融资成本，否则将加剧经济下行压力。\r\n中信证券首席经济学家彭文生表示，与别的政策工具在实际操作中容易走形或者跑冒滴漏相比，降息的操作简单效果直接，能产生立竿见影的效果。\r\n海通证券首席宏观分析师姜超也强调，当前经济整体低迷，高利率是主要风险，6.8%的贷款利率仍高于名义经济增速，亟需降低利率，缓解企业高融资成本风险。既然央行表示无须以量化宽松的方式大幅扩张流动性水平，则意味着在传统降息降准等政策方面能进一步加大力度。\r\n但也有媒体指出，虽然央行降息，商业银行是否愿意将资金贷款给实体经济？是一个重要问题。\r\n“由于利率市场化的推进，虽然降低基准利率，但存款利率并未降低，而贷款利率则由市场决定，较少受基准利率影响，因此，降息未必起到明显效果。”上海财经大学现代金融研究中心副主任奚君羊向媒体表示。\r\n利率市场化改革迈出一大步\r\n对于央行此次将存款利率上浮区间扩大到1.5倍，陆磊表示，5月1日存款保险条例的公布，为存款利率浮动区间上限进一步扩大，甚至全面取消浮动区间塑造了微观体制机制保障，在确保存款人安全的前提下，金融机构可以拥有更为广阔的自主定价空间，使市场供求在金融资源配置中起决定性作用。\r\n陆磊说，从近期数据看，国有和股份制商业银行在30%的存款利率上浮区间内，并未采取“一浮到顶”的做法，上浮50%有利于金融机构和客户综合评价自身承受力实现市场定价，交易双方关切点势必从基准利率转向风险溢价。可以说，从存贷款市场情况看，完全放开存款利率上限的时机、条件已经成熟。\r\n华创债券团队则指出，降息的同时，继续大幅放开存款上限，彰显了央行利率市场化的决心。从央行急切的上调存款上限的态度看，利率市场化的节奏后期有望加快，甚至下一次如果还有降息，可能会宣布取消存款上限，那么存款基准利率也就名存实亡了。\r\n中央财经大学中国银行业研究中心主任郭田勇在接受媒体采访时也表示，此次降息也意味着利率市场化改革又迈出一大步，此前1.3倍时已有不少银行未上浮到顶，此次1.5倍预计将有更多银行不浮到顶，这说明我国利率市场化改革正在渐近推进中走向水到渠成。'),(3,'防学生早恋围追堵截不如疏导','栾雨石','2015-05-11 15:38:05','国内','“同乘一辆自行车或电瓶车非姐弟兄妹关系，发现后回家反省7天并签试读协议，若属再犯劝其退学……”济南市济阳县第一中学为了预防学生早恋，制定了处罚规定，并让学生作出个人承诺。记者了解到，这个规定是该校某些班主任制定的，并非校方印发，学校也将就不妥之处进行调整完善。（5月10日 《法制晚报》）\r\n\r\n　　每当上下学，几个要好的同学结伴而行，同乘一辆自行车或电瓶车，这或许是再正常不过的事情了。可在济南市济阳县第一中学却成了男女生之间的非正常交往，而且还极有可能受到学校退学的处罚。虽说这并非学校制定的统一规定，但作为学校来说应该及时查处这些班级的奇葩防早恋规定。笔者觉得，作为班级的管理者在面对学生的早恋现象时，不是选择对学生积极引导，而是通过冷冰冰的规定去圈住学生，从某种层面讲何尝不是一种教育冷暴力呢？\r\n\r\n　　当下不少学校为了防止学生早恋，真可谓较较劲了脑子、想尽了办法。比如，“未经班主任同意，男女生不得相互陪同去医务室输液、看病”，“男女生不得相互请客、互发短信、互赠礼物，互传纸条、书信”，“男女生不能结对就餐、不能相互代买饭菜、不能在同一个碗里吃饭”等等。现在又出现了“非姐弟兄妹禁乘1辆自行车”的奇葩规定，看来学校防学生早恋也是蛮拼的，总想一股脑把所有学生的早恋行为列入禁令中，并制定严格的惩罚制度，这样学生就不敢越“早恋”红线半步。或许这些管理者的思路是，希望依靠严厉的规定让学生们远离早恋，能更好地完成学业。但它忽视了这样冷冰冰的“围追堵截”，只会让学生产生逆反心理，进而让学校的早恋现象愈演愈烈。\r\n\r\n　　作为初中生，表现出爱的萌动和对异性的喜欢，也是他们个人成长发展阶段的一种正常反映。从心理学角度讲，一个人爱另一个人，是一种欲望，是一种满足，也是一种快乐。笔者相信教师作为过来人，有的恐怕也经历过早恋的滋味。学生中有的所谓早恋并不是真正意义上的爱，或许有的只是一种感情上的投射，有的可能是想追求刺激，有的可能是为了逃避学习和升学压力等等。\r\n\r\n　　笔者在此当然不是支持学生早恋，只是认为，只要家长和学校能够对早恋学生加以正确引导，那么早恋就不会变成危害学生健康成长的“洪水猛兽”。在这里，笔者也希望学校的奇葩防早恋规定还是取消为好。');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`name`,`app_label`,`model`) values (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'auth group','blog','authgroup'),(8,'auth group permissions','blog','authgrouppermissions'),(9,'auth permission','blog','authpermission'),(10,'auth user','blog','authuser'),(11,'auth user groups','blog','authusergroups'),(12,'auth user user permissions','blog','authuseruserpermissions'),(13,'django admin log','blog','djangoadminlog'),(14,'django content type','blog','djangocontenttype'),(15,'django migrations','blog','djangomigrations'),(16,'django session','blog','djangosession'),(17,'django site','blog','djangosite'),(18,'student','blog','student'),(19,'blog category','blog','blogcategory'),(20,'blog','blog','blog'),(21,'site','sites','site');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2015-05-10 15:31:02'),(2,'auth','0001_initial','2015-05-10 15:31:13'),(3,'admin','0001_initial','2015-05-10 15:31:17'),(4,'blog','0001_initial','2015-05-10 15:31:18'),(5,'blog','0002_auto_20150509_2310','2015-05-10 15:31:21'),(6,'blog','0003_auto_20150510_2314','2015-05-10 15:31:21'),(7,'sessions','0001_initial','2015-05-10 15:31:22'),(8,'sites','0001_initial','2015-05-10 15:31:22');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('q3kwvtmhqlg69f5bq0iilytcrmllw6nc','ZmUwNTYzY2M3N2YxYWNlNjg1Mjk3N2NjNDI2ZjQ1MTViYzAwMjgzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0YmZlMzc5ZTg5NmQ5OTdhMjdjZWEzMzMyMmU3NTg1M2NhZTkxNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-05-24 16:01:10');

/*Table structure for table `django_site` */

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `django_site` */

insert  into `django_site`(`id`,`domain`,`name`) values (1,'example.com','example.com');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `intime` datetime NOT NULL,
  `sex` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
