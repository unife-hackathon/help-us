jQuery ->
  $(".show-hide-donations").on "click", (event) ->
    need_id = $(this).attr("data-need-id")
    console.log need_id

    div = $("#supplies-need-#{need_id}")
    if div.is(":visible")
      div.fadeOut()
    else
      div.fadeIn()
