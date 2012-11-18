$ ->
  if not /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)
    $(document).on "click", ".btn-large", (event)->

      event.preventDefault()

      $this = $(this)
      need_id = $this.attr "data-need_id"
      $.get $this.attr("href") + "?no_layout=true", (response)->
        $modal = $("#modalDiv")
        $modal.html(response)
        #$modal.children()
        $modal.reveal({
             animation: 'fadeAndPop',
             animationspeed: 300,
             closeonbackgroundclick: true,
             dismissmodalclass: 'close-reveal-modal'
        })


