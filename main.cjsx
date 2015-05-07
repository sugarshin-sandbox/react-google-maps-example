"use strict"

React = require 'react'
App = require './app'

markers = [
  position:
    lat: -25.363830
    lng: 131.044922
  id: 'J3515151fdfds5'
,
  position:
    lat: -25.363881
    lng: 131.044921
  id: 'J351515gfg15'
,
  position:
    lat: -25.363313
    lng: 131.044434
  id: 'J351515gdfg15'
]

React.render <App style={height: '320px'} markers={markers}/>, document.body
