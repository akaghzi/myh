do_on_load = ->
  $("[data-behaviour~='datepicker']").datepicker
   format: "yyyy-mm-dd"
   weekStart: 0
   autoclose: true
  $("#datetimepicker2").datetimepicker
    language: "en"
    pick24HourFormat: true

$(document).ready ->
  do_on_load()

$(window).bind( 'page:change', do_on_load )
