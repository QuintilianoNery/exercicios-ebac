// Listas 
//Itens na lista
let frutas = ['Pera', 'Manzana', 'Naranja', 'Uva'];
//adicionar itens com o push
frutas.push('Manzana', 'Pera', 'Naranja', 'Uva');
//total de frutas
console.log('Total de frutas: ' + frutas.length)
//primeira fruta
let primeiraFruta = frutas[0]
console.log('Primeira fruta: ' + primeiraFruta)
//última fruta
let ultimaFruta = frutas[frutas.length - 1]
console.log('Última fruta: ' + ultimaFruta)

//percorrer a lista
// percorrer a lista com um forEach
frutas.forEach(function (fruta, indice) {
    console.log('Frutas com ForEach: ' + fruta + ', Posição: ' + indice)
})

//arow function
frutas.forEach((fruta, indice) => {
    console.log('Frutas com Arrow Function: ' + fruta + ', Posição: ' + indice)
})

//remover o último item da lista
frutas.pop()
console.log('Total de frutas: ' + frutas.length)

//percorrendo com um for
for (let i = 0; i < frutas.length; i++) {
    console.log('Percorrendo toda a Lista: ' + frutas[i])
}