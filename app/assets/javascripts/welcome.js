// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  bindSearchBySubmit();
  bindSearchByButton();
})

var bindSearchBySubmit = function(){
  $('form.navbar-form').on('submit', function(event){
    event.preventDefault();
    var data = $("#peopleSearchBar").val();
    searchServer(data);
  })
}

var bindSearchByButton = function(){
  $('form.navbar-form').on('.glyphicon-search', function(event){
    event.preventDefault();
    var data = $("#peopleSearchBar").val();
    searchServer(data);
  })
}

var searchServer = function(data){
      $.ajax({
      url: 'search',
      method: 'post',
      dataType: 'html',
      data: {search_input: data}
    }).done(function(responseData){
      displayResults(responseData);
      unendorseListener();
    })
}

var displayResults = function(responseData){
  $('.tab-content').html(responseData)
}
