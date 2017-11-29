#
# Don't forget to replace {%website_table%} token with your table name of the website configuration (id in the sample)
#
#'websites' => array(
#        'id' => array(
#            'url' => 'site_url',
#            'table' => 'id')),
#
# Create these six tables for every website you want to add
#

CREATE TABLE `pages_desktop_{%website_table%}` (
  `page` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`page`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pages_mobile_{%website_table%}` (
  `page` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`page`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pages_tablet_{%website_table%}` (
  `page` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`page`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `queries_desktop_{%website_table%}` (
  `query` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`query`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `queries_mobile_{%website_table%}` (
  `query` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`query`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `queries_tablet_{%website_table%}` (
  `query` varchar(250) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`query`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `countries_desktop_{%website_table%}` (
  `country` varchar(3) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`country`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `countries_mobile_{%website_table%}` (
  `country` varchar(3) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`country`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `countries_tablet_{%website_table%}` (
  `country` varchar(3) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`country`,`date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `everything_{%website_table%}` (
  `query` varchar(250) NOT NULL,
  `page` varchar(250) NOT NULL,
  `country` varchar(3) NOT NULL,
  `device` varchar(7) NOT NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `position` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `UNIQUE` (`query`, `page`, `country`, `device`, `date`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

