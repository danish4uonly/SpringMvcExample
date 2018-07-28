<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!--<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
 <script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	 -->
	<script src="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.js"></script>
<link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<!-- <body> -->

<!-- 	<div>
		<input type="text" placeholder="0.0.0.0" id="w-input-search" value="">
		<span>
			<button id="w-button-search" type="button">Search</button>
		</span>
	</div>
 -->
	<!-- <script>
	$(document).ready(function() {

		$("#w-button-search").click(function() {
	
			$.getJSON("${pageContext.request.contextPath}/getLocationByIpAddress",
			{
				ipAddress : $('#w-input-search').val()
			}, 
			function(data) {
				
				var data = JSON.stringify(data);
				var json = JSON.parse(data);
				
				showMap(json["latitude"],json["longitude"])
				
				$("#result").html(data)
				
			})
			.done(function() {
									
			})
			.fail(function() { 
			})
			.complete(function() { 			
			});
			
		});
		
		var map;
		
		function showMap(latitude,longitude) { 
			
			var googleLatandLong = new google.maps.LatLng(latitude,longitude);
		
			var mapOptions = { 
				zoom: 5,
				center: googleLatandLong,
				mapTypeId: google.maps.MapTypeId.ROADMAP 
			};
		
			var mapDiv = document.getElementById("map");
			map = new google.maps.Map(mapDiv, mapOptions);
			
			var title = "Server Location"; 
			addMarker(map, googleLatandLong, title, "");
			
		}
		
		function addMarker(map, latlong, title, content) { 
			
			var markerOptions = {
				position: latlong, 
				map: map,
				title: title, 
				clickable: true
			};
			var marker = new google.maps.Marker(markerOptions); 
		}
		
		
	});
	</script>-->
	
	<script type="text/javascript">
    window.onload = function() {
        L.mapquest.key = '1gsBDg9h77P59bnnU4RawE0VnKrl4BAH';

        var map = L.mapquest.map('map', {
          center: [39.7392, -104.9903],
          layers: L.mapquest.tileLayer('map'),
          zoom: 3
        });

        $.get('https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson', function(data) {
          L.geoJSON(data).addTo(map);
        });
      };  
	
	/*window.onload = function() {
        L.mapquest.key = '1gsBDg9h77P59bnnU4RawE0VnKrl4BAH';

        var map = L.mapquest.map('map', {
          center: [	12.972442, 77.580643],
          layers: L.mapquest.tileLayer('map'),
          zoom: 12
        });

        //map.addControl(L.mapquest.control());
        
        map.addControl(new L.Control.Draw({
            edit: {
              featureGroup: drawnItems,
              poly: {
                allowIntersection: false
              }
            },
            draw: {
              polygon: {
                allowIntersection: false,
                showArea: true
              }
            }
          }));
      }*/
    </script>
<!-- 	<br/>
	<div id="result"></div>
	<br/>
	<div style="width:600px;height:400px" id="map"></div>
 -->
 
 <body style="border: 0; margin: 0;">
 	<div></div>
    <div id="map" style="width: 100%; height: 530px;"></div>
  </body>
<!-- </body> -->
</html>




