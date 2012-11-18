# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->

  Gmaps.map.callback  = ()->
    console.log "callbacked",

    markers = Gmaps.map.markers

    for marker in markers
      google.maps.event.addListener marker.serviceObject, 'click', () ->
        console.log "eventatoooo", this