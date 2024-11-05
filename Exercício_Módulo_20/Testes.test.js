
const { strictEqual } = require('assert');

// Função para testar a igualdade estrita (===)
const testarIgualdadeEstrita = (valor1, valor2, mensagem) => {
  strictEqual(valor1, valor2, mensagem);
};

// Testes para o operador ternário
testarIgualdadeEstrita(1 === '1' ? 'são iguais' : ' não são iguais', ' não são iguais', "Comparação 1 === '1' falhou.");
testarIgualdadeEstrita(1 === 1 ? 'são iguais' : ' não são iguais', 'são iguais', "Comparação 1 === 1 falhou.");
testarIgualdadeEstrita('abc' === 'abc' ? 'são iguais' : ' não são iguais', 'são iguais', "Comparação 'abc' === 'abc' falhou.");
testarIgualdadeEstrita(true === false ? 'são iguais' : ' não são iguais', ' não são iguais', "Comparação true === false falhou.");