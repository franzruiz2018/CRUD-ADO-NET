//$(function () {
//    $("h2").addClass("textoVerde");
//    hideTableColumns('alumnosTabla', [0])
//});

function hideTableColumns(idTable, columnsIndexs) {
    $("#" + idTable + " tr").each(function () {
        for (var i = 0; i < columnsIndexs.length; i++) {
            var colIndex = columnsIndexs[i];
            $($(this).find("th")[colIndex]).hide();
            $($(this).find("td")[colIndex]).hide();
        }
    });
}

function showTableColumns(idTable, columnsIndexs) {
    $("#" + idTable + " tr").each(function () {
        for (var i = 0; i < columnsIndexs.length; i++) {
            var colIndex = columnsIndexs[i];
            $($(this).find("th")[colIndex]).show();
            $($(this).find("td")[colIndex]).show();
        }
    });
}

$(function() {   
    $("form[name='registro']").validate({       
        rules: {           
            NombreAlumno: "required",
            DniAlumno: {
                required: true,
                digits: true, //digits acepta numeros no decimales  a comparacion de number
                maxlength: 8
            }   
        },       
        messages: {
            NombreAlumno: "Please ingrese su nombre",
            DniAlumno: {
                required: "Ingrese su dni",
                digits: "Solo debe contener números",
                maxlength:"Maximo de 8 digitos"
            }
          
        },       
        submitHandler: function (form) {
            form.submit();
        }
    });
});

$(function () {
    $("form[name='editar']").validate({
        rules: {
            NombreAlumno: "required",
            DniAlumno: {
                required: true,
                number: true,
                maxlength: 8
            }
        },
        messages: {
            NombreAlumno: "Please ingrese su nombre para la actualizacion",
            DniAlumno: {
                required: "Ingrese su dni  para la actualizacion",
                number: "Solo debe contener números  en la actualizacion",
                maxlength:"Maximo de 8 digitos"
            }

        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});

function ImprimirPrintJQuery(ContenidoID) {
    hideTableColumns('alumnosTabla', [4])
    $('#' + ContenidoID).print();
    showTableColumns('alumnosTabla', [4])
}