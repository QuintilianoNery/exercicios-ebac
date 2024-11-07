//Declaração de function
function teste(param) {
    return `Olá ${param}!`;
}
console.log(teste('teste'));

//Função de expressão anônima
(function (param) {
    console.log(param);
})('Olá Automática!');

// atribuir a função a uma variável

var teste = function teste(param) {
    return `Olá ${param}!`;
}
console.log(teste('olá mundo teste'));

//Arrow function dobro de dois valores
var dobro = (valor) => {
    return valor * 2;
}
console.log('O dobro do valor é: ' + dobro(4));

// Dobro 2
const dobro2 = valor => valor * 2;
console.log('O dobro2 do valor é: ' + dobro2(4));

let hello = () => console.log('hello');
hello();

let hello2 = _ => console.log('hello');
hello();

// função que adiciona trÊs valores a, b e c
const adiciona = (a, b, c) => a + b + c;
console.log(adiciona(1, 2, 3));

// valor padrão multiplicação
const multiplicacao = (a = 1, b = 2, c = 3) => a * b * c;
console.log(multiplicacao(2, 2, 2));
console.log(multiplicacao(5));