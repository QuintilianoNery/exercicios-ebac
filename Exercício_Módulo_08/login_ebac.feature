#language: pt

Funcionalidade: Tela de Login
    Como aluno do portal EBAC
    Quero me autenticar
    Para que eu possa visualizar minhas notas

    Contexto:
        Dado que eu acesse a página de Autenticação do portal EBAC


    Cenario: Autenticação válida
        Quando eu digitar o usuário "quintiliano@ebac.com.br"
            E digitar a senha "123456"
        Então deve exibir uma mensagem de boas vintas  "Olá Quintiliano"


    Cenario: Usuário inesistente
        Quando eu digitar o usuário "aaaaquintiliano@ebac.com.br"
            E digitar a senha "123456"
        Então deve exibir uma mensagem de alerta "Usuário inesistente"

    Cenario: Senha inválida
        Quando eu digitar o usuário "aaaaquintiliano@ebac.com.br"
            E digitar a senha "abvcsssd"
        Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

    Esquema do Cenário: Autenticar múltiplos usuários
        Quando eu digitar o <usuario>
            E a <senha>
        Então deve exibir a <mensagem> de sucesso

        Exemplos:
            | usuario               | senha    | mensagem       |
            | "aluno01@ebac.com.br" | "123456" | "Olá Aluno 01" |
            | "aluno02@ebac.com.br" | "123456" | "Olá Aluno 02" |
            | "aluno03@ebac.com.br" | "123456" | "Olá Aluno 03" |