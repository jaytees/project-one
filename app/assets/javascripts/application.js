// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require rails-ujs
//= require_tree .
//= require jquery

$(document).ready(function() {

// gotta be easier way but :visible not working

// homepage sign up

  $("#toggle-signup-button").click(function() {

      $("#toggle-signup-form").toggle()

  });


// drop feed toggle
//  product request for drop

  $(".toggle-product-requests-button").click(function() {

    const dropId = $(this).data('drop-id');

    // console.log(`.toggle-product-requests-content${dropId}`);

    $(`.toggle-product-requests-content${dropId}`).toggle(

      // function(){$(".toggle-product-requests-button").css({"color": "white"});},


    ); //toggle


  });

// drop and product requests
  $(".toggle-d-p-requests-button").click(function() {

    const dropId = $(this).data('drop-id');

    // console.log(`.toggle-product-requests-content${dropId}`);

    $(`.toggle-d-p-requests-content${dropId}`).toggle();


  });


});  //document ready
