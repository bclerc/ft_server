<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
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
define( 'DB_USER', 'admin' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'admin' );

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
define( 'AUTH_KEY',         'w!2JN7@;xzU%~oCQ&_lgi`TM7}Q<n_GW.~f!v.T7-NLj(t{Xz{J<]u~ddU)Zzeb+' );
define( 'SECURE_AUTH_KEY',  '|T664vIT8?L1QS(1Nd4~&ne87_pMk@]X?j>fPc{RjG~+hw|ITHyt6Zs4m,bC|?*d' );
define( 'LOGGED_IN_KEY',    '~R|yzAv+,CyXAw)b#u=)tX]x#|mv1k*]za/LEE-JXv;#Dx16ye|3Pf`E#^wnI&Z~' );
define( 'NONCE_KEY',        'IrLI;SxOT7Z,0K>{YW~1cN[OSWmt8n`R-~jU[x1<p{b=6uMR/Uy;udpO1N0PU|;+' );
define( 'AUTH_SALT',        'b,Dv#8:|Y{1{x~1I[T^ZKPOgVs^9Vm}ptX~(rt6J)NlYbwZ.z6oy*~r:~d-1eTJK' );
define( 'SECURE_AUTH_SALT', '*75k~;4yM[!W,I%Dv,`)22/bo%si|D@j6yemfSGo&vzCdJ?~(_,U$hoJb>D8~*:4' );
define( 'LOGGED_IN_SALT',   '*bu8n:[yz$,7-8^(QZp{VRf/Se/E%Uoh/3`J]7=F*/.+UMD;I!-,?~2q=%f}LfXy' );
define( 'NONCE_SALT',       '<0RJ/qi7M_Ac!g%[,+64rt8XNntA6.<4/SizU}Q9a@+%X_h@Sg=-^mp8-}&[L9?x' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

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