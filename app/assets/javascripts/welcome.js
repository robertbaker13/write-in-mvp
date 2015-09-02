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
  console.log('hi')
  $('.tab-content').html(responseData)
}

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
