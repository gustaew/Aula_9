is_cpf = function(strCPF) {
	var Soma;
	var Resto;
	Soma = 0;
	var er = /\^|~|\?|,|\*|\.|\-/g;
	strCPF = strCPF.replace(er, "");
	if (strCPF == "00000000000") {
		document.getElementById('cpf').style.border = '2px solid rgb(202, 108, 108)';
		return false;
	}

	for (i = 1; i <= 9; i++)
		Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (11 - i);
	Resto = (Soma * 10) % 11;

	if ((Resto == 10) || (Resto == 11))
		Resto = 0;
	if (Resto != parseInt(strCPF.substring(9, 10))) {
		document.getElementById('cpf').style.border = '2px solid rgb(202, 108, 108)';
		return false;
	}

	Soma = 0;
	for (i = 1; i <= 10; i++)
		Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (12 - i);
	Resto = (Soma * 10) % 11;

	if ((Resto == 10) || (Resto == 11))
		Resto = 0;
	if (Resto != parseInt(strCPF.substring(10, 11))) {
		document.getElementById('cpf').style.border = '2px solid rgb(202, 108, 108)';
		return false;
	}
	document.getElementById('cpf').style.border = 'solid 2px #82c479';

	return true;
}
