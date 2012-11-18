$ ->

  map = Gmaps.map.map

  google.maps.event.addListener marker, 'click', ->
    alert("asd")
#infowindow = new google.maps.InfoWindow({
#content: "<div class='popup'><h2>Awesome!</h2><p>Drag me and adjust the zoom level.</p>"
#})
#infowindow.open(Gmaps.map.map, marker);