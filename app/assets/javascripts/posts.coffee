if $('#post_post_type').val() is "song"
  $('p.hidden').show()
$('#post_post_type').change ->
  if $(this).val() is "song"
    $('p.hidden').show()
  else
    $('p.hidden').hide()