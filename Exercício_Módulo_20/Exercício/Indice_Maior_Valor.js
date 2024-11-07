//Identificação do maior e menor indice do array
//Declaração dos valores do array
let array = [8, 5, 2, 9, 1, 6, 4, 10, 7, 3];
//Inicializa a variável Maior e menor
let maior = array[0];
let menor = array[0];
//Laço de reperição para verificar cada elemento do array
for (let i = 0; i < array.length; i++) {
    //Verifica se o valor do array[i] é maior
    if (array[i] > maior) {
        maior = array[i];
    }
    //Verifica se o valor do array[i] é menor
    if (array[i] < menor) {
        menor = array[i];
    }
}
console.log(`O maior valor é ${maior} e o menor valor é ${menor}`);