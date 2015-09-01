// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.

$(document).ready(function() {
  unwatchListener();
});

$(function() {
    var availableTags = [
      "Alameda, CA",
      "Contra Costa, CA",
      "San Jose, CA",
      "Del Norte, CA",
      "Lake, CA",
      "Marin, CA",
      "Napa, CA",
      "Mendocino, CA",
      "San Mateo, CA",
      "San Francisco, CA",
      "Solano, CA",
      "Sonoma, CA"
    ];
    $( "#setDistrict" ).autocomplete({
      source: availableTags
    });
  });

var unwatchListener = function () {
  console.log("listener running");
  $(".button_to").on("submit", function(e) {
    e.preventDefault();
    var url = this.action;
    var target = "." + this.children[1].id;

    unwatch(url, target);
  });

  var unwatch = function(url, target){
    console.log(url);
    $.ajax({
      url: url,
      method: "post",
      dataType: "json"
    }).done(function() {
      $(target).hide();
    }).fail(function(){
      console.log("fail");
    });
  }
}