<?php get_header();
while ( have_posts() ) :
	the_post();

	do_action( 'storefront_page_before' );

	get_template_part( 'content', 'page' );

	/**
	 * Functions hooked in to storefront_page_after action
	 *
	 * @hooked storefront_display_comments - 10
	 */
	do_action( 'storefront_page_after' );

endwhile; // End of the loop.

get_footer(); ?>