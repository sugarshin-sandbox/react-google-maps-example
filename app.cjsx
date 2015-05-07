"use strict"

React = require 'react'
{ GoogleMaps, Marker } = require 'react-google-maps'

module.exports =
class App extends React.Component

  constructor: (props) ->
    super props

  handleMarkerClick: (ev, id) =>
    location.hash = "/shop/#{id}"

  render: ->
    <div>
      <GoogleMaps
        ref="map"
        containerProps={@props}
        googleMapsApi={
          if typeof google isnt 'undefined' then google.maps else null
        }
        zoom={14}
        center={lat: -25.363882, lng: 131.044922}
      >
        {@props.markers.map (marker) =>
          { position, id } = marker
          <Marker
            id={id}
            key={"#{position.lat}#{position.lng}"}
            position={position}
            onClick={(ev) => @handleMarkerClick ev, id}
          />}
      </GoogleMaps>
    </div>
