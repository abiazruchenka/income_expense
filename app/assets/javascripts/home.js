(function($) {
    $.fn.currencyInput = function() {
        this.each(function() {
            var wrapper = $("<div class='currency-money-input' />");
            $(this).wrap(wrapper);
            $(this).before("<span class='currency-money-symbol'>$</span>");
            $(this).change(function() {
                var min = parseFloat($(this).attr("min"));
                var value = this.valueAsNumber;
                if(value < min)
                    value = min;
                $(this).val(value.toFixed(2));
            });
        });
    };
})(jQuery);

$(document).ready(function() {
    $('#reset').on('click', function() {
        $('#select_category').val('0');
        $( "input[name*='datepicker']" ).val( "" );
    })
    $('input.currency-money').currencyInput();
});
