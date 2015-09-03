// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  bindSearchBySubmit();
  bindSearchByButton();
  // bindSearchInNav();
  expandPanel();
})

var expandPanel = function(){
  $('.wrapper').click(function(){
    $(this).closest('.wrapper').find('.small, .big').toggleClass('small big');
  })
};

var bindSearchBySubmit = function(){
  $('form.index-search').on('submit', function(event){
    event.preventDefault();
    var data = $("#peopleSearchBar").val();
    searchServer(data);
  })
}

var bindSearchByButton = function(){
  $('form.index-search').on('click','submit, .glyphicon-search', function(event){
    event.preventDefault();
    var data = $("#peopleSearchBar").val();
    searchServer(data);
  })
}

var bindSearchInNav = function(){
  $('form.nav-search').on('submit',function(event){
    event.preventDefault();
    debugger
    // var data = $().val();
    // searchServer(data);
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
