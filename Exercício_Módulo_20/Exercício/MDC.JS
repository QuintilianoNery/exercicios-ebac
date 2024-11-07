/**
 * Calcular o MDC(máximo divisor comum) entre dois números
 * Funcionalidade criada para calcular o MDC, podendo ficar uma pasta junto com as outras functions
 * */
function calcularMDC(a, b) {// Enquanto b for diferente de 0,
    while (b !== 0) {// Troque o valor de a com o valor de b
        const temp = b;// b agora recebe o resto da divis o entre a e b
        b = a % b;// a agora recebe o valor de b (temp)
        a = temp;
    }
    return a; // Retorna o valor de a, pois b ser  0
}

//Neste caso estas informações poderiam estar em outro arquivo, e somente chamar a função para utiliza-la 
const num1 = 24;
const num2 = 18;
const mdc = calcularMDC(num1, num2);
console.log(`O MDC de ${num1} e ${num2}  ${mdc}`);