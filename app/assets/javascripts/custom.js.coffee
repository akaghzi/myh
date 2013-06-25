do_on_load = ->
	$('.datepicker').datepicker
		autoclose: true
		format: 'yyyy-mm-dd'

		# startDate: new Date()
		# weekStart: 1
		# daysOfWeekDisabled: [0,6]


$(document).ready ->
	do_on_load()

$(window).bind( 'page:change', do_on_load )