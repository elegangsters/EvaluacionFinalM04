$(document).ready(function() {
	$("select[name=usuTipo]").change(function () {
		var option = $("#validationTooltip04 option:selected").val();
		if(option == "Cliente"){
			$("#divInputCliente").show()
			$("#divInputPro").hide()
			$("#divInputAdm").hide()
		} else if(option == "Funcionario"){
			$("#divInputCliente").hide()
			$("#divInputPro").show()
			$("#divInputAdm").hide()
		} else if(option == "Administrativo"){
			$("#divInputCliente").hide()
			$("#divInputPro").hide()
			$("#divInputAdm").show()
		}
	})
})


