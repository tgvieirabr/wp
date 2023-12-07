<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seu Site</title>
    <!-- Adicione links para seus estilos CSS aqui -->
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/style.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="<?php echo home_url(); ?>">Home</a></li>
            <li><a href="<?php echo home_url('/projetos'); ?>">Projetos</a></li>
            <li><a href="<?php echo get_permalink(get_page_by_title('Contato')); ?>">Contato</a></li>
        </ul>
    </nav>
</header>

