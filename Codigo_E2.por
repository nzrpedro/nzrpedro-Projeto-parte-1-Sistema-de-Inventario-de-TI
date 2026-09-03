programa
{
    funcao inicio()
    {
        cadeia ativos[3]
        inteiro estoque[3][2]
        inteiro opcao

        ativos[0] = "Notebooks"
        ativos[1] = "Monitores"
        ativos[2] = "Teclados"


        estoque[0][0] = 3
        estoque[0][1] = 10

        estoque[1][0] = 8
        estoque[1][1] = 5

        estoque[2][0] = 15
        estoque[2][1] = 10

        opcao = 0

        enquanto (opcao != 3)
        {
            escreva("\n========================================\n")
            escreva("SISTEMA DE GESTAO DE ATIVOS DE TI\n")
            escreva("========================================\n")
            escreva("1 - Emitir Relatorio\n")
            escreva("2 - Registrar Recebimento\n")
            escreva("3 - Encerrar Sistema\n")
            escreva("Digite a opcao desejada: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    escreva("Logica do relatorio entrara aqui\n") // colocar logica
                pare
                caso 2:
                    escreva("Logica do registro de recebimento entrara aqui\n") //colocar logica
                pare
                caso 3:
                    escreva("Encerrando o sistema...\n")
                pare
                caso contrario:
                    escreva("Opcao invalida! Por favor, escolha 1, 2 ou 3.\n")
                pare
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */