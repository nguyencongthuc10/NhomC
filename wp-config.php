<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nuochoa' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'y-&I^c0:/hjglV}9(+h/r9[U^suhy|yP NsU!!<#{#YV+6/>Y3L-U!-sB`y`?ZD7' );
define( 'SECURE_AUTH_KEY',  'f0$-WxR4,WM=fgRsxcc=Hb<26~6Q$&T+]&_B_<&c}Zw7^*luVH-NiRhsJ1q=$?P^' );
define( 'LOGGED_IN_KEY',    'vC+oT7lW:}SL2{&<G7AZH{#x_C:h!tPeHZ6[;_~ X~Vq!_>=a=Dj}HVfdRd$AcOA' );
define( 'NONCE_KEY',        'yHjDA/&8jY2(}1^05vl`3n.h $B}utf6G&(G_k1k*8z-=JugTbQ_eOwfu5OJ>Zq^' );
define( 'AUTH_SALT',        '[c;Wj6{=`|M>V{V:zEK+HEH>NC<GpRZDv>&w{eyCsiGdHqf/J.|2a)>Fw NmgXAi' );
define( 'SECURE_AUTH_SALT', '91.a=Eg?6LvI[h>p/~zdfhcn]-?#&+};y;I3~=)<?v YE*Ycm^6JWiDP9eDNYOX-' );
define( 'LOGGED_IN_SALT',   'Ko&,tMCq>m(PA2#Od#_,L</^(cDz#;qFWZNovH8v}yEnR^`JDMr63SkIsdWE<Bg*' );
define( 'NONCE_SALT',       '1LF=uYfoaENdauRI`]Q%EzjE~kFbTIoQSW9=?Y)QFDaga[h 2Q&Xwx35Z}|^%Eco' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
