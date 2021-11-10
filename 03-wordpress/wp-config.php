<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'crazy' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'crazy972' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Qa4~,&&2dIrhg#9Oc_jWkb5.n,ws@8|rfYUA&g/;WZ}I%L}k!sM.hlhZx#I74GNB' );
define( 'SECURE_AUTH_KEY',  'k2$5IM[pC:B$zl.J(hp~aQSn+1-6}i/W-S{#+&Bo&p!*(AlJ:W7XVE{X{O@Xw4XO' );
define( 'LOGGED_IN_KEY',    'vvP1|]mwRr@@u![U2w7~6`-3T%@/Zv)`]snk&63d|_GR6t`jmMl9?)YO(StpB9cA' );
define( 'NONCE_KEY',        'lIq!7Z^+5hg#5=LX`EdnFga8@i!u0>W9S8)juP; 8DoH5~E^W;@fua!x=oXU(qmh' );
define( 'AUTH_SALT',        'SI+[o |jY241D]6ZSPGecPT6ge[E?lF5l&b5fBm,8X.hJ4O=CQGrw[AOd+ X%f8p' );
define( 'SECURE_AUTH_SALT', 'Yp`$,y`b~*uh~%0fw0^-qSKc)Xg<r33@ErQ?k<oyztH4=npBBa07^$VNSD9SR)S3' );
define( 'LOGGED_IN_SALT',   '+VUfMHgHr_+P&#CdU7Z `R]-a2wLStiYVl%vwe;[KSXeN;RIB6q@I#8ckXF:hk74' );
define( 'NONCE_SALT',       'pDq/2:F3G_x35^Q2gV4$K)[I:|2czteuSy=Cuyi@SO)||*k(!2DDNgEMB<S|2~RA' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'crazy_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
