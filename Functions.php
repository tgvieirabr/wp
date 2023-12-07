<?php
// Adiciona Normalize.css usando Sass
function add_normalize_css() {
    wp_enqueue_style('normalize-styles', get_template_directory_uri() . '/css/normalize.css', array(), '7.0.0');
}

// Adiciona estilos Sass compilados
function add_custom_styles() {
    $version = filemtime(get_template_directory() . '/css/style.css'); // Pega a última data de modificação do arquivo
    wp_enqueue_style('custom-styles', get_template_directory_uri() . '/css/style.css', array(), $version, 'all');
}

// Enfileira os estilos
add_action('wp_enqueue_scripts', 'add_normalize_css');
add_action('wp_enqueue_scripts', 'add_custom_styles');

// Registra um novo sidebar chamado 'sidebar'
function add_widget_support() {
    register_sidebar(array(
        'name'          => 'Sidebar',
        'id'            => 'sidebar',
        'before_widget' => '<div>',
        'after_widget'  => '</div>',
        'before_title'  => '<h2>',
        'after_title'   => '</h2>',
    ));
}

// Inicia o widget e executa a função
add_action('widgets_init', 'add_widget_support');

// Registra um novo menu de navegação
function add_main_nav() {
    register_nav_menu('header-menu', __('Header Menu'));
}

// Hook para a ação de inicialização, executa a função do menu de navegação
add_action('init', 'add_main_nav');

// Oculta a barra de administração para usuários logados
if (is_user_logged_in()) {
    add_filter('show_admin_bar', '__return_false');
}
?>
