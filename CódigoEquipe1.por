programa
{
	funcao inicio()
	{
		cadeia ativos[3] = {"Notebooks", "Monitores", "Teclados"}
		inteiro quantidade[3][2] = {{5, 10}, {15, 10}, {20, 15}}
		inteiro opcao = 0
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
					escreva("\nRelatório aqui\n")
					escreva("\n")
					pare
				caso 2:
					limpa()
					escreva("\nRecebimento aqui\n")
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