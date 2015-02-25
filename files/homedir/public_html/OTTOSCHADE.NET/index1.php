<?php
                $releaseDateTimeStamp = (int) strtotime('30 october 2012');
//                $nowTimeStamp = (int) time() + 86400;
                $nowTimeStamp = (int) time() + 21600;
                echo 'now = ' . date('Y-m-d H:i:s', $nowTimeStamp);
                die();
                if ($nowTimeStamp > $releaseDateTimeStamp)
                {
                        header("Location: http://www.ottoschade.net/artist/");
                      exit();
                        //echo "if npw = $nowTimeStamp releaseon = $releaseDateTimeStamp";
                }
                else
                {
//                echo "else npddw = $nowTimeStamp releaseon = $releaseDateTimeStamp";
            ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>otto</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css" media="screen">
		html, body { height:100%; background-color: #ffffff;}
		body { margin:0; padding:0; overflow:hidden; }
		#flashContent { width:999px; height:750px; margin: auto; }
		</style>
	</head>
	<body style="background: #496778 url(flashMain.gif) 50% 0 repeat;">
		<div id="flashContent">
		<img src="UnderConstruction.jpg" alt="Under Construction" />
		</div>
	</body>
</html>
<?php
}
?>
