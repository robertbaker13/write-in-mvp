// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  bindSearch();
})



var bindSearch = function(){
  $('form.navbar-form').on('submit', function(event){
    event.preventDefault();

    var data = $("#peopleSearchBar").val();
    $.ajax({
      url: 'search',
      method: 'post',
      dataType: 'html',
      data: {search_input: data}
    }).done(function(responseData){
      console.log('success');
      console.log(responseData);
      displayResults(responseData);
      unendorseListener();
    })
})
}

var displayResults = function(responseData){
  $('.tab-content').html(responseData)
}
