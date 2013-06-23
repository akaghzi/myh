do_on_load = ->
 # $('.datetimepicker').datetimepicker()
  $('.datepicker').datepicker
	  autoclose: true
	
$(document).ready ->
  do_on_load()

$(window).bind( 'page:change', do_on_load )
