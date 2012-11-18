$ ->

  Gmaps.map.callback  = ()->
    console.log "callbacked",

    markers = Gmaps.map.markers

    for marker in markers
      google.maps.event.addListener marker.serviceObject, 'click', () ->
        console.log "eventatoooo", this

#infowindow = new google.maps.InfoWindow({
#content: "<div class='popup'><h2>Awesome!</h2><p>Drag me and adjust the zoom level.</p>"
#})
#infowindow.open(Gmaps.map.map, marker);