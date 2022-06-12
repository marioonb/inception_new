<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('DB_NAME'));

/** Database username */
define( 'DB_USER', getenv('DB_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('DB_MDP') );

/** Database hostname */
define( 'DB_HOST', getenv('DB_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'twbOojAa>=8%|4.jTRi/,a8:ik&+K-6Mv|39Y)vKf,/]nD`7[-I[.wj3v#KC*3>h');
define('SECURE_AUTH_KEY',  'H9yw?ahgExNWbi{-|bakj3KT {Mg3us7zkl$6[rV][-=(7@))dxkL[B(2UN%S?+?');
define('LOGGED_IN_KEY',    'goCh)-Sg,mz%5DQY^kOEL(7W.((ii2]rce| o%U*x+dC&C>Q?Xo`j=>x|bnqv+vA');
define('NONCE_KEY',        'sU#_}J#J?;-:mQL8.42]ry3(Zf;tHRBCh=J^@+j4@+QWedv[WUyWza}{bGc9>A/C');
define('AUTH_SALT',        '$_j[#qsK2f.f?l QrvQa_xxz%9kmQ|) t-}O-?I6yvX|o:CiP`vGe{vz-vpcYe&,');
define('SECURE_AUTH_SALT', '#tcf7E5A&BKSt=~*<3W%c2+vel.r>)h7`:9/iAr3A-AH-k{-K B(x5U-I%./Yj3A');
define('LOGGED_IN_SALT',   'u9{YtZ0ooAV+%MZkGQ&.+8sWrf-ojSX|h+s|VX(;YYd,HO  4JYLyABYci;$FjX2');
define('NONCE_SALT',       'A)^^Kc0>@3p)>1|_6FBe|=3Q)Jn$6(*9caGX{+Pl@NOm+*-}PF^N.6i+>Eu#L|S.');


/**#@-*/
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

define('WP_SITEURL', 'https://' . $_SERVER['HTTP_HOST']);
define('WP_HOME', 'https://' . $_SERVER['HTTP_HOST']);

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';