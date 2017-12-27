# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.selectIcon = (icon) ->
	$.ajax({
		url: "new"
	})
	.done((resp) ->
		console.log("icon", icon.getAttribute( "class" ))
		className = icon.getAttribute( "class" )
		color = $( icon ).css( "color" ) #rgb(102, 0, 102)
		$( icon ).css( "color", "rgb(15, 99, 30)" ) #rgb(102, 0, 102)
		console.log(color)
		console.log( "Handler for .click() called.", className, this.className)
		$("#category_icon").val(className)
		console.log("Nombre de texto",$("#category_icon").val())
	)
	.fail((err) -> console.log("Error", err))