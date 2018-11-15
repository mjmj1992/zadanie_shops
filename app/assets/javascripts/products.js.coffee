$(document).on "turbolinks:load", ->
  if $('#offers').length > 0
    $('#offers .btn-change-rejected-status').on 'click', (e) ->
        target = $(e.currentTarget)
        offer = target.parents('.offer')
        url = offer.attr('data-reject-url')
        $.post url, {}, (response) ->
            status = response.status
            if status == "ok"
                rejected = response.rejected
                human_rejected_text = if rejected then 'Yes' else 'No'
                btn_text = if rejected then 'Recover' else 'Reject'
                offer.find('.offer-rejected .rejected-status').text(human_rejected_text)
                offer.find('.offer-actions .btn-change-rejected-status').text(btn_text)
            else
                msg = response.msg
                alert(msg)