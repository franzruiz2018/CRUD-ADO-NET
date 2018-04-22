
$(function() {   
    $("form[name='registro']").validate({       
        rules: {           
            NombreAlumno: "required",
            DniAlumno: {
                required: true,
                number: true
            }   
        },       
        messages: {
            NombreAlumno: "Please ingrese su nombre",
            DniAlumno: {
                required: "Ingrese su dni",
                number: "Solo debe contener números"
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
                number: true
            }
        },
        messages: {
            NombreAlumno: "Please ingrese su nombre para la actualizacion",
            DniAlumno: {
                required: "Ingrese su dni  para la actualizacion",
                number: "Solo debe contener números  en la actualizacion"
            }

        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});