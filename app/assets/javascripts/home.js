$(document).ready(function() {
    $('#reset').on('click', function() {
        $('#select_category').val('0');
        $( "input[name*='datepicker']" ).val( "" );
    })
});