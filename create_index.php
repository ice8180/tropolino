<html>
    <head>
        <title>Mamma di Indice</title>
        <style>
            *{
                margin: 10px;
                padding: 10px;
                text-align: center;
            }
            body{
                background: #FF8030;
            }
            h1{ font-size: 50px;}
            h2{ color: green; font-size: 40px;}
            h3{ color: red; font-size: 30px;}
            a{ font-size: 20px;}
        </style>
    </head>
    <body>
        <h1>Generazione Pagina Indice</h1>
    <?php
        error_reporting(E_ERROR | E_PARSE); /* Hide Warnings */ 	
    	include('./notebook/include.php');
    	$content = '';
    	$index = './index.html';	
    	$start_string = file_get_contents('./notebook/start.php');
    	
    	foreach ($notebook as $page) {
    		$url = './notebook/' . $page;
    		$content .= file_get_contents($url);
    	}
    	
    	$end_string = file_get_contents('./notebook/end.php');
    
    	$replace_me = "<?php include('./notebook/footer.php'); ?>";
    	$insert_me = file_get_contents('./notebook/footer.php');
    	$content = str_replace($replace_me, $insert_me, $content);
    	
    	$baseUrl = 'http://cronj.com/metropolino/';
    	$content = str_replace('<form action=', '<form action='.$baseUrl, $content);
    	
    	$new_content = $start_string.$content.$end_string;
    	$newf = fopen ($index, "wb");
    	if($newf){
    	    fwrite($newf, $new_content);
            echo("<h2>Generazione è riuscito!!</h2>");
            echo("<a href='index.html' target='_blank'>Click here to open app!!</a>");
        }
        else{
            echo("<h3>Generazione non è riuscita!!</h3>");
            echo("<h3>Contattare Administratir!!</h3>");
        }
    ?>
    </body>
</html>