<?php
/*
 * Template Name: Contato
 * Description: Página inicial do site.
 */
get_header(); // Inclui o cabeçalho do tema
?>

<div id="primary" class="content-area">
    <main id="main" class="site-main">
    <div class="contact-form-container">
        <section id="contato">
            <h2>Entre em contato</h2>

            <?php echo do_shortcode('[contact-form-7 id="34aebe0" title="Formulário de contato 1"]'); ?>
        </section>
        </div>
    </main>
</div>

<?php get_footer(); // Inclui o rodapé do tema ?>
