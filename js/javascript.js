/**
 * @ Esse método irá enviar o CEP informado e retornará com os dados
 *   como cidade, logradouro, etc.
 */

function cep_valida(){
    CEP = $("#cep").val();

    $.ajax({
        url: "https://viacep.com.br/ws/"+CEP+"/json/",
        type: 'post',
        dataType: 'jsonp',
        contentType: 'application/json',
        success: function (data) {
            $("#rua").val(data.logradouro);
            $("#bairro").val(data.bairro);
            $("#cidade").val(data.localidade);
            $("#uf").val(data.uf);
            //$('#rua').attr("disabled", true);
            //$('#bairro').attr("disabled", true);
            //$('#cidade').attr("disabled", true);
            //$('#uf').attr("disabled", true);
            
        },
    });
 }



