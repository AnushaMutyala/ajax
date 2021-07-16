form = document.getElementById("newUserForm")
form.addEventListener "submit", (event) ->
  element = this

    # Create a AJAX request
    Rails.ajax
      type: "POST",
      url: "/users",
      data: new FormData(element),
      dataType: 'script',
      success: (args...) ->
        console.log "Ajax callback function"
