/**
 * + Adição
 * - Subtração
 * * Multiplicação
 * / Divisão
 * % Módulo
 * ** Exponenciação
 * ++ incremento
 * -- decremento
 */

/**
 * Precedência de operadores
 * 1. Parênteses
 * 2. Exponenciação
 * 3. Multiplicação e divisão
 * 4. Adição e subtração
 * 5. Atribuição
 */

console.log(2 + 2);
console.log(2 - 2);
console.log(2 * 2);
console.log(2 / 2);
console.log(2 % 2);
console.log(2 ** 2);

//atrbuição
let x = 3, y = 2;
x = x + y;
x += y;
console.log(x);

// Decremento
x = x - y
x -= y;
console.log(x);

x *= y;
console.log(x);

x /= y;
console.log(x);

x %= y;
console.log(x);

x **= y;
console.log(x);

// operadores de comparação
console.log(x == y);
if (x == y) {
    console.log("x é igual a y");
} else {
    console.log("x é diferente de y");
}
/**
 * == igual a
 * === valor e tipo igual a
 * != diferente de
 * !== valor e tipo diferente de
 * > maior que
 * < menor que
 * >= maior ou igual a
 * <= menor ou igual a
 * ? Operador ternário Então
 * : Operador ternário Senão
 * && Operador lógico E
 * || Operador lógico OU
 * ! Operador lógico NÃO
 */



if (1 === '1') {
    console.log('válido');
} else {
    console.log('inválido');
}

// exemplo operador ternário
1 === '1' ? console.log('válido') : console.log(' inválido');
//operadores lógicos
// Verifica se 1 é estritamente igual a '1' ou se 1 é igual a '1'
1 === '1' || 1 == '1' ? console.log('válido') : console.log(' inválido');

// Verifica se 1 é estritamente igual a '1' e se 1 é igual a '1'
1 === '1' && 1 == '1' ? console.log('válido') : console.log(' inválido');

// Verifica se 1 não é estritamente igual a '1' ou se 1 é igual a '1'
!(1 === '1') || 1 == '1' ? console.log('válido') : console.log(' inválido');

