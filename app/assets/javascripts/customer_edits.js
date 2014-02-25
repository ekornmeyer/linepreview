$( document ).ready(function() {
$('#copy_shipping').click(function() {
    var $this = $(this);
    // $this will contain a reference to the checkbox   
    if ($this.is(':checked')) {
        // the checkbox was checked 
        var address1 = $("#customer_sh_address1").val();
        $("#customer_bi_address1").val(address1);
        var address2 = $("#customer_sh_address2").val();
        $("#customer_bi_address2").val(address2);
        var city = $("#customer_sh_city").val();
        $("#customer_bi_city").val(city);
        var state = $("#customer_sh_state").val();
        $("#customer_bi_state").val(state);
        var zipcode = $("#customer_sh_zipcode").val();
        $("#customer_bi_zipcode").val(zipcode);
    } else {
        // the checkbox was unchecked
        $("#customer_bi_address1").val('');
        $("#customer_bi_address2").val('');
        $("#customer_bi_city").val('');
        $("#customer_bi_state").val('');
        $("#customer_bi_zipcode").val('');
    }
});

$("div[id^='asset-toolbar-options']").each(function(i) {
var theID = $(this).attr('id');
    $(this).prev('a').toolbar({
    content: '#' + theID,
    position: 'top',
    hideOnClick: 'true',
    zIndex: 99
});
});

$('input[id=asset_file_name]').change(function() {
    $('#assetCover').val($(this).val().replace('C:\\fakepath\\', ''));
});

$('.assetColumn').last().addClass('end');

});