//-| Autor.............: Henrique Campos Jonck - 17 Anos                                 |-//
//-| Data de Inicio....: 10/08/2021                                                      |-//
//-| Guia de Linguagem.: C                                                               |-//
//-----------------------------------------------------------------------------------------//
//-| Este guia foi criado com o intuito de estudos e anotações.                          |-//
//-| Escrito no editor de código Visual Studio Code.                                     |-//
//-| Altamente recomendavel que se utilize a extensão "Better Comments" de "Aaron Bond". |-//


//-| INSTRUÇÕES PARA UTILIZAÇÃO |-//
=====================================================================================================================================|PG|
//! TITULO DA PAGINA !\\
//: Descrição da pagina.

//* SUB-TITULO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Descrição do sub-titulo.

//? SUB-SUBTITULO ----------------------------------------------------------------------------------------------------------------------|
//: Descrição do sub-subtitulo.

//TODO: SINTAXE
    Sintaxe dos Comandos  // Comentario a respeito da Sintaxe.

//TODO: EXEMPLO
    Exemplo dos Comandos  // Comentario a respeito do Exemplo.

//TODO: INSTRUÇÕES
    Informação Complementar


========================================================================================================================================|

//? SUMÁRIO GERAL
------------------------------------------
CAPITULO 1 - INTRODUÇÃO A LINGUAGEM

0.HISTORIA
0.INTRODUCAO

------------------------------------------
CAPITULO 2 - CONTEÚDO BASICO

0. BIBLIOTECAS
0. VARIAVEIS
0. ARRAY/VETOR
0. MATIRZ

------------------------------------------
CAPITULO 3 - ESTRUTURAS DE PROGRAMAÇÃO

0. ESTRUTURAS CONDICIONAIS
0. ESTRUTURAS DE REPETIÇÃO

------------------------------------------
CAPITULO 4 - FERRAMENTAS BASICAS

0. OPERADORES
0. MASCARAS DE FORMATAÇÃO


================================================================================================================================================================================|
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 0 - FUNÇÕES PRONTAS

0. BIBLIOTECAS
0. VARIAVEIS
0. ARRAY/VETOR
0. MATRIZ

=====================================================================================================================================|99|
//! BIBLIOTECAS
//: Bibliotecas são ferramentas que contem funções pré-definidas pelo sistema.

//* ADICIONANDO UMA BIBLIOTECA +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Para utilizarmos as funções contidas em uma biblioteca primeiro precisamos inclui-la.

//TODO: SINTAXE
    #include <NOME_BIBLIOTECA.h>

//TODO: EXEMPLO
    #include <stdio.h>


//? PRINCIPAIS BIBLIOTECAS -------------------------------------------------------------------------------------------------------------|   
    #include <stdio.h>   //: Manipulação de entrada e saida do usuário.
    #include <stdlib.h>  //:
    #include <stdbool.h> //: Adiciona o tipo de variavel "bool".

=====================================================================================================================================|99|
//! VARIAVEIS
//: Variaveis são espaços na memoria onde podemos armazenar uma série de informações.
//: Variaveis possuem diversos "Tipos" em que cada tipo de variavel armazena uma categoria de itens diferentes.

//* CRIANDO UMA VARIAVEL +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: SINTAXE
    TIPO NOME_VARIAVEL;

//TODO: EXEMPLO
    char C;           // Apenas criando uma variavel.
    int Numero = 17;  // Criando e ja definindo seu valor.
    int N1, N2, N3;   // Criando varias variaveis do mesmo tipo.


//? TIPOS DE VARIAVEIS -----------------------------------------------------------------------------------------------------------------|   
    char   //: Carcacteres Unicos, deve estar entre aspas.  | 'A', 'B', 'c'
    int    //: Numeros Inteiros, utiliza-se apenas numeros. | 10, 2021, -15
    float  //: Numeros Reais, casas decimais com [.].       | 3.14, -17.4950, 8.5
    double //:
    void   //: Sem Valor

=====================================================================================================================================|99|
//! CONSTANTES
//: Constantes são como variaveis, porem depois que seu valor é definido ele não poderá ser alterado.

//* CRIANDO UMA CONSTANTE ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Constantes devem ser criadas fora do escopo do MAIN.

//TODO: SINTAXE
    #define NOME_CONSTANTE VALOR;

//TODO: EXEMPLO
    #define PI 3.14;

=====================================================================================================================================|99|
//! ARRAY/VETOR
//: Arrays são como super variaveis em que podemos armazenar multiplos valores dentro dele.

//* CRIANDO UM ARRAY +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Definimos um Vetor decidindo sua quantidade maxima de itens e seu tipo que será aplicado para todos os itens do Array. 

//TODO: SINTAXE
    TIPO NOME_ARRAY[TAMANHO];

//TODO: EXEMPLO
    int Ano[8];


//* CHAMANDO UM ARRAY ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Quando chamarmos um Array buscamos um item pelo seu indice que SEMPRE inicia em 0.

//TODO: SINTAXE
    NOME_ARRAY[INDICE];

//TODO: EXEMPLO
    Ano[0] = 2021;  // Primeiro item do Array.
    Ano[7] = 1750;  // Ultimo item do Array.
    int Ano_Atual = Ano[0];

=====================================================================================================================================|99|
//! MATRIZ
//: Matrizes são como Arrays (Pg: x) porem com itens contidos em Linhas e Colunas.

//* CRIANDO UMA MATRIZ ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Qundo criamos uma Matriz informamos o numero maximo de linhas e tambem o numero maximo de colunas.

//TODO: SINTAXE
    TIPO NOME_MATRIZ[NUMERO_LINHAS][NUMERO_COLUNAS];

//TODO: EXEMPLO
    int Tabela[3][4]; // Cria uma Matriz de 3 Linhas e 4 Colunas.


//* CHAMANDO UMA MATRIZ ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Quando chamarmos uma Matriz buscamos um item pelo seu indice que SEMPRE inicia em 0.

//TODO: SINTAXE
    NOME_MATRIZ[LINHA][COLUNA];

//TODO: EXEMPLO
    Tabela[2][1] = 81;
    Tabela[1][4] = 100;
    int Centena = Tabela[1][4];


=====================================================================================================================================|99|
//! FUNÇÕES
//: Funções são blocos de códigos nomeados que podemos executar quantas vezes quisermos apenas chamando pelo seu nome.
//: Tambem podemos informar PARAMETROS para informar 

//* CRIANDO A FUNÇÃO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: INSTRUÇÕES
    1 // Funções devem ser criadas fora do escopo da MAIN ou em outros arquivos.
    2 // PARAMETROS e RETURNOS são opçionais.

//TODO: SINTAXE
    RETORNO NOME_FUNÇÃO( PARAMETRO )
    {
        /* Bloco de comandos */
    }

//TODO: EXEMPLOS
    void Meu_Nome()
    {                      
        printf("Henrique Campos Jonck");
    }


//? PARAMETROS -------------------------------------------------------------------------------------------------------------------------|
//: Parametros são Informações/Valores externos que passamos para uma função para que ela possa utilizar internamente.

//TODO: EXEMPLO
    void Sua_Idade(int idade)
    {            
        printf("Sua idade: %d", idade); 
    }


//? RETORNOS ---------------------------------------------------------------------------------------------------------------------------|
//: Retornos são valores que uma função irá enviar de volta para o mesmo local de onde esta função foi chamada.
//: Se não quisermos retornar nada, utilizamos a palavra reservada "void", se não, informamos o tipo do valor que será retornado.

//TODO: EXEMPLO
    int Somar(int n1, int n2)
    {
        int res = n1 + n2;
        return res;
    }


//* CHAMANDO A FUNÇÃO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Quando quisermos executar uma função apenas chamamos o seu nome e informamos os Parametros caso necessario.

//TODO: SINTAXE
    NOME_FUNÇÃO( PARAMETRO )

//TODO: EXEMPLO
    int main()
    {
        Meu_Nome();              // Imprime na tela: "Henrique Campos Jonck".
        Sua_Idade(17);           // Imprime na tela: "Sua idade: 17".

        int res = Somar(10, 20); // Retorna para "res" = 30.
        printf("%d", res);
    }


=====================================================================================================================================|99|
//! PONTEIROS
//: Ponteiros são utilizados para manipular arquivos de Texto ou Binarios. Com eles Escrevemos e Lemos nestes arquivos.

//* CRIANDO O PONTEIRO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: SINTAXE
    FILE *NOME_PONTEIRO;

//TODO: EXEMPLO
    FILE *jogadores;

//* ABRINDO O PONTEIRO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Para abrir um ponteiro informamos o nome do Ponteiro e o nome do arquivo que será criado ou acessado(Informe o caminho do arquivo).
//: Tambem informamos o modo de manipulação (Leitura, Escrita, Anexagem).

//TODO: SINTAXE
    PONTEIRO = fopen("NOME_ARQUIVO", "MODO");

//TODO: EXEMPLO
    jogadores = fopen("Brasil", "w"); // Criará um arquivo (Brasil.txt) no ponteiro "jogadores" e informa que será no modo de escrita.


//? MODOS ------------------------------------------------------------------------------------------------------------------------------|
    R  // Abre um arquivo de TEXTO para leitura.
    W  // Abre um arquivo de TEXTO para escrita, será reescrito. Cria o arquivo caso ele não exista.
    A  // Abre um arquivo de TEXTO para anexagem, continua do ponto em que parou. Cria o arquivo caso ele não exista.

    R+  //
    W+  //: Abrem um arquivo de TEXTO para Leitura e Escrita. Cria o arquivo caso ele não exista. 
    A+  //

    Rb  // Abre um arquivo BINARIO para leitura.
    Wb  // Abre um arquivo BINARIO para escrita, será sobreescrito.
    Ab  // Abre um arquivo BINARIO para escrita, continua do ponto em que parou.


//* FECHAR O PONTEIRO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Importante fechar os ponteiros para que não haja corrompimento nos arquivos.

//TODO: SINTAXE
    fclose(PONTEIRO);

//TODO: EXEMPLO
    fclose(jogadores);


//* ESCREVER NO ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: SINTAXE
    fprintf(PONTEIRO, "TEXTO");
    fprintf(PONTEIRO, "MASCARA %d", VARIAVEL)

//TODO: EXEMPLO
    fprintf(jogadores, "Numero em uma partida de futebol\n");
    fprintf(jogadores, "Numero 1: %d", 17)


//* LER O ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: SINTAXE
    fscanf(PONTEIRO, "FORMATOS", &VARIAVEIS);


================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 0 - ESTRUTURAS DE PROGRAMAÇÃO

0. ESTRUTURAS CONDICIONAIS
0. ESTRUTURAS DE REPETIÇÃO

=====================================================================================================================================|99|
//! ESTRUTURAS CONDICIONAIS
//: Estruturas Condicionais são blocos de comandos que são executados apenas em determinados casos.

//* CONDICIONAL - IF +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta é uma condicional que contem duas bifurcações de código, uma para VERDADEIRO e outra para FALSO.

//TODO: TRADUÇÕES
    SE     = if
    MAS SE = else if  // Opcional
    SENÃO  = else     // Opcional

//TODO: SINTAXE
    if (CONDIÇÃO_1)
    {
        //: Código para Verdadeiro na Primeira Condição;
    }
    else if (CONDIÇÃO_2)
    {
        //: Código para Verdadeiro na Segunda Condição;
    }
    else
    {
        //: Código para Falso em Todas as Condições;    
    }

//TODO: EXEMPLO
    if (numero1 > numero2)
    {
        printf("O primeiro numero é maior do que o segundo");
    }
    else if (numero1 == numero2)
    {
        printf("O primeiro numero é igual ao segundo");
    }
    else
    {
        printf("O primeiro numero é menor do que o segundo");
    }

//* CONDICIONAL - SWITCH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta condicional recebe um parametro e executa um bloco de comando para cada posivel CASO daquele parametro.

//TODO: TRADUÇÕES
    MUDE    - switch
    CASO    - case     // Opcional
    TERMINE - break    // Opcional
    RESTO   - default  // Opcional

//TODO: SINTAXE
    switch (VARIAVEL)
    {
        case VARIANTE_1:
            //: Código caso a propriedade atenda ao caso 1;
        break;

        case VARIANTE_2:
        case VARIANTE_3:
            //: Código caso a propriedade atenda ao caso 2 ou 3, repita quantas vezes desejar;
        break;        

        default:
            //: Código caso nenhuma variante corresponda a algo na propriedade;
        break;
    }

//TODO: EXEMPLO
    switch (idades)
    {
        case 10:
            printf("Voçê tem 10 anos!");
        break;

        case 47:
        case 52:
            printf("Voçê tem 47 ou 52 anos!");
        break;        

        default;
            printf("Não sabemos a sua idade");
        break;
    }

=====================================================================================================================================|99|
//! ESTRUTURAS DE REPETIÇÃO
//: Estruturas de Repetição são meios de se repetir um certo bloco de comando determinas vezes.

//TODO: TRADUÇÕES
    FAÇA     - do
    ENQUANTO - while
    PARA     - for

//* REPETIÇÃO - WHILE ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta estrutura avalia uma condição e repete um bloco de comandos ENQUANTO sua condição for VERDADEIRA.
//: Avalia a condição primeiro e depois executa o bloco de código.

//TODO: SINTAXE
    while (Condição)
    {
        //: Código que será repetido enquanto VERDADEIRO;
    }

//TODO: EXEMPLO
    while (numero < 10)
    {
        printf("%d", numero);
        numero++;
    }

//* REPETIÇÃO - DO WHILE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta estrutura avalia uma condição e repete um bloco de comandos ENQUANTO sua condição for VERDADEIRA.
//: Primeiro executa o código e depois avalia a condição, realiza pelo menos uma vez.

//TODO: SINTAXE
    do
    {
        //: Código que será repetido enquanto VERDADEIRO;
    } 
    while (Condição);

//TODO: EXEMPLO
    do
    {
        printf("%d", numero);
        numero++;
    }    
    while (numero < 10);

//* REPETIÇÃO - FOR ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta estrutura cria o contador, avalia ele e incrementa seu valor ao mesmo tempo em uma unica linha.

//TODO: SINTAXE
    for(Variavel; Condição; Incremento)
    {
        //: Codigo que será repetido enquanto VERDADEIRO;
    }

//TODO: EXEMPLO
    for(int cont = 0; cont <= 10; cont++)
    {
        printf("%d", cont);
    }


=================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 0 - FERRAMENTAS BASICAS

0. OPERADORES
0. CONCATENAÇÃO
0. MASCARAS DE FORMATAÇÃO
0. CARACTERES DE CONTROLE


=====================================================================================================================================|99|
//! OPERADORES

//* OPERADORES ARITMÉTICOS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Operadores utilizados para operações matematicas.

    + Adição
    - Subtração
    * Multiplicação
    / Divisão
    % Resto da Divisão          

//* OPERADORES DE ATRIBUIÇÃO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Atribuem um valor a si mesmo.

    N += 2  //: N = N + 2
    N -= 2  //: N = N - 2
    N *= 2  //: N = N * 2
    N /= 2  //: N = N / 2
    N %= 2  //: N = N % 2
    N **= 2 //: N = N ** 2

    --N Pós Decremento //: Decrementa a variavel em 1 e depois retorna seu valor.
    ++N Pós Incremento //: Incrementa a variavel em 1 e depois retorna seu valor.

    N-- Pré Decremento   //: Retorna a variavel e depois Decrementa em 1.
    N++ Pré Incremento   //: Retorna a variavel e depois Incrementa em 1.

//* OPERADORES RELACIONAIS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Operadores utilizados para comparar valores.

    < Menor que
    > Maior que
    <= Menor ou Igual que
    >= Maior ou Igual que
    == Igualdade
    != Diferença

//* OPERADORES LÓGICOS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Operadores utilizados para operações lógicas em programação.
    
    AND = & ou && //: Retorna verdadeiro se todas as comparações forem verdadeiras.
    OR  = | ou || //: Retorna verdadeiro se uma ou mais comparações forem verdadeiras.
    NOT = ! ou ~  //: Inverte o estado de uma operação (Verdadeiro -> Falso e vice-versa).
    XOR = ^       //: Retorna verdadeiro se as comparações forem diferentes entre si.

//* OPERADORES BIT A BIT +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Desloca as casas binarias de um valor numerico.
    >>
    <<


=====================================================================================================================================|99|
//! CONCATENAÇÃO.
//: Concatenação é quando precisamos unir dois ou mais textos em um.

//TODO: INSTRUÇÕES
    Simbolo de Concatenção [+]

//TODO: SINTAXE
    VALOR_1 + VALOR_2;

//TODO: EXEMPLO
    "Numero: " + "18";
    "Meu nome é: " + Nome;


=====================================================================================================================================|99|
//! MASCARA DE FORMATAÇÃO
//: Estes operadores convertem um valor de um tipo de variavel para outro tipo.

    "%c"  //: Caractere Simples     - 
    "%s"  //: Cadeia de Caracteres  - 
    "%d"  //: Decimal               - ("%.2d" - Define o numero de casas decimais antes da virgula)
    "%e"  //: Notação Cientifica    - 
    "%f"  //: Ponto Flutuante       - ("%.2f" - Define o numero de casas decimais depois da virgula)
    "%o"  //: Octal                 - 
    "%u"  //: Decimal sem Sinal     -
    "%x"  //: Hexadecimal           -
    "%ld" //: Decimal Longo         -
    "%lf" //: Ponto Flutuante Longo -


=====================================================================================================================================|99|
//! CARACTERES DE CONTROLE
//: Estes caracteres tem a função de realizar alguma tarefa especifica

    "\n" //: Nova Linha.
    "\t" //: Tabulação horizontal (tab).
    "\b" //: Backspace.
    "\r" //: 
    "\f" //: 
    "\0" //: NULL.
    "\v" //: Tabulação vertical.
    "\a" //: Alerta

    "\\" //: Permite escrever - Barra invertida.
    "\"" //: Permite escrever - Aspa dupla.
    "\'" //: Permite escrever - Aspa simples.


=================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 0 - FUNÇÕES PRONTAS

0. IMPRIMIR NA TELA
0. CAPTURAR TELA
0. CAPTURAR CADEIA DE CARACTERES
0. LIMPAR MEMORIA

=====================================================================================================================================|99|
//! IMPRIMIR NA TELA
//: Função para impresão de caracteres no console do aplicativo.

//TODO: SINTAXE
    printf("TEXTO");                //: Metodo 1 - Apenas imprime a cadeia de caracteres informada.
    printf("MARCARA %d", VARIAVEL); //: Metodo 2 - Adiciona uma Marcara de Formatação (Pg: x) e Preenche ela com o valor da Variavel.

//TODO: EXEMPLO
    printf("Texto");          
    printf("Numero: %d", N1); 


=====================================================================================================================================|99|
//! CAPTURAR TELA
//: Captura os valores digitados pelo usuário no console.

//TODO: SINTAXE
    scanf("MASCARA", &VARIAVEL);

//TODO: EXEMPLO
    scanf("%d", &Numero); //: Utilizamos [&] para informar que queremos armazenar na memoria.
    scanf("%s", Nome);    //: Apenas valores de string (%s) não precisão do sinal de [&].


=====================================================================================================================================|99|
//! CAPTURAR CADEIA DE CARACTERES
//: Utilizamos esta função para capturar uma cadeia de caracteres digitada pelo usuário no console.
//: É utilizada em conjunto de Arrays (Pg: x).

//TODO: SINTAXE
    fgets(VARIAVEL, TAMANHO, stdin);

//TODO: EXEMPLO
    char Nome[50];
    fgets(Nome, 50, stdin);


=====================================================================================================================================|99|
//! LIMPAR A MEMORIA
//: Esta função limpa todo o lixo de variaveis antigas contidas na memória.

//TODO: SINTAXE
    setbuf(stdin, NULL)


