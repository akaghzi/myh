do_on_load = ->
	$('.datepicker').datepicker
		autoclose: true
		format: 'yyyy-mm-dd'
		daysOfWeekDisabled: [0,6]

		# startDate: new Date()
		# weekStart: 1


$(document).ready ->
	do_on_load()

$(window).bind( 'page:change', do_on_load )