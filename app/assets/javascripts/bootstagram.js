// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/javascripts, vendor/javascripts,
// or vendor/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// index supported directives.

//= require jquery.min
//= require jquery_ujs
//= require turbolinks
//= require jquery.form.min
//= require bootstrap-select.min
//= require jquery-ui.min

// = require js/vendor/bootstrap.min
// = require js/vendor/modernizr-2.6.2-respond-1.1.0.min
// = require js/vendor/pongstagr.am
// = require js/vendor/waypoints.min
// = require js/vendor/jquery.stellar.min
// = require js/main

//= require best_in_place
//= require best_in_place.purr

function reload_header() {
  $('#header-navigation').load('homes/reload_header');
}