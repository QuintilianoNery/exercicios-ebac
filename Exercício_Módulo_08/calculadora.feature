#language: pt

Funcionalidade: Calculadora
    Como não sei fazer fazer contas de cabeça
    Quero usar calculadora
    Para somar dois números

    Contexto:
        Dado que estou na calculadora

    Esquema do Cenário: Somar dois números
        Quando eu somar <nun1> + <nun2>
        Então o resultado deve ser igual a <soma>

        Exemplos:
            | nun1 | nun2 | soma |
            | 5    | 2    | 7    |
            | 10   | 5    | 15   |
            | 2    | 2    | 4    |
            | 1    | 1    | 2    |
            | 0    | 0    | 0    |
            | -1   | -1   | -2   |
            | -1   | 1    | 0    |
            | 1    | -1   | 0    |
            | -1   | -1   | -2   |
            | 1    | 1    | 2    |
