$(document).on "turbolinks:load", ->
  $('#new_offer .offer_price_in_cents input, #new_offer .offer_shipping_price_in_cents input').on 'keypress', (e) ->
        return (e.charCode >= 48 && e.charCode <= 57) || e.charCode == 0