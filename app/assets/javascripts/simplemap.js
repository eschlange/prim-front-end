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

//= require jquery.min.js
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.form.min
//= require bootstrap-select.min
//= require jquery-ui.min

//= require ../../../vendor/assets/simplemap/javascripts/html5shiv
//= require ../../../vendor/assets/simplemap/javascripts/jquery.cbpFWSlider.min
//= require ../../../vendor/assets/simplemap/javascripts/jquery.fitvids
//= require ../../../vendor/assets/simplemap/javascripts/jquery.scrollUp.min
//= require ../../../vendor/assets/simplemap/javascripts/jquery.singlePageNav.min
//= require ../../../vendor/assets/simplemap/javascripts/modernizr.custom
//= require ../../../vendor/assets/simplemap/javascripts/respond.min
//= require ../../../vendor/assets/simplemap/javascripts/script
//= require ../../../vendor/assets/simplemap/javascripts/script-home

//= require best_in_place
//= require best_in_place.purr

function reload_header() {
  $('#header-navigation').load('homes/reload_header');
}