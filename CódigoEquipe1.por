programa
{
	funcao inicio()
	{
		cadeia ativos[3] = {"Notebooks", "Monitores", "Teclados"}
		inteiro quantidade[3][2] = {{5, 10}, {15, 10}, {20, 15}}
		inteiro opcao = 0
		inteiro i = 0
		inteiro item = 0
		inteiro qtdRecebida = 0

		enquanto(opcao != 3)
		{
			escreva("1 - Emitir Relatório\n")
			escreva("2 - Registrar Recebimento\n")
			escreva("3 - Encerrar Sistema\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escolha(opcao)
			{
				caso 1:
					limpa()
					escreva("\n==============================================\n")
					escreva("RELATÓRIO DE ATIVOS DE TI\n")
					escreva("==============================================\n")

					para(i = 0; i < 3; i++)
					{
						escreva("\nAtivo: ", ativos[i], "\n")
						escreva("Quantidade Atual: ", quantidade[i][0], "\n")
						escreva("Quantidade Mínima: ", quantidade[i][1], "\n")

						se(quantidade[i][0] < quantidade[i][1])
						{
							escreva(">>> ALERTA: Estoque ABAIXO do mínimo! Necessário repor.\n")
						}
						senao
						{
							escreva("Situação: Estoque OK.\n")
						}
					}
					escreva("\n==============================================\n")
					pare

				caso 2:
					limpa()
					escreva("\n==============================================\n")
					escreva("REGISTRO DE RECEBIMENTO\n")
					escreva("==============================================\n")

					para(i = 0; i < 3; i++)
					{
						escreva(i + 1, " - ", ativos[i], "\n")
					}

					escreva("\nDigite o número do ativo que deseja atualizar: ")
					leia(item)

					se(item >= 1 e item <= 3)
					{
						item = item - 1

						escreva("Digite a quantidade recebida de ", ativos[item], ": ")
						leia(qtdRecebida)

						quantidade[item][0] = quantidade[item][0] + qtdRecebida

						escreva("\nRecebimento registrado com sucesso!\n")
						escreva("Nova quantidade de ", ativos[item], ": ", quantidade[item][0], "\n")
					}
					senao
					{
						escreva("\nItem inválido! Escolha um número entre 1 e 3.\n")
					}
					pare

				caso 3:
					limpa()
					escreva("\nSistema encerrado.\n")
					pare

				caso contrario:
					limpa()
					escreva("\nOpção não existente! Digite 1, 2 ou 3.\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 725; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
