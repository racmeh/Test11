<!doctype html>
<head>
<title>Login/Register1</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script>
$(document).ready(function() {
            if (!window.WebSocket) {
                if (window.MozWebSocket) {	//Checking if websocket is supported
                    window.WebSocket = window.MozWebSocket;
                } else {
                    $('#messages').append("<li>Your browser doesn't support WebSockets.</li>");	<!-- If web socket not supported, message is displayed -->
                }
            }
			
            wss = new WebSocket('https://geomap001.herokuapp.com:8080/ws_signlog');	//Setting up a web socket on the mentioned url
			$('#redirect').hide();	//Hiding redirect button
            wss.onopen = function(evt) {//Defining what happens when socket connection opens
                $('#messages').append('<li>Connected to server</li>');
                
           }
		   
           wss.onmessage = function(evt) {	//Defining what happens when message is received
				$('#messages').append('<li>' + evt.data + '</li>');	//Appending the message to the module
				if(evt.data=="Login successfull, redirecting..."||evt.data=="Signup successfull, redirecting...")	//Checking for login or Signup
				$('#redirect').trigger('click');	//Triggering click of a button
           }
		   
           $('#btn').click(function(){	//Defining what happens on the click of the button with id=btn, this is for Signup
				wss.send($('#usrnm').val());	//Sending username to server to be stored in database
				wss.send($('#usrid').val());
				wss.send($('#pwd').val());
				wss.send('Signup');	//Sending status to server to be stored in database, status here will be Signup
				$('#usrnm').val('');
				$('#usrid').val('');
				$('#pwd').val('');
				$('#stat').val('');
            });
			
           $('#btn1').click(function(){	//Defining what happens on the click of the button with id=btn, this is for Login
				wss.send($('#usrnm1').val());
				wss.send($('#usrid1').val());
				wss.send($('#pwd1').val());
				wss.send($('Login').val());	//Status will be Login
				$('#usrnm1').val('');
				$('#usrid1').val('');
				$('#pwd1').val('');
				$('#stat1').val('');
            });
			
           wss.onclose = function()	//Defining what happens when web socket connection is closed
            {
				$('#messages').append('<li>' + "Connection is closed..." + '</li>'); 
            }
	});
</script>
</head>

<body>

	<h2><b>Signup</b></h2><br/>
	<input id="usrnm" type="text" placeholder="Username" name="usrnm">
	<br/><br/>
	<input id="usrid" type="text" placeholder="User ID" name="usrid">
	<br/><br/>
	<input id="pwd" type="password" placeholder="Password" name="pwd">
	<br/><br/>
	<button id="btn">Signup</button>
	<br/><br/>
	<b>OR</b><br/>
	<h2><b>Login</b></h2><br/>
	<input id="usrnm1" type="text" placeholder="Username" name="usrnm1">
	<br/><br/>
	<input id="usrid1" type="password" placeholder="User ID" name="usrid1">
	<br/><br/>
	<input id="pwd1" type="text" placeholder="Password" name="pwd1">
	<br/><br/>
	<button id="btn1">Login</button><br/><br/>
	<input id="redirect" type="button" onclick="location.href='https://geomap001.herokuapp.com:8080/map';" value="Redirect" /> 	<!-- Redirecting to another url on clicking the button -->
	<div id="messages"></div>
	
</body>
</html>
