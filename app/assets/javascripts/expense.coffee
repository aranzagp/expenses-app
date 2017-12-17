# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.deleteExp = (id) ->
	$.ajax({
		url: "expenses/"+id,
		type: 'DELETE'
	})
	.done((resp) ->
		elem = document.getElementById("tr_"+id)
		elem.parentNode.removeChild(elem)
	)
	.fail((err) -> console.log("Error", err))

$(document).ready ->
  $('#sortExp').DataTable()
  

