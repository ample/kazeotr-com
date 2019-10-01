$ ->
  $.each $('[data-role=current-year]'), (i,el) ->
    currentYear = (new Date()).getFullYear()
    $(el).text(currentYear) if $(el).text != currentYear