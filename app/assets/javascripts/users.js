// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.

$(document).ready(function(){
  unendorseListener();
  endorseListener();
  unwatchListener();
  watchOrganizationListener();
  watchIndexListener();

  autoCompleteListener();
})

// autoCompleteListener
var autoCompleteListener = function(){

  var availableTags = [
      "San Francisco",
      "Oakland",
      "Berkeley",
      "Alameda",
      "San Jose",
      "Hercules",
      "Marin",
      "Napa",
      "Ukiah",
      "Mountain View",
      "Redwood City",
      "Sonoma"

    ];

  $("#setDistrict").autocomplete({
      source:availableTags
    });
}

// unendorseListener
var unendorseListener = function(){
  $("input.btn-danger.btn-xs.unendorse-button").on("click", function(e){
    e.preventDefault();
    var url = this.parentElement.action;
    var $target = $(this).closest(".rcorners.bg-w.row.txt-c");
    unendorse(url, $target);
  })

  var unendorse = function(url, $target) {
    $.ajax({
      url: url,
      method: "post"
    }).done(function(){
      $target.toggle("fast");
    }).fail(function(){
      console.log("fail");
    })
  }
}

// endorseListener
var endorseListener = function(){
  $("input.btn-success.btn-xs.endorse-button").on("click", function(e){
    e.preventDefault();
    var url = this.parentElement.action;
    var $target = $(this).closest(".rcorners.bg-w.row")
    endorse(url, $target);
  })

  var endorse = function(url, $target) {
    $.ajax({
      url: url,
      method: "post"
    }).done(function(){
      $target.toggle("fast");
    }).fail(function(){
      console.log("fail");
    })
  }
}

// watchListener
var watchIndexListener = function () {
    $(".watch-index-button").on("click", function(e) {
      console.log("clicked");
      e.preventDefault();
      var url = this.parentElement.action;
      var $watchedCandidate = $(this).closest(".rcorners.bg-w.row")
      watch(url, $watchedCandidate);
    });
    var watch = function(url, $watchedCandidate){
    var request = $.ajax({
        url: url,
        method: "post"
      })

    request.success(function(data) {
      console.log("done");
        $watchedCandidate.toggle("fast");
      })

    request.fail(function(){
        console.log("fail");
      });
    }
  }

// unwatchListener
var unwatchListener = function () {
  $(".unwatch-button").on("submit", function(e) {
    e.preventDefault();
    console.log("submitted!")
    var url = this.action;
    var $target = $(this).closest(".rcorners")
    unwatch(url, $target);
  });

  var unwatch = function(url, $target){
    console.log(url);
    $.ajax({
      url: url,
      method: "post",
      dataType: "json"
    }).done(function() {
      $target.toggle("fast");
    }).fail(function(){
      console.log("fail");
    });
  }
}

// watchOrganizationListener
var watchOrganizationListener = function() {
  $(".watch-button").on("click", function(e){
    console.log("submitted!");
    e.preventDefault();
    var url = this.action;
    var $watchButton = $(this)
    watchOrganization(url, $watchButton);
  })

  var watchOrganization = function(url, $watchButton){
    var request = $.ajax({
      url: url,
      method: "post",
    })

    request.done(function() {
      console.log("success");
      // $watchButton.css("visibility", "hidden");
      $watchButton.html("<li class='btn btn-success btn-large home-right-button disabled debug'>Currently Watching</li>")
    });

    request.fail(function() {
      console.log("fail");
    })
  }
};
