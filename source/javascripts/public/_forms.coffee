if typeof window.TDOME is 'undefined' then window.TDOME = {}

class TDOME.Forms

  constructor: ->
    $('[data-role="selector"]').submit @onSubmit
    if $('[data-selectable]').length > 0
      $.each $('[data-selectable]'), @selectable

  selectable: (i, el) =>
    key = $(el).data('selectable')
    value = @getParam(key)
    if value
      sel = $(el).find('option').filter((i, e) -> $(e).text().toLowerCase() == value.toLowerCase()).prop('selected', true)
      $(el).closest('form').trigger('submit')

  getParam: (variable) ->
    query = window.location.search.substring(1)
    vars = query.split('&')
    i = 0
    while i < vars.length
      pair = vars[i].split('=')
      if pair[0] == variable
        return pair[1]
      i++
    false

  onSubmit: (e) =>
    f = $(e.target)
    id = f.find('[data-selectable]').val()
    els = $('[data-role="selectable"]')
    els.addClass('hide')
    els.filter("##{id}").removeClass('hide')
    f.closest('.row').hide()

$ -> new TDOME.Forms()