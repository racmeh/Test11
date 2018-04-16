<html>
<head>

	<title>Mapify.com</title>
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
   
    <style>
	#ipt1{
	width:175px;  
    height:30px;
	}
	#ipt4{
	width:175px;  
    height:30px;
	}
	#ipt6{
	width:175px;  
    height:30px;
	}
	#ipt11{
	width:175px;  
    height:30px;
	}
	</style>
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
				<a class="nav-link" href="#">T20 WC, 16</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">More</a>
			</li>
		</ul>
	</nav>
	
	<br/><br/>
	
    <div class="row">
        <div class="col">
	        &nbsp;<div id="mapid" style="width:700px;height:450px;"></div><br/></div>
        <div class="col"><h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Some Interesting statistics</h2>
            <div id="piechart1"></div></div>
    </div>

<hr/>
<h2> Add your data</h2>
<br/>
&nbsp;<select id="ipt1" name="Pos1">
			<option value="32.1976097">Dharamshala</option>
			<option value="12.9788139">Chinnaswamy</option>
			<option value="21.0856225">Indore Cricket</option>
			<option value="30.690889">HSPCA</option>
			<option value="28.6377383">Punjab CA</option>
			<option value="18.9388227">Wankhede</option>
			<option value="22.5646081">Eden Gardens</option>
		</select>
		<br/><br/>
		&nbsp;<input id="ipt3" type="number" name="Match_num" placeholder="Match number"><br/><br/>
		&nbsp;<select id="ipt4" name="Stage">
			<option value="Group">Group</option>
			<option value="Super 10">Super 10</option>
			<option value="Semifinal">Semifinal</option>
			<option value="Final">Final</option>
		</select><br/><br/>
		&nbsp;<input id="ipt5" type="text" name="Date" placeholder="DD/MM/YY format"><br/><br/>
		&nbsp;<select id="ipt6" name="1st_bat_team">
			<option value="IND">India</option>
			<option value="AUS">Australia</option>
			<option value="ENG">England</option>
			<option value="NZ">New Zealand</option>
			<option value="PAK">Pakistan</option>
			<option value="SA">South Africa</option>
			<option value="SL">Sri Lanka</option>
			<option value="WI">West Indies</option>
			<option value="BAN">Bangladesh</option>
			<option value="ZIM">Zimbabwe</option>
			<option value="SC">Scotland</option>
			<option value="NTH">Netherlands</option>
			<option value="IR">Ireland</option>
			<option value="HK">Hong Kong</option>
			<option value="AFG">Afghanistan</option>
			<option value="OM">Oman</option>
		</select><br/><br/>
		&nbsp;<input id="ipt7" type="number" name="1st_bat_team_runs" placeholder="1st bat team runs"><br/><br/>
		&nbsp;<input id="ipt8" type="number" name="1st_bat_team_wickets" placeholder="1st bat team wickets"><br/><br/>
		&nbsp;<input id="ipt9" type="number" name="1st_bat_team_overs" placeholder="1st bat team overs"><br/><br/>
		&nbsp;<input id="ipt10" type="text" name="1st_bat_team_result" placeholder="1st bat team result"><br/><br/>
		&nbsp;<select id="ipt11" name="2nd_bat_team">
			<option value="IND">India</option>
			<option value="AUS">Australia</option>
			<option value="ENG">England</option>
			<option value="NZ">New Zealand</option>
			<option value="PAK">Pakistan</option>
			<option value="SA">South Africa</option>
			<option value="SL">Sri Lanka</option>
			<option value="WI">West Indies</option>
			<option value="BAN">Bangladesh</option>
			<option value="ZIM">Zimbabwe</option>
			<option value="SC">Scotland</option>
			<option value="NTH">Netherlands</option>
			<option value="IR">Ireland</option>
			<option value="HK">Hong Kong</option>
			<option value="AFG">Afghanistan</option>
			<option value="OM">Oman</option>
		</select><br/><br/>
		&nbsp;<input id="ipt12" type="number" name="2nd_bat_team_runs" placeholder="2nd bat team runs"><br/><br/>
		&nbsp;<input id="ipt13" type="number" name="2nd_bat_team_wickets" placeholder="2nd bat team wickets"><br/><br/>
		&nbsp;<input id="ipt14" type="number" name="2nd_bat_team_overs" placeholder="2nd bat team overs"><br/><br/>
		&nbsp;<input id="ipt15" type="text" name="2nd_bat_team_result" placeholder="2nd bat team result"><br/><br/>
		
&nbsp;<button id="btn">Submit</button><br/>
<hr/>
&nbsp;<button id="btn3" style="background-color:grey;color:white;">Signout</button>		<!-- For logging out --><br/>
&nbsp;<div id="messages"></div><br/>


		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		
		<script>
			google.charts.load('current', {'packages':['corechart']});
			google.charts.setOnLoadCallback(drawChart);
			
			// Draw the chart and set the chart values
			function drawChart() {
				var data = google.visualization.arrayToDataTable([
				['Bowling', 'Result'],
				['Bowling First', 12],
				['Bowling Second', 11]
				]);
				
				// Optional; add a title and set the width and height of the chart
				var options = {'title':'Winning Statistics', 'width':600, 'height':450,colors: ['#e0440e', '#ec8f6e'],is3D: true};
				
				// Display the chart inside the <div> element with id="piechart"
				var chart = new google.visualization.PieChart(document.getElementById('piechart1'));
				chart.draw(data, options);
			}
			
			function yourJsFunction(){
			}
			
			$(document).ready(function() {
				if (!window.WebSocket) {
				
				//Checking if websocket is supported
                if (window.MozWebSocket) {	
				
                    window.WebSocket = window.MozWebSocket;
					
                } else {
					
					<!-- If web socket not supported, message is displayed -->
                    $('#messages').append("<li><b>Your browser doesn't support WebSockets.</b></li>");	
                }
            }
			
			//Setting up a web socket on the mentioned url
            ws = new WebSocket('ws://localhost:8080/websocket');
			
			var mymap = L.map('mapid').setView([21.0856225,78.9879812], 4);
			
			L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiZGV2aW5jbyIsImEiOiJjamZsbGhoam8waDYyMzNuN3gyNHZhbzBpIn0.yPx2G5Rcafz4OeDvY3J13w', {
				attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
				maxZoom: 18,
				id: 'mapbox.streets',
				accessToken: 'your.mapbox.access.token'
			}).addTo(mymap);
			
			var popup = L.popup();
			var greenIcon = L.icon({
				iconUrl: 'f1.png',
			
				// size of the icon
				iconSize:     [35,35], 
			
				// size of the shadow
				shadowSize:   [50, 64], 
			
				// point of the icon which will correspond to marker's location
				iconAnchor:   [35,35], 
			
				// the same for the shadow
				shadowAnchor: [4, 62],  
			
				// point from which the popup should open relative to the iconAnchor
				popupAnchor:  [-3, -76] 
			});
			
		var greenIcon1 = L.icon({
			iconUrl: 'f2.png',
			
			// size of the icon
			iconSize:     [38,38], 
			
			// size of the shadow
			shadowSize:   [50, 64], 
			
			// point of the icon which will correspond to marker's location
			iconAnchor:   [38,38], 
			
			// the same for the shadow
			shadowAnchor: [4, 62],  
			
			// point from which the popup should open relative to the iconAnchor
			popupAnchor:  [-3, -76] 
		});
		
		
		var greenIcon2 = L.icon({
			iconUrl: 'f4.png',
			
			// size of the icon
			iconSize:     [38,38], 
			
			// size of the shadow
			shadowSize:   [50, 64], 
			
			// point of the icon which will correspond to marker's location
			iconAnchor:   [38,38], 
			
			// the same for the shadow
			shadowAnchor: [4, 62],  
			
			// point from which the popup should open relative to the iconAnchor
			popupAnchor:  [-3, -76] 
		});
		
		var marker,marker1,marker2,marker3,marker4,marker5,marker6;
			function onMapClick(e) {
				popup
					.setLatLng(e.latlng)
					.setContent("You clicked the map at " + e.latlng.toString())
					.openOn(mymap);
			}	
			
			mymap.on('click', onMapClick);
			
			//Defining what happens when socket connection opens
			ws.onopen = function(evt) {
                $('#messages').append('<li><b>Connected to server</b></li>');
			}
		   
		   //Defining what happens when message is received
           ws.onmessage = function(evt) {	
		        var s='',s1='',s2='',i=0,c=0,c1=0,s3='',cp1='',pos1=0.0,pos2=0.0;
				s=evt.data;
				
				if(s.charAt(0)=='Z'&&s.charAt(1)=='1'){//adding all locations
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker = L.marker([pos1,pos2],{icon: greenIcon}).addTo(mymap);
					marker.bindPopup(cp1).openPopup();
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='2'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
				
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
				
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker1 = L.marker([pos1,pos2],{icon: greenIcon}).addTo(mymap);
					marker1.bindPopup(cp1);
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='3'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker2 = L.marker([pos1,pos2],{icon: greenIcon}).addTo(mymap);
					marker2.bindPopup(cp1);
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='4'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker3 = L.marker([pos1,pos2],{icon: greenIcon}).addTo(mymap);
					marker3.bindPopup(cp1);
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='5'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker4 = L.marker([pos1,pos2],{icon: greenIcon2}).addTo(mymap);
					marker4.bindPopup(cp1);
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='6'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker5 = L.marker([pos1,pos2],{icon: greenIcon2}).addTo(mymap);
					marker5.bindPopup(cp1);
				}

				if(s.charAt(0)=='Z'&&s.charAt(1)=='7'){
					for(i=2;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					for(i=c+1;i<s.length;i++){
						if(s.charAt(i)=='+'){
							c1=i;
							break;
						}
						s2=s2+s.charAt(i);
					}
					
					for(i=c1+1;i<s.length;i++){
						s3=s3+s.charAt(i);
					}
					
					cp1=s3;
					pos1=parseFloat(s1);
					pos2=parseFloat(s2);
					marker6 = L.marker([pos1,pos2],{icon: greenIcon1}).addTo(mymap);//placing the marker
					marker6.bindPopup(cp1);
				}

				if(s.charAt(0)!='Z'){
					for(i=0;i<s.length;i++){
						if(s.charAt(i)=='Z'){
							c=i;
							break;
						}
						s1=s1+s.charAt(i);
					}
					
					console.log("s1 is "+s1);
					
					for(i=c+1;i<s.length;i++){
						s2=s2+s.charAt(i);
					}
					
					console.log("s2 is "+s2);
					
					if(s1==='32.1976097'){
						marker.setPopupContent(marker.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker.getPopup().getContent());
					}
					
					if(s1==='12.9788139'){
						marker1.getPopup().setContent(marker1.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker1.getPopup().getContent());
					}
					
					if(s1==='21.0856225'){
						marker2.getPopup().setContent(marker2.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker2.getPopup().getContent());
					}
					
					if(s1==='30.690889'){
						marker3.getPopup().setContent(marker3.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker3.getPopup().getContent());
					}
					
					if(s1==='28.6377383'){
						marker4.getPopup().setContent(marker4.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker4.getPopup().getContent());
					}
					
					if(s1==='18.9388227'){
						marker5.getPopup().setContent(marker5.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker5.getPopup().getContent());
					}
					
					if(s1==='22.5646081'){//updating popups
						marker6.getPopup().setContent(marker6.getPopup().getContent()+s2);
						ws.send(s1);
						ws.send(marker6.getPopup().getContent());
					}
				}
           }   
		   
		   
		   mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker.remove();
				}
				else {
					marker.setLatLng([32.1976097,76.3237065],{icon: greenIcon});
					marker.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker1.remove();
				}
				else{
					marker1.setLatLng([12.9788139,77.5974045],{icon: greenIcon});
					marker1.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker2.remove();
				}
				else{
					marker2.setLatLng([21.0856225,78.9879812],{icon: greenIcon});
					marker2.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker3.remove();
				}
				else{
					marker3.setLatLng([30.690889,76.7353423],{icon: greenIcon});
					marker3.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker4.remove();
				}
				else{
					marker4.setLatLng([28.6377383,77.240835],{icon: greenIcon2});
					marker4.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker5.remove();
				}
				else{
					marker5.setLatLng([18.9388227,72.8234744],{icon: greenIcon2});
					marker5.addTo(mymap);
				}
			});
			
			mymap.on('zoomend' , function (e) {
				console.log(mymap.getZoom());
				
				if (mymap.getZoom()<4){
					marker6.remove();
				}
				else{
					marker6.setLatLng([22.5646081,88.3410758],{icon: greenIcon1});
					marker6.addTo(mymap);
				}
			});
		   
		   //Defining what happens when the button is clicked
		   $('#btn').click(function(){	
		   
				//sending message of popup to server
				ws.send($('#ipt1').val());	
				var a=$('#ipt3').val();
				ws.send(a);
				console.log("msg2 is"+$('#ipt3').val());
				ws.send($('#ipt4').val());
				ws.send($('#ipt5').val());
				ws.send($('#ipt6').val());
				ws.send($('#ipt7').val());
				ws.send($('#ipt8').val());
				ws.send($('#ipt9').val());
				ws.send($('#ipt10').val());
				ws.send($('#ipt11').val());
				ws.send($('#ipt12').val());
				ws.send($('#ipt13').val());
				ws.send($('#ipt14').val());
				ws.send($('#ipt15').val());
				$('#ipt3').val('');
				$('#ipt4').val('');
				$('#ipt5').val('');
				$('#ipt6').val('');
				$('#ipt7').val('');
				$('#ipt8').val('');
				$('#ipt9').val('');
				$('#ipt10').val('');
				$('#ipt11').val('');
				$('#ipt12').val('');
				$('#ipt13').val('');
				$('#ipt14').val('');
				$('#ipt15').val('');
            });
			
			$('#btn3').click(function(){
			
				//Sending a unique string to determine if Signout is pressed
				ws.send("Offline1234abc5678def90ghij");	
            });
			
			//Timeout function to expire the session in an hour
			setTimeout(function(){ ws.close(); }, 3600000);	
			
			//Defining what happens when web socket connection is closed
		    ws.onclose = function()	
            {
				$('#messages').append('<li><b>' + "Connection is closed..." + '</b></li>'); 
            }
		});
	</script>

</body>
</html>
