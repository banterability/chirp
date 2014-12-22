editable = document.querySelectorAll '.update'

[].forEach.call editable, (node) ->
  node.addEventListener 'click', ->
    this.contentEditable = true
  , false

  node.addEventListener 'input', ->
    parentId = @parentNode.id
    @parentNode.classList.add 'dirty'

    payload =
      user: parentId
      message: @textContent

    console.log '--> sending', payload

    Jaxx.post '/update', payload, ->
      console.log '<-- response', @responseText
    , ->
      console.log 'ajax failure', this
  , false
