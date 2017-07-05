-- Changes since first yaamp release (already in sql.gz)

ALTER TABLE `accounts` ADD  `login`   varchar(45) DEFAULT NULL AFTER `coinsymbol`;
ALTER TABLE `accounts` ADD `hostaddr` varchar(39) DEFAULT NULL AFTER `login`;

-- Recent additions to add after db init (.gz)

ALTER TABLE `coins` ADD `hasmasternodes` TINYINT(1) NOT NULL DEFAULT '0' AFTER `hassubmitblock`;

UPDATE coins SET hasmasternodes=1 WHERE symbol IN ('DASH','BOD','CHC','MDT');

ALTER TABLE `coins` ADD `serveruser` varchar(45) NULL AFTER `rpcpasswd`;
-- Recent additions to add after db init (.gz)

ALTER TABLE `blocks` ADD `workerid` INT(11) NULL AFTER `userid`;

-- Recent additions to add after db init (.gz)

ALTER TABLE `payouts` ADD `errmsg` text NULL AFTER `tx`;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

ALTER TABLE `accounts` ADD `donation` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `no_fees`;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- NOT NULL
ALTER TABLE `shares` CHANGE COLUMN `difficulty` `difficulty` DOUBLE NOT NULL DEFAULT '0';

ALTER TABLE `shares` ADD `share_diff` DOUBLE NOT NULL DEFAULT '0' AFTER `difficulty`;


-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

ALTER TABLE `markets` ADD `disabled` TINYINT(1) NOT NULL DEFAULT '0' AFTER `coinid`;
ALTER TABLE `markets` ADD `priority` TINYINT(1) NOT NULL DEFAULT '0' AFTER `marketid`;
ALTER TABLE `markets` ADD `ontrade` DOUBLE NOT NULL DEFAULT '0' AFTER `balance`;
ALTER TABLE `markets` ADD `balancetime` INT(11) NULL AFTER `lasttraded`;
ALTER TABLE `markets` ADD `pricetime` INT(11) NULL AFTER `price2`;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- don't forget to restart memcached service to refresh the db structure

ALTER TABLE `coins` ADD `rpcssl` TINYINT(1) NOT NULL DEFAULT '0' AFTER `rpcport`;
ALTER TABLE `coins` ADD `rpccurl` TINYINT(1) NOT NULL DEFAULT '0' AFTER `rpcport`;
ALTER TABLE `coins` ADD `rpccert` VARCHAR(255) NULL AFTER `rpcssl`;
ALTER TABLE `coins` ADD `account` VARCHAR(64) NOT NULL DEFAULT '' AFTER `rpcencoding`;
ALTER TABLE `coins` ADD `payout_min` DOUBLE NULL AFTER `txfee`;
ALTER TABLE `coins` ADD `payout_max` DOUBLE NULL AFTER `payout_min`;
ALTER TABLE `coins` ADD `link_site` VARCHAR(1024) NULL AFTER `installed`;

ALTER TABLE `coins` ADD INDEX `created` (`created` DESC);

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

ALTER TABLE `accounts` CHANGE COLUMN `last_login` `last_earning` INT(10) NULL;

ALTER TABLE `accounts` ADD INDEX `earning` (`last_earning` DESC);

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql


CREATE TABLE `market_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `time` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `price` double NULL,
  `price2` double NULL,
  `balance` double NULL,
  `idmarket` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- KEYS

ALTER TABLE `market_history`
  ADD KEY `idcoin` (`idcoin`),
  ADD KEY `idmarket` (`idmarket`),
  ADD INDEX `time` (`time` DESC);

ALTER TABLE market_history ADD CONSTRAINT fk_mh_market FOREIGN KEY (`idmarket`)
  REFERENCES markets (`id`) ON DELETE CASCADE;

ALTER TABLE market_history ADD CONSTRAINT fk_mh_coin FOREIGN KEY (`idcoin`)
  REFERENCES coins (`id`) ON DELETE CASCADE;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql


CREATE TABLE `settings` (
  `param` varchar(128) NOT NULL PRIMARY KEY,
  `value` varchar(255) NULL,
  `type` varchar(8) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- don't forget to restart memcached service to refresh the db structure

ALTER TABLE `coins` ADD `watch` TINYINT(1) NOT NULL DEFAULT '0' AFTER `installed`;
ALTER TABLE `coins` ADD `multialgos` TINYINT(1) NOT NULL DEFAULT '0' AFTER `auxpow`;
ALTER TABLE `coins` ADD `stake` DOUBLE NULL AFTER `balance`;

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

CREATE TABLE `benchmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `algo` varchar(16) NOT NULL,
  `type` varchar(8) NOT NULL,
  `khps` double NULL,
  `device` varchar(80) NULL,
  `vendorid` varchar(12) NULL,
  `arch` varchar(8) NULL,
  `power` int(5) UNSIGNED NULL,
  `freq` int(8) UNSIGNED NULL,
  `memf` int(8) UNSIGNED NULL,
  `client` varchar(48) NULL,
  `os` varchar(8) NULL,
  `driver` varchar(32) NULL,
  `intensity` double NULL,
  `throughput` int(11) UNSIGNED NULL,
  `userid` int(11) NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- KEYS & Indexes

ALTER TABLE `benchmarks`
  ADD KEY `bench_userid` (`userid`),
  ADD INDEX `ndx_type` (`type`),
  ADD INDEX `ndx_algo` (`algo`),
  ADD INDEX `ndx_time` (`time` DESC);

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `idcoin` int(11) NOT NULL,
  `label` varchar(32) NULL,
  `address` varchar(128) NOT NULL,
  `lastused` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- KEYS

ALTER TABLE `bookmarks`
  ADD KEY `bookmarks_coin` (`idcoin`);

ALTER TABLE `bookmarks` ADD CONSTRAINT fk_bookmarks_coin FOREIGN KEY (`idcoin`)
  REFERENCES coins (`id`) ON DELETE CASCADE;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `idcoin` int(11) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '0',
  `description` varchar(128) NULL,
  `conditiontype` varchar(32) NULL,
  `conditionvalue` double NULL,
  `notifytype` varchar(32) NULL,
  `notifycmd` varchar(512) NULL,
  `lastchecked` int(10) UNSIGNED NOT NULL,
  `lasttriggered` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- KEYS

ALTER TABLE `notifications`
  ADD KEY `notif_coin` (`idcoin`),
  ADD INDEX `notif_checked` (`lastchecked`);

ALTER TABLE `notifications` ADD CONSTRAINT fk_notif_coin FOREIGN KEY (`idcoin`)
  REFERENCES coins (`id`) ON DELETE CASCADE;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- Devices suffix, to prevent hardcoding in functions

CREATE TABLE `bench_suffixes` (
  `vendorid` varchar(12) NOT NULL PRIMARY KEY,
  `chip` varchar(32) NULL,
  `suffix` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Family averages, will be used as perf/algo ratio

CREATE TABLE `bench_chips` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `devicetype` varchar(8) NULL,
  `vendorid` varchar(12) NULL,
  `chip` varchar(32) NULL,
  `year` int(4) UNSIGNED NULL,
  `maxtdp` double NULL,
  `blake_rate` double NULL,
  `blake_power` double NULL,
  `x11_rate` double NULL,
  `x11_power` double NULL,
  `sha_rate` double NULL,
  `sha_power` double NULL,
  `scrypt_rate` double NULL,
  `scrypt_power` double NULL,
  `dag_rate` double NULL,
  `dag_power` double NULL,
  `lyra_rate` double NULL,
  `lyra_power` double NULL,
  `neo_rate` double NULL,
  `neo_power` double NULL,
  `url` varchar(255) NULL,
  `features` varchar(255) NULL,
  `perfdata` text NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `bench_chips`
  ADD INDEX `ndx_chip_type` (`devicetype`),
  ADD INDEX `ndx_chip_name` (`chip`);

ALTER TABLE `benchmarks`
  ADD `idchip` int(11) NULL AFTER `vendorid`,
  ADD `chip` varchar(32) NULL AFTER `vendorid`,
  ADD `mem` int(8) NULL AFTER `arch`;

ALTER TABLE `benchmarks`
  ADD KEY `ndx_chip` (`idchip`);

ALTER TABLE `benchmarks` ADD CONSTRAINT fk_bench_chip FOREIGN KEY (`idchip`)
  REFERENCES `bench_chips` (`id`) ON DELETE RESTRICT;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- don't forget to restart memcached service to refresh the db structure

ALTER TABLE `coins` ADD `powend_height` INT(11) NULL AFTER `target_height`;
ALTER TABLE `coins` ADD `mature_blocks` INT(11) NULL AFTER `reward_mul`;
ALTER TABLE `coins` ADD `block_time` INT(11) NULL AFTER `payout_max`;
ALTER TABLE `coins` ADD `available` DOUBLE NULL AFTER `balance`;
ALTER TABLE `coins` ADD `cleared` DOUBLE NULL AFTER `balance`;
ALTER TABLE `coins` ADD `immature` DOUBLE NULL AFTER `balance`;
ALTER TABLE `coins` ADD `max_miners` INT(11) NULL AFTER `visible`;
ALTER TABLE `coins` ADD `max_shares` INT(11) NULL AFTER `max_miners`;
-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- don't forget to restart memcached service to refresh the db structure

ALTER TABLE `benchmarks` ADD `realfreq` INT(8) UNSIGNED NULL AFTER `freq`;
ALTER TABLE `benchmarks` ADD `realmemf` INT(8) UNSIGNED NULL AFTER `memf`;
ALTER TABLE `benchmarks` ADD `plimit` INT(5) UNSIGNED NULL AFTER `power`;
ALTER TABLE `benchmarks` DROP COLUMN `mem`;

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

ALTER TABLE `earnings` ADD UNIQUE INDEX `ndx_user_block`(`userid`, `blockid`);

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- Adds binary type to be case sensitive
ALTER TABLE accounts CHANGE `username` `username` varchar(128) binary NOT NULL;

-- Remember last coin id swap
ALTER TABLE accounts ADD `swap_time` INT(10) UNSIGNED NULL AFTER `coinsymbol`;

-- Recent additions to add after db init (.gz)
-- mysql yaamp -p < file.sql

-- Store coin id used on payment, memoid could be used later for xrp

ALTER TABLE `payouts`
  ADD `idcoin` int(11) NULL AFTER `account_id`,
  ADD `memoid` varchar(128) NULL AFTER `tx`;

ALTER TABLE `payouts` DROP COLUMN `account_ids`;

ALTER TABLE `payouts`
  ADD KEY `payouts_coin` (`idcoin`);

ALTER TABLE `payouts` ADD CONSTRAINT fk_payouts_coin FOREIGN KEY (`idcoin`)
  REFERENCES coins (`id`) ON DELETE CASCADE;

ALTER TABLE `payouts` ADD CONSTRAINT fk_payouts_account FOREIGN KEY (`account_id`)
  REFERENCES accounts (`id`) ON DELETE CASCADE;

