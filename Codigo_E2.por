programa
{
    funcao inicio()
    {
        cadeia ativos[3]
        inteiro estoque[3][2]
        inteiro opcao
        inteiro idEquipamento, qtdChegando

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
                    escreva("\n--- RELATORIO DE ESTOQUE DE TI ---\n")
                    para (inteiro i = 0; i < 3; i++)
                    {
                        escreva("ID: ", i, " | Nome: ", ativos[i], " | Qtd Atual: ", estoque[i][0], " | Qtd Minima: ", estoque[i][1], "\n")
                        
                        se (estoque[i][0] < estoque[i][1])
                        {
                            escreva("⚠ Estoque crítico! Necessário abrir chamado de compra.\n")
                        }
                    }
                pare
                
                caso 2:
                    escreva("\n--- REGISTRAR RECEBIMENTO ---\n")
                    escreva("Digite o ID do equipamento (0 a 2): ")
                    leia(idEquipamento)

                    se (idEquipamento >= 0 e idEquipamento <= 2)
                    {
                        escreva("Digite a quantidade que esta chegando: ")
                        leia(qtdChegando)

                        estoque[idEquipamento][0] = estoque[idEquipamento][0] + qtdChegando
                        escreva("Recebimento registrado com sucesso! Nova quantidade de ", ativos[idEquipamento], ": ", estoque[idEquipamento][0], "\n")
                    }
                    senao
                    {
                        escreva("Erro: ID inválido! O ID deve ser entre 0 e 2.\n")
                    }
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
