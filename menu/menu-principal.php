/*
 * Template Name: Menu Principal
 * Description: Template para o menu principal do site.
 */

// Inclui o cabeçalho do tema
get_header();
?>

<div id="primary" class="content-area">
    <main id="main" class="site-main">

    <?php
    // Cria o menu navbar
    $items = array(
        array(
            'title' => 'Início',
            'url' => home_url(),
        ),
        array(
            'title' => 'Sobre',
            'url' => home_url('/sobre'),
        ),
        array(
            'title' => 'Projetos',
            'url' => home_url('/projetos'),
        ),
        array(
            'title' => 'Contato',
            'url' => home_url('/contato'),
        ),
    );

    // Adiciona um item de menu para a página single project
    $project_id = get_the_ID();
    $items[] = array(
        'title' => 'Projeto',
        'url' => home_url('/projetos/?id=' . $project_id),
        'menu_item_parent' => 'Projetos',
    );

    // Exibe o menu navbar
    wp_nav_menu(array(
        'menu' => 'menu-principal',
        'items' => $items,
        'container' => 'nav',
        'container_class' => 'menu-principal',
        'menu_class' => 'menu-principal-itens',
        'echo' => true,
    ));
    ?>

    </main>
</div>
<?php get_footer(); // Inclui o rodapé do tema ?>
