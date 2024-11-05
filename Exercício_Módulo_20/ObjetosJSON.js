//Objetos JSON para javascript
var jsonJS = [
    {
        "nome": function() {
            return 'Marcos';
        },
        "idade": 30,
        "cidade": "São Paulo"
    },
    {
        "nome": "Maria",
        "idade": 42,
        "cidade": "Rio de Janeiro"
    }
]
// crie um log onde irá mostrar o último objeto da lista Json
console.log(jsonJS[1])

// retorna o nome da ultima pessoa
console.log(jsonJS[jsonJS.length - 1].nome);

// crie um log onde irá mostrar o primeiro objeto da lista Json com o nome pela função porém é bom para retornar de uma forma mais dinâmica os valores do objeto, mas para API não serve
console.log(jsonJS[0].nome());
//JSON válido para comunicação em api em rest
const jsonRest = {
    "nome": "daniel",
    "idade": 25
}

console.log(jsonRest);

//trabalhando com valores json
//tornar um objeto em string
console.log('JSON em String: ' + JSON.stringify(jsonJS));

//pegar um texto e transformar em objeto
let texto = '[{"idade":30,"cidade":"São Paulo"},{"nome":"Maria","idade":42,"cidade":"Rio de Janeiro"}]';

console.log(JSON.parse(texto));

