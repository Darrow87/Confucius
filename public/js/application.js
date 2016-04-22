$(document).ready(function() {


  $('.vote-button').on('submit', function(event){
    event.preventDefault();

    $.ajax({
      url: $(event.target).attr('action'),
      method: $(event.target).attr('method'),
      data: $(event.target).serialize()
    }).done(function(response){
      $('#question-votes').html(response)
    })
  })

    $('#answer_container').on('submit', '.answer-upvote-button',function(event){
      $target = $(event.target)
    event.preventDefault();
    $.ajax({
      url: $(event.target).attr('action'),
      method: $(event.target).attr('method'),
      data: $(event.target).serialize()
    }).done(function(response){
      $target.next().html(response)
    })
  })

        $('#answer_container').on('submit', '.answer-downvote-button',function(event){
      $target = $(event.target)
    event.preventDefault();
    $.ajax({
      url: $(event.target).attr('action'),
      method: $(event.target).attr('method'),
      data: $(event.target).serialize()
    }).done(function(response){
      $target.prev().html(response)
    })
  })


  $('#answer-form').on('submit', function(event){
    event.preventDefault();
    $target = $(event.target)
    $.ajax({
      method: $target.attr("method"),
      url: $target.attr("action"),
      data: $target.serialize()
    }).done(function(response){
      $('#answer_container').append(response).show();
      $target.trigger("reset");
    })
  })


$("#answer_container").on('click',".answer_comment", function(event){
  event.preventDefault();
  $target = $(event.target)
    $target.hide();
  $target.next().children().removeClass('answer_comment_form')
})

$("#answer_container").on('submit',".answer_comment_form", function(event){
  event.preventDefault();
  alert("hit")
  $target = $(event.target)
  $.ajax({
    method: $target.attr('method'),
    url: $target.attr('action'),
    data: $target.serialize()
  }).done(function(response){
    $('.comment_container').append(response);
  })
})



});


