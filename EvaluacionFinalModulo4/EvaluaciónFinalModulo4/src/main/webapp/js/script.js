$(document).ready(function() {
    $.validator.addMethod("comienzaPor", function(value, element, parametro) {
        if(value.startsWith(parametro)){
          return true;
        } else {
          return false;
        }
      }, "Debe comenzar por {0}")
      
    $.validator.addMethod("dateon", function (value, element) {
        var comp = value.split('/');
        var d = parseInt(comp[0], 10);
        var m = parseInt(comp[1], 10);
        var y = parseInt(comp[2], 10);
        var date = new Date(y, m - 1, d);
        return this.optional(element) || (date.getFullYear() == y && date.getMonth() + 1 == m && date.getDate() == d);
    }, "La fecha ingresada debe tener un formato válido (dd/mm/aaaa)"),

    $.validator.addMethod("horaon", function (value, element) {
        var comp = value.split(':', 2);
        var hh = parseInt(comp[0], 10);
        var mm = parseInt(comp[1], 10);
        return this.optional(element) || ((hh >= 0 && hh <= 23) && (mm >= 0 && mm <= 59));
    }, "La hora ingresada debe tener formato válido (HH:MM)"),
      
	$("#formContacto").validate({
    rules: {
      nombre: {required: true, maxlength: 50},
      correo: {required: true, email: true},
      telefono: {required: true, minlength: 12, maxlength: 12, comienzaPor: "+569"},
      mensaje: {required: true, maxlength: 500}
    },

    messages: {
      nombre: {
      	required: "Este campo es obligatorio",
     	maxlength: "El nombre no puede tener mas de 50 caracteres",
      },
      correo: {
      	required: "Este campo es obligatorio",
      	email: "El dato ingresado debe ser un mail válido"
      },
      telefono: {
        required: "Este campo es obligatorio", 
        maxlenght: "El telefono no puede tener mas de 12 caracteres",
        minlength: "El telefono no puede tener menos de 12 caracteres",
        
      },
      mensaje: {
      	required: "Este campo es obligatorio",
      	maxlenght: "El mensaje no puede tener mas de 500 caracteres",
      },
    }
  })
  
	$("#formCapacitacion").validate({  
	rules: {
      capFecha: {required: true, maxlength: 50, dateon: true},
      capHora: {required: true, horaon: true},
      capLugar: {required: true, maxlength: 50},
      capDuracion: {required: true, number: true},
    },	
    messages: {
      capFecha: {
      	required: "Este campo es obligatorio",
      },
      capHora: {
      	required: "Este campo es obligatorio",
      },
      capLugar: {
        required: "Este campo es obligatorio", 
        maxlength: "El lugar no debe tener mas de 50 caracteres"
        
      },
      capDuracion: {
      	required: "Este campo es obligatorio",
      	number: "El dato ingresado debe ser un numero", 
      },
    }
  })  
  
  	$("#crearUsuario").validate({  
	rules: {
      uRun: {required: true, maxlength: 9, minlength: 9},
      usuNombre: {required: true, maxlength: 50},
      usuApellido: {required: true, maxlength: 50},
      usuFechaNacimiento: {required: true, dateon: true},
      usuTipo: {required: true},
    },	
    messages: {
      uRun: {
      	required: "Este campo es obligatorio",
      	maxlength: "El RUN no debe tener mas de 9 caracteres",
      	minlength: "El RUN no debe tener menos de 9 caracteres"
      },
      usuNombre: {
      	required: "Este campo es obligatorio",
      	maxlength: "El nombre no puede tener mas de 50 caracteres",
      },
      usuApellido: {
        required: "Este campo es obligatorio", 	
        maxlength: "El apellido no puede tener mas de 50 caracteres",
      },
      usuFechaNacimiento: {
      	required: "Este campo es obligatorio",
      },
      usuTipo: {
      	required: "Este campo es obligatorio",
      },
      
    }
  })      	
  
  
})	


