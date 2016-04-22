$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

//   $('.vote-button').on('submit', function(event){
//     event.preventDefault();
//     $target = $(event.target);

//     $.ajax({
//       method: $target.attr("method"),
//       url: $target.attr("action")
//     })

$('#answer-form').on('submit', function(event){
  event.preventDefault();
  $target = $(event.target)
  $.ajax({
    method: $target.attr("method"),
    url: $target.attr("action"),
    data: $target.serialize()
  }).done(function(response){
    $('#answer_container').append(response)
  })


})




});
