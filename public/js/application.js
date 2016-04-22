$(document).ready(function() {


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
      $('#answer_container').append(response);
      $target.trigger("reset");
    })
  })





});
