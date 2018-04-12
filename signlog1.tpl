<!doctype html>
<head>
<title>Login/Register</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
		integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
		crossorigin=""/>
		
	<script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
		integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
		crossorigin=""></script>
     
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script>
$(document).ready(function() {
            if (!window.WebSocket) {
                if (window.MozWebSocket) {	//Checking if websocket is supported
                    window.WebSocket = window.MozWebSocket;
                } else {
                    $('#messages').append("<li><b>Your browser doesn't support WebSockets.</b></li>");	<!-- If web socket not supported, message is displayed -->
                }
            }
			
            ws = new WebSocket('ws://localhost:8080/ws_signlog');	//Setting up a web socket on the mentioned url
			$('#redirect').hide();	//Hiding redirect button
            ws.onopen = function(evt) {//Defining what happens when socket connection opens
                $('#messages').append('<li><b>Connected to server</b></li>');
                
           }
		   
           ws.onmessage = function(evt) {	//Defining what happens when message is received
				$('#messages').append('<li>' + evt.data + '</li>');	//Appending the message to the module
				if(evt.data=="Login successfull, redirecting..."||evt.data=="Signup successfull, redirecting...")	//Checking for login or Signup
				$('#redirect').trigger('click');	//Triggering click of a button
           }
		   
           $('#btn').click(function(){	//Defining what happens on the click of the button with id=btn, this is for Signup
				ws.send($('#usrnm').val());	//Sending username to server to be stored in database
				ws.send($('#usrid').val());
				ws.send($('#pwd').val());
				ws.send('Signup');	//Sending status to server to be stored in database, status here will be Signup
				$('#usrnm').val('');
				$('#usrid').val('');
				$('#pwd').val('');
				$('#stat').val('');
            });
			
           $('#btn1').click(function(){	//Defining what happens on the click of the button with id=btn, this is for Login
				ws.send($('#usrnm1').val());
				ws.send($('#usrid1').val());
				ws.send($('#pwd1').val());
				ws.send($('Login').val());	//Status will be Login
				$('#usrnm1').val('');
				$('#usrid1').val('');
				$('#pwd1').val('');
				$('#stat1').val('');
            });
			
           ws.onclose = function()	//Defining what happens when web socket connection is closed
            {
				$('#messages').append('<li><b>' + "Connection is closed..." + '</b></li>'); 
            }
	});
</script>
</head>

<body>
    <nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="#"><b>Mapify</b></a>
			</li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item navbar-right active">
				<a class="nav-link" href="#">Login/Signup</a>
			</li>
		</ul>
	</nav>
	
	<br/>
	&nbsp;<h2><b>Signup</b></h2><br/>
	&nbsp;<input id="usrnm" type="text" placeholder="Username" name="usrnm">
	<br/><br/>
	&nbsp;<input id="usrid" type="text" placeholder="User ID" name="usrid">
	<br/><br/>
	&nbsp;<input id="pwd" type="password" placeholder="Password" name="pwd">
	<br/><br/>
	&nbsp;<button id="btn" style="background-color:grey;color:white;">Signup</button>
	<br/><br/>
	&nbsp;<b>OR</b><br/><br/>
	<h2><b>Login</b></h2><br/>
	&nbsp;<input id="usrnm1" type="text" placeholder="Username" name="usrnm1">
	<br/><br/>
	&nbsp;<input id="usrid1" type="password" placeholder="User ID" name="usrid1">
	<br/><br/>
	&nbsp;<input id="pwd1" type="text" placeholder="Password" name="pwd1">
	<br/><br/>
	&nbsp;<button id="btn1" style="background-color:grey;color:white;">Login</button><br/><br/>
	<input id="redirect" type="button" onclick="location.href='http://localhost:8080/map';" value="Redirect" /> 	<!-- Redirecting to another url on clicking the button -->
	&nbsp;<div id="messages"></div>
	
</body>
</html>
