$(document).ready(function(){
    $("#cari-pegawai").click(function(){    
        $.ajax({
            url: 'http://localhost/tumpangsari/pegawai/ajax/pegawai-hasil.php',
            data: {
                keyword: $('#nama-pegawai').val(),
            },
            type: 'POST',
            success: function(res) {
                $('.pegawai').html(res);
            },
            error: function(error) {
                console.log(error);
            }
        })
    });
});