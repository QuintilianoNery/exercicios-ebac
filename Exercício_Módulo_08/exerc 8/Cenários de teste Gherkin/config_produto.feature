#language: pt

Funcionalidade: [US-0001]Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração do produto

    Cenário: Seleção de cor do produto
        Quando clico no botão selecionar cor
        Então o sistema deve manter selecionado a cor do produto
            E com o botão destacado

    Cenário: Seleção de tamanho do produto
        Quando clico no botão selecionar tamanho
        Então o sistema deve manter selecionado o tamanho do produto
            E com o botão destacado

    Cenário: Seleção de quantidade do produto
        Quando clico no botão adicionar a quantidade do produto
        Então o sistema deve acescentar a quantidade do produto

    Esquema do Cenário: Seleção de produtos com tamanho e cor diferentes
        Quando seleciono uma blusa da cor <cor>
            E tamanho <tamanho>
            E adiciono a quantidade <quantidade>
        Então o sistema deve acescentar o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 1          |
            | azul     | G       | 2          |
            | azul     | GG      | 3          |
            | vermelho | M       | 1          |
            | amarelo  | G       | 2          |
            | verde    | GG      | 3          |

    Cenário: limpar configuração do produto selecionado
        Quando clico no botão limpar configuração
        Então o sistema deve limpar a configuração do produto
            E a quantidade do produto deve ser 1
            E a cor do produto não deve estar selecionada
            E o tamanho do produto não deve estar selecionado
