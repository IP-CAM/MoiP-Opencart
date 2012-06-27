<?php

//Inclui as variaveis globais
require_once 'config.php';
//Inclui o startup
require_once DIR_SYSTEM . 'startup.php';

//Conecta ao banco de dados
$db = new DB (DB_DRIVER, DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);

//Cria tabela MOIP_NASP
$db->query('CREATE TABLE IF NOT EXISTS `moip_nasp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transacao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `status_pagamento` int(11) NOT NULL,
  `cod_moip` int(11) NOT NULL,
  `forma_pagamento` int(11) NOT NULL,
  `tipo_pagamento` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_consumidor` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33;');

echo "Tabela criada com sucesso!!!";
unlink('moip_install_db.php');

?>