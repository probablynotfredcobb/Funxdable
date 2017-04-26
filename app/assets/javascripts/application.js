// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directiv

// = require jquery
// = jquery_ujs
// = require turbolinks
// = require_tree .

// $('td').click(function(){
//
// })

$(function() {
  $('td').click(function(){ //link that is clicked on
    var currentId = $(this).attr('class'); //capture id of clicked item
    window.location = '/parties/new?date=' + currentId; //load new page
    return false;
  });
});

// $(function() {
//   console.log($('em').attr('id'));
//
// })
