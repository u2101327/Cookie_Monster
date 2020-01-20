<?php
if(array_key_exists("Red_Guy's_name", $_COOKIE)&&preg_match('/([Ee])lmo+/', $_COOKIE["Red_Guy's_name"])){
  $output=('<p>You got it! flag{YumYumC00kies}</p>');
}else{
    $output = ("<p>He's my favorite Red guy</p>");
    setcookie("Red_Guy's_name", 'NameGoesHere', time()+300);
}

?>
<!DOCTYPE html>
<html>
    <head>
        <title>Cookie_monster</title>
		<link rel="stylesheet" href="css/bulma.min.css"/>
		<link rel="stylesheet" href="css/main.css"/>
    </head>
    <body>
		<nav class="navbar" role="navigation" aria-label="main navigation">
			<div class="navbar-brand">
				<a class="navbar-item" href="https://neverlanctf.com">
					<img src="https://cdn.neverlanctf.com/Logo-dark.png" alt="Cookie_monster" width="154" height="64">
				</a>
		
				<a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false">
					<span aria-hidden="true"></span>
					<span aria-hidden="true"></span>
					<span aria-hidden="true"></span>
				</a>
			</div>
		</nav>
		<main>
			<section class="section">
				<div class="container">
					<h1 class="title">Cookie_monster</h1>
					<h2 class="subtitle">
						<?php
						echo($output);
						?>
					</h2>
				</div>
			</section>
		</main>
		<footer class="footer">
			<div class="content has-text-centered">
				<p>
					<strong>Cookie_monster</strong> by <a href="https://neverlanctf.com">NeverLAN CTF</a>.
				</p>
			</div>
		</footer>
	</body>
</html>
