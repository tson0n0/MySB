-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost	Database: MySB_db
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Contenu de la table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
INSERT INTO `repositories` (`type`, `dir`, `name`, `version`, `upgrade`, `file`, `url`, `active`, `on_boot`, `script`) VALUES
('ZIP', '<InstallDir>/web/apps/ru', 'ruTorrent', '3.8_2434df6', 0, 'ruTorrent_v3.8_2434df6.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/ruTorrent_v3.8_2434df6.zip', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/ru/plugins/chat', 'ruTorrent Plugin Chat', '2.0', 0, 'chat_v2.0.tar.gz', 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rutorrent-chat/chat-2.0.tar.gz', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/ru/plugins/logoff', 'ruTorrent Plugin Logoff', '1.3', 0, 'logoff_v1.3.tar.gz', 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rutorrent-logoff/logoff-1.3.tar.gz', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/ru/plugins/lbll-suite', 'ruTorrent Plugin LBLL-Suite', '0.8.1', 0, 'lbll-suite_v0.8.1.tar.gz', 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rutorrent-tadd-labels/lbll-suite_0.8.1.tar.gz', 1, 0, ''),
('SVN', '<InstallDir>/web/apps/ru/plugins/nfo', 'ruTorrent Plugin NFO', '3.6', 0, 'nfo_v3.6.zip', 'https://github.com/AceP1983/ruTorrent-plugins/trunk/nfo', 1, 0, ''),
('SVN', '<InstallDir>/web/apps/ru/plugins/checksfv', 'ruTorrent Plugin Check SFV', '3.6', 0, 'checksfv_v3.6.zip', 'https://github.com/AceP1983/ruTorrent-plugins/trunk/checksfv', 1, 0, ''),
('SVN', '<InstallDir>/web/apps/ru/plugins/showip', 'ruTorrent Plugin Show IP', '3.6', 0, 'showip_v3.6.zip', 'https://github.com/AceP1983/ruTorrent-plugins/trunk/showip', 1, 0, ''),
('SVN', '<InstallDir>/web/apps/ru/plugins/speedgraph', 'ruTorrent Plugin Speed Graph', '3.6', 0, 'speedgraph_v3.6.zip', 'https://github.com/AceP1983/ruTorrent-plugins/trunk/speedgraph', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/filemanager', 'ruTorrent Plugin FileManager', '0.09', 0, 'filemanager_v0.09.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/filemanager_v0.09.zip', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/fileupload', 'ruTorrent Plugin FileUpload', '0.02', 0, 'fileupload_v0.02.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/fileupload_v0.02.zip', 0, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/fileshare', 'ruTorrent Plugin FileShare', '1.0', 0, 'fileshare_v1.0.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/fileshare_v0.03.zip', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/mediastream', 'ruTorrent Plugin MediaStream', '0.01', 0, 'mediastream_v0.01.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/mediastream_v0.01.zip', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/ratiocolor', 'ruTorrent Plugin RatioColor', '0.5', 0, 'ratiocolor_v0.5.zip', 'https://github.com/Gyran/rutorrent-ratiocolor', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/ru/plugins/stream', 'ruTorrent Plugin Stream', '1.0', 0, 'stream_v1.0.tar.gz', 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rutorrent-stream-plugin/stream.tar.gz', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/pausewebui', 'ruTorrent Plugin Pause WebUI', '1.2', 0, 'pausewebui_v1.2.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/pausewebui_v1.2.zip', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/mobile', 'ruTorrent Plugin Mobile', '1.0', 0, 'mobile_v1.0.zip', 'https://github.com/xombiemp/rutorrentMobile.git', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/ru/plugins/instantsearch', 'ruTorrent Plugin InstantSearch', '1.0', 0, 'instantsearch_v1.0.zip', 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rutorrent-instantsearch/instantsearch.1.0.zip', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/linkseedboxmanager', 'ruTorrent Plugin Link Manager', '1.0', 0, 'linkseedboxmanager_v1.0.zip', 'https://github.com/Hydrog3n/linkseedboxmanager.git', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/linkcakebox', 'ruTorrent Plugin Link Cakebox', '1.0', 0, 'linkcakebox_v1.0.zip', 'https://github.com/Cakebox/linkcakebox.git', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/for_rsync', 'ruTorrent Plugin Mark for Rsync', '3.3', 0, 'for_rsync_v3.3.zip', 'https://github.com/InAnimaTe/for_rsync', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/sync', 'ruTorrent Plugin Sync', '0.1', 0, 'sync_v0.1.zip', 'https://github.com/ArthurJam/ruTorrent-plugin-sync.git', 0, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/theme/themes/club-QuickBox', 'ruTorrent Theme club-QuickBox', '0.1p', 0, 'club-QuickBox_v0.1p.zip', 'https://github.com/QuickBox/club-QuickBox.git', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/ru/plugins/theme/themes/MaterialDesign', 'ruTorrent Theme MaterialDesign', '0.1', 0, 'MaterialDesign_v0.1.zip', 'https://github.com/Phlooo/ruTorrent-MaterialDesign.git', 1, 0, ''),
('ZIP', '<InstallDir>/web/wolf', 'Wolf CMS', '0.8.3.1', 0, 'wolf_v0.8.3.1.zip', 'https://github.com/toulousain79/MySB_files/raw/v99.99/wolf_v0.8.3.1.zip', 1, 0, ''),
('CURL', '/usr/bin/docker-compose', 'Docker-Compose', 'latest', 0, 'docker-compose-Linux-x86_64', 'https://api.github.com/repos/docker/compose/releases/latest', 1, 0, ''),
('CURL', '/usr/bin/composer', 'Composer', 'latest', 0, 'composer.phar', 'https://api.github.com/repos/composer/composer/releases/latest', 1, 0, ''),
('TARXZ', '/usr/bin/shellcheck', 'Shellcheck', 'stable', 0, 'shellcheck-stable.linux.x86_64.tar.xz', 'https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/tt', 'Tautulli', 'latest', 0, 'Tautulli_latest.tar.gz', 'https://api.github.com/repos/Tautulli/Tautulli/releases/latest', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/libsodium', 'Libsodium', '1.0.16', 0, 'libsodium_v1.0.16.tar.gz', 'https://download.libsodium.org/libsodium/releases/libsodium-1.0.16.tar.gz', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/minisign', 'Minisign', 'v0.8.3', 0, 'minisign_v0.8.3.tar.gz', 'https://github.com/jedisct1/minisign/tarball/master', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/dnscrypt-proxy', 'DNScrypt-proxy', '1.9.5', 0, 'dnscrypt-proxy_v1.9.5.tar.gz', 'https://download.dnscrypt.org/dnscrypt-proxy/dnscrypt-proxy-1.9.5.tar.gz', 1, 0, ''),
('DEB', '<InstallDir>_files', 'Plex Media Server', 'latest', 0, 'plexmediaserver_latest.deb', 'https://plex.tv/downloads/latest/1?channel=8&build=linux-ubuntu-x86_64&distro=ubuntu', 1, 0, ''),
('WBM', '<InstallDir>_files', 'WBM Module OpenVPNadmin', '3.1', 0, 'openvpn_v3.1.wbm', 'http://www.openit.it/index.php/it/openvpnadmin/download?task=finish&cid=29&catid=7', 1, 0, ''),
('WBM', '<InstallDir>_files', 'WBM Module Nginx', '0.10', 0, 'nginx_v0.10.wbm', 'https://www.justindhoffman.com/sites/justindhoffman.com/files/nginx-0.10.wbm_.gz', 1, 0, ''),
('GIT', '<InstallDir>/sources/plowshare', 'Plowshare', '2.1.7', 0, 'Plowshare_v2.1.7.zip', 'https://github.com/mcrapet/plowshare.git', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/nodejs', 'NodeJS', '0.12.18', 0, 'node_v0.12.18.tar.gz', 'https://nodejs.org/dist/latest-v0.12.x/node-v0.12.18.tar.gz', 1, 0, ''),
('GIT', '<InstallDir>/sources/libsmbclient-php', 'libsmbclient-php', '1.0.0', 0, 'libsmbclient-php_v1.0.0.zip', 'https://github.com/eduardok/libsmbclient-php.git', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/rkhunter', 'RKHunter', '1.4.6', 0, 'rkhunter_v1.4.6.tar.gz', 'https://github.com/toulousain79/MySB_files/raw/v99.99/rkhunter_v1.4.6.tar.gz', 1, 0, ''),
('TARGZ', '<InstallDir>/sources/geoipupdate', 'GeoIPupdate', '3.1.1', 0, 'GeoIPupdate_v3.1.1.tar.gz', 'https://github.com/maxmind/geoipupdate/releases/download/v3.1.1/geoipupdate-3.1.1.tar.gz', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/sm', 'Seedbox-Manager', '3.0.1', 0, 'seedbox-manager_v3.0.1.zip', 'https://github.com/Magicalex/seedbox-manager.git', 1, 0, ''),
('GIT', '<InstallDir>/web/apps/cb', 'Cakebox-Light', '1.8.6', 0, 'cakebox-light_v1.8.6.zip', 'https://github.com/Cakebox/Cakebox-light.git', 1, 0, ''),
('TARGZ', '<InstallDir>/web/apps/la', 'LoadAvg', '2.2', 0, 'loadavg_v2.2.tar.gz', 'http://www.loadavg.com/files/loadavg.tar.gz', 1, 0, ''),
('ZIP', '<InstallDir>/web/apps/nc', 'NextCloud', '15.0.4', 0, 'nextcloud_v15.0.4.zip', 'https://download.nextcloud.com/server/releases/nextcloud-15.0.4.zip', 1, 0, '');
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
