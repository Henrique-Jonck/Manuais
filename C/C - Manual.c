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
//& Descrição da pagina.

//* SUB-TITULO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Descrição do sub-titulo.

//? SUB-SUBTITULO ----------------------------------------------------------------------------------------------------------------------|
// Descrição do sub-subtitulo.

//TODO: SINTAXE
    Sintaxe dos Comandos  // Comentario a respeito da Sintaxe.

//TODO: EXEMPLO
    Exemplo dos Comandos  // Comentario a respeito do Exemplo.

//TODO: INSTRUÇÕES
    Informação Complementar


========================================================================================================================================|

//? SUMÁRIO GERAL
+----------------------------------------+
|   CAPITULO 1 - INTRODUÇÃO A LINGUAGEM  |
+----------------------------------------+
|                                        |
| 0. INTRODUÇÃO                          |
| 0. HISTORIA                            |
|                                        |
+----------------------------------------+

+----------------------------------------+
|      CAPITULO 2 - CONTEÚDO BASICO      |
+----------------------------------------+
|                                        |
| 0. VARIAVEIS                           |
| 0. CONSTANTES                          |
| 0. ARRAY/VETOR                         |
| 0. MATRIZ                              |
| 0. PONTEIROS                           |
|                                        |
+----------------------------------------+

+----------------------------------------+
|     CAPITULO 3 - COMANDOS AVANÇADOS    |
+----------------------------------------+
|                                        |
| 0. STRUCTS                             |
| 0. TYPEDEF                             |
| 0. SIZEOF                              |
|                                        |
+----------------------------------------+

+----------------------------------------+
| CAPITULO 4 - ESTRUTURAS DE PROGRAMAÇÃO |
+----------------------------------------+
|                                        |
| 0. ESTRUTURAS CONDICIONAIS             |
|    + IF                                |
|    + SWITCH                            |
|                                        |
| 0. ESTRUTURAS DE REPETIÇÃO             |
|    + WHILE                             |
|    + DO WHILE                          |
|    + FOR                               |
|                                        |
| 0. FUNÇÕES                             |
|                                        |
+----------------------------------------+

+----------------------------------------+
|    CAPITULO 5 - ESTRUTURAS DE DADOS    |
+----------------------------------------+
|                                        |
| 0. ESTRUTURA EM NÓ                     |
| 0. ESTRUTURA EM PILHA                  |
| 0. ESTRUTURA EM FILA                   |
|                                        |
+----------------------------------------+

+----------------------------------------+
|     CAPITULO 6 - INFORMAÇÕES ÚTEIS     |
+----------------------------------------+
|                                        |
| 0. PALAVRAS RESERVADAS                 |
| 0. OPERADORES                          |
| 0. CONCATENAÇÃO                        |
| 0. MASCARAS DE FORMATAÇÃO              |
| 0. CARACTERES DE CONTROLE              |
|                                        |
+----------------------------------------+

+----------------------------------------+
|  CAPITULO 7 - MANIPULAÇÃO DE ARQUIVOS  |
+----------------------------------------+
|                                        |
| 0. PONTEIRO DE ARQUIVO                 |
| 0. ARQUIVO TEXTO                       |
| 0. ARQUIVO BINARIO                     |
|                                        |
+----------------------------------------+

+----------------------------------------+
|   CAPITULO 8 - BIBLITECAS E FUNÇÕES    |
+----------------------------------------+
|                                        |
| 0. BIBLIOTECAS                         |
| 0. BIBLIOTECA STDIO.H                  |
|   + SAÍDA/IMPRESSÃO                    |
|	+ ENTRADA/CAPTURA                    |
|	+ LIMPAR MEMORIA                     |
|	+ PONTEIRO DE ARQUIVO                |
|	+ ARQUIVO TEXTO                      |
|	+ ARQUIVO BINARIO                    |
|	                                     |
| 0. BIBLIOTECA STDLIB.H                 |
|	+ EXECUÇÃO DO SHELL                  |
|                                        |
| 0. BIBLIOTECA LOCALE.H                 |
|	+ PADRÃO DE CARACTERES               |
|                                        |
| 0. BIBLIOTECA STRING.H                 |
|	+ TAMANHO DE UMA STRING              |
|	+ COPIAR STRING                      |
|	+ DIVIDIR STRING                     |
|	+ COMPARAR STRINGS                   |
|	+ CONCATENAR STRINGS                 |
|	+ CONVERTER PARA INTEIRO             |
|                                        |
+----------------------------------------+


================================================================================================================================================================================|
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 1 - INTRODUÇÃO A LINGUAGEM

0. INTRODUÇÃO
0. HISTORIA
0. PALAVRAS RESERVADAS

=====================================================================================================================================|99|
//! INTRODUÇÃO
//:

=====================================================================================================================================|99|
//! HISTORIA
//:

================================================================================================================================================================================|
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 2            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 2 - CONTEÚDO BASICO

0. VARIAVEIS
0. CONSTANTES
0. ARRAY/VETOR
0. MATRIZ
0. PONTEIROS

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
    char        //: Carcacteres Unicos, deve estar entre aspas.  | 'A', 'B', 'c'
    short       //:
    int         //: Numeros Inteiros, utiliza-se apenas numeros. | 10, 2021, -15
    long        //:
    float       //: Numeros Reais, casas decimais com [.].       | 3.14, -17.4950, 8.5
    double      //:
    long double //:


=====================================================================================================================================|99|
//! CONSTANTES
//: Constantes são como variaveis, porem depois que seu valor é definido ele não poderá ser alterado.

//* CRIANDO UMA CONSTANTE ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Constantes devem ser criadas fora do escopo do MAIN.

//TODO: SINTAXE [ESCOPO - GLOBAL]
    #define NOME_CONSTANTE VALOR;

//TODO: EXEMPLO
    #define PI 3.14;


=====================================================================================================================================|99|
//! ARRAY/VETOR
//: Arrays são como super variaveis em que podemos armazenar multiplos valores dentro dele.

//* CRIANDO UM ARRAY +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Definimos um Vetor decidindo sua quantidade maxima de itens e seu tipo que será aplicado para todos os itens do Array. 

//TODO: SINTAXE
    TIPO NOME_ARRAY[ TAMANHO ];

//TODO: EXEMPLO
    int Ano[8];


//* CHAMANDO UM ARRAY ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Quando chamarmos um Array buscamos um item pelo seu indice que SEMPRE inicia em 0.

//TODO: SINTAXE
    NOME_ARRAY[ INDICE ];

//TODO: EXEMPLO
    Ano[0] = 2021;  // Primeiro item do Array.
    Ano[7] = 1750;  // Ultimo item do Array.
    int Ano_Atual = Ano[0];


//* STRINGS EM ARRAYS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Strings são cadeias de caracteres (texto), em linguagem C criamos uma string definindo um array do tipo "char".

//? CRIANDO UMA STRING -----------------------------------------------------------------------------------------------------------------|
//: Quando criamos uma string informamos seu tamanho que será o numero maximo de caracteres aceitos nesta string.

//TODO: SINTAXE
    char NOME_STRING[ TAMANHO ];

//TODO: EXEMPLO
    char Texto[30];
    

//? CHAMANDO UMA STRING ----------------------------------------------------------------------------------------------------------------|
//: Quando chamamos uma string não devemos informar indice, caso contrario retornará um caractere com em um "Char".

//TODO: SINTAXE
    STRING = "VALOR";

//TODO: EXEMPLO
    Texto = "Esta é minha string!";

    printf("%s", Texto);    // Imprime: "Esta é minha string!".
    printf("%c", Texto[0]); // Imprime: "E".


=====================================================================================================================================|99|
//! MATRIZ
//: Matrizes são como Arrays (Pg: x) porem com itens contidos em Linhas e Colunas.

//* CRIANDO UMA MATRIZ +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Qundo criamos uma Matriz informamos o numero maximo de linhas e tambem o numero maximo de colunas.

//TODO: SINTAXE
    TIPO NOME_MATRIZ[ NUMERO_LINHAS ][ NUMERO_COLUNAS ];

//TODO: EXEMPLO
    int Tabela[3][4]; // Cria uma Matriz de 3 Linhas e 4 Colunas.


//* CHAMANDO UMA MATRIZ ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Quando chamarmos uma Matriz buscamos um item pelo seu indice que SEMPRE inicia em 0.

//TODO: SINTAXE
    NOME_MATRIZ[ LINHA ][ COLUNA ];

//TODO: EXEMPLO
    Tabela[2][1] = 81;
    Tabela[1][4] = 100;
    int Centena = Tabela[1][4];


=====================================================================================================================================|99|
//! PONTEIROS
//: Ponteiros são utilizados para apontar/indicar o endereço na memoria de uma variavel para que possamos altera-la remotamente.

//TODO: INSTRUÇÕES
     PONTEIRO // Atribuição dentro do ponteiro, aqui armazenamos o endereço.
    *PONTEIRO // Atribuição dentro do endereço, aqui alteramos a variavel apontada.
    &VARIAVEL // Retorna o endereço na memoria da variavel indicada.

//* CRIANDO O PONTEIRO ++++++++++++++++++++++++++++++++++++++++++-++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Criamos um pontero do mesmo modo que uma variavel, com a exceção em que adicionamos um asterisco antes do nome do ponteiro.

//TODO: SINTAXE
    TIPO *NOME_PONTEIRO;

//TODO: EXEMPLO
    int *pont;


//* ARMAZENAR ENDEREÇO +++++++++++++++++++++++++++++++++++++++++++++++++-+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Depois informamos o endereço ao qual o ponteiro esta apontando, assim conseguimos acessar a variavel remotamente.
//: Para isso utilizamos um ponteiro sem "*" e tambem o simbolo de "&" na variavel para que ela retorne seu endereço.

//TODO: SINTAXE
    PONTEIRO = &VARIAVEL;

//TODO: EXEMPLO
    pont = var;


//* ATRIBUIR NO ENDEREÇO +++++++++++++++++++++++++++++++++++++++++++++++++-+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Com tudo pronto podemos alterar o valor de uma variavel navegando pelo endereço que o ponteiro aponta.

//TODO: SINTAXE
    *PONTEIRO = VALOR;

//TODO: EXEMPLO
    *pont = 10;


//? RESUMO -----------------------------------------------------------------------------------------------------------------------------|   
    int main()
    {
        int Dia;           // 1° Criamos a variavel "Dia".
        int *Ponteiro;     // 2° Criamos o ponteiro "Ponteiro".

        Dia = 21;          // 3° Atribuimos o valor "21" a variavel "Dia".
        Ponteiro = &A;     // 4° Atribuimos o endereço da variavel "Dia" dentro do ponteiro "Ponteiro".
        
        *Ponteiro = 6 ;    // 5° Atribuimos o valor "6" para a variavel no endereço apontado, ou seja, alteramos o valor de "Dia".
        printf("%d", Dia); // 6° Imprimimos o valor da variavel "Dia", que retorna "6".

        return 0;
    }


================================================================================================================================================================================|
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 3            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 3 - COMANDOS AVANÇADOS

0. STRUCTS
0. TYPEDEF
0. SIZEOF

=====================================================================================================================================|99|
//! STRUCTS
//: Structs são utilizadas para armazenar um mesmo conjunto de variaveis dentro de uma super variavel.
//: Deste modo criamos uma especie de novo tipo para variaveis, que contem as sub-variaveis dentro dela para amplo uso.

//* CRIANDO UMA STRUCT +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Definimos uma struct declarando novas variaveis dentro dela, estas variaveis são chamadas de Membros/Campos

//? STRUCTS COMUNS ---------------------------------------------------------------------------------------------------------------------|

//TODO: SINTAXE
    struct NOME_IDENTIFICADOR
    {
        TIPO NOME_MEMBRO;
    };

//TODO: EXEMPLO
    struct Aluno
    {
        char nome[50];
        int idade;
        float nota;
    };


//? STRUCTS PRÉ-DEFINIDAS --------------------------------------------------------------------------------------------------------------|
//: Com estas structs não é obrigatorio definir uma struct, caso queira ela segue o mesmo padrão de definição que as comuns.

//TODO: SINTAXE
    struct NOME_IDENTIFICADOR
    {
        TIPO NOME_MEMBRO;
    }
    NOME_STRUCT;

//TODO: EXEMPLO
    struct Feriados
    {
        int dia;
        int mes;
    }
    feriados[30];  // Vetores não são obrigatórios


//? STRUCTS ANINHADAS ------------------------------------------------------------------------------------------------------------------|
//: Structs aninhadas são structs dentro de outras structs, podemos definir diversos niveis de aninhamento.

//TODO: SINTAXE
    struct NOME_IDENTIFICADOR
    {
        struct IDENTIFICADOR NOME_MEMBRO;
    };

//TODO: EXEMPLO
    struct Salas
    {
        int num_alunos;
        struct Aluno aluno[30];
    };


//* DEFININDO UMA STRUCT +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Depois de criada a struct, precisamos definir uma variavel com o tipo desta struct.

//TODO: SINTAXE
/* COMUM, PRÉ-DEFINDA e ANINHADA */
    struct IDENTIFICADOR NOME_VARIAVEL;

//TODO: EXEMPLO
/* COMUM, PRÉ-DEFINDA e ANINHADA */
    struct Aluno a1;
    struct Salas s1;
    struct Feriados natal;


//* CHAMANDO OS MEMBROS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Depois de criadas e definidas, utilizamos a nova variavel para acessar cada membro do tipo da struct informada.

//TODO: SINTAXE
/* COMUNS e PRÉ-DEFINIDAS */
    VARIAVEL.MEMBRO;

/* ANINHADA */
    VARIAVEL.MEMBRO.MEMBRO;

//TODO: EXEMPLO
/* COMUM e PRÉ-DEFINIDAS */
    a1.nome = "José";
    a1.idade = 12;
    a1.nota = 8.5;

    feriados[0].dia = 15;
    feriados[0].mes = 11;
    natal.dia = 25;

/* ANINHADA */
    s1.aluno[0].nome = "Nathiely";
    s1.aluno[0].idade = 19;
    s1.aluno[0].nota = 7;


=====================================================================================================================================|99|
//! TYPEDEF
//: A palavra reservada TYPEDEF serve para podermos apelidar um tipo existente.

//* CRIANDO O APELIDO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: SINTAXE
    typedef TIPO NOME_APELIDO;

//TODO: EXEMPLO
    typedef float Nota;


//* CHAMANDO O APELIDO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Importante resaltar que o tipo apelidado não deixa de existir, ele ainda pode ser utilizado normalmente;

//TODO: EXEMPLO
    Nota prova1, prova2;
    float media;

    media = (prova1 + prova2) / 2;


=====================================================================================================================================|99|
//! SIZEOF
//: Comando para descobrir o numero de bytes de um determinado tipo ou variavel

//TODO: SINTAXE
    int sizeof(TIPO);

//TODO: EXEMPLO
    int BytesInt;
    BytesInt = sizeof(int);

    int BytesVar = sizeof(BytesInt);


================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 4            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 4 - ESTRUTURAS DE PROGRAMAÇÃO

0. ESTRUTURAS CONDICIONAIS
    + IF
    + SWITCH

0. ESTRUTURAS DE REPETIÇÃO
    + WHILE 
    + DO WHILE 
    + FOR 

0. FUNÇÕES

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


=====================================================================================================================================|99|
//! FUNÇÕES
//: Funções são blocos de códigos nomeados que podemos executar quantas vezes quisermos apenas chamando pelo seu nome.
//: Tambem podemos informar PARAMETROS para informar 

//* CRIANDO A FUNÇÃO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

//TODO: INSTRUÇÕES
    1+ // PARAMETROS e RETURNOS são opçionais.

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
//: Um parametro comum não permite que seja diretamente alterado, para isso precisamos informar um ponteiro (Pg: x) como parametro.

//TODO: EXEMPLO
    void Exibir_Msg(char txt[200], int *resposta)
    {           
        int pergunta 
        printf("%s", txt);            // Utiliza o texto que informamos no parametro para a mensagem.
        printf("\n1 - SIM, 0 - NÃO");
        scanf("%d", &pergunta);       

        *resposta = pergunta;         // Armazena o resultado da pergunta no endereço de "resposta"
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
    FUNÇÃO( PARAMETRO )

//TODO: EXEMPLO
    int main()
    {
        int retorno;

        Meu_Nome();                                         // Função simples, sem parametro e sem retorno.
        Exibir_Msg("Esta conseguindo entender?", &retorno); // Função com parametros comuns e parametros de ponteiros.
        int res = Somar(10, 20);                            // Função com parametros e com retorno.

        printf("Resposta: %d", retorno); // Imprime: "Resposta: 0".
        printf("Soma: %d", res);         // Imprime: "Soma: 30".
    }


================================================================================================================================================================================|
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 5            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 5 - ESTRUTURAS DE DADOS

0. ESTRUTURA EM NÓ
0. ESTRUTURA EM PILHA
0. ESTRUTURA EM FILA

=====================================================================================================================================|99|
//! ESTRUTURA EM NÓ
//:

=====================================================================================================================================|99|
//! ESTRUTURA EM PILHA
//:

=====================================================================================================================================|99|
//! ESTRUTURA EM FILA
//:

=================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 6            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 6 - INFORMAÇÕES ÚTEIS

0. PALAVRAS RESERVADAS
0. OPERADORES
0. CONCATENAÇÃO
0. MASCARAS DE FORMATAÇÃO
0. CARACTERES DE CONTROLE

=====================================================================================================================================|99|
//! PALAVRAS RESERVADAS
//: Estas são palavras utilizadas pelo sistema para execução de determinada função.
//: Portanto não podem ser utilizadas na nomeação de nenhum componente.

    asm         continue        extern          long            static          void
    auto        default         float           register        struct          volatile
    break       do              for             return          switch          while
    case        double          goto            short           typedef
    char        else            if              signed          union
    const       enum            int             sizeof          unsigned

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
//! MASCARAS DE FORMATAÇÃO
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
//--|*********************************************************************************************************************************|--|            CAPITULO 7            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 7 - MANIPULAÇÃO DE ARQUIVOS

0. PONTEIRO DE ARQUIVO
0. ARQUIVO TEXTO
0. ARQUIVO BINARIO

=====================================================================================================================================|99|
//! PONTEIRO DE ARQUIVO

//* CRIAR PONTEIRO DE ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Antes de modificar um arquivo texto precisamos criar um ponteiro de arquivo que apontará para este arquivo.

//TODO: SINTAXE
    FILE *NOME_PONTEIRO;

//TODO: EXEMPLO
    FILE *arquivo;


//* ABRIR ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Depois precisamos abrir o arquivo para então modifica-lo.

//TODO: SINTAXE
    PONTEIRO = fopen("NOME_ARQUIVO.txt", "MODO");

//TODO: EXEMPLO
    arquivo = fopen("aula.txt", "a"); // O ponteiro "arquivo" recebeu o arquivo "aula.txt" para modifica-lo

//? MODOS ------------------------------------------------------------------------------------------------------------------------------|
 
//-----------------+-------------------+---------------------+-------------------------+
// MODO // ARQUIVO |       FUNÇÃO      | ARQUIVO INEXISTENTE |   ARQUIVO JA EXISTENTE  |
//-----------------+-------------------+---------------------+-------------------------+
    R   // TEXTO   | Leitura           | Retorna NULL        | OK                      |
    W   // TEXTO   | Escrita           | Cria o arquivo      | Reescreve o arquivo     |
    A   // TEXTO   | Leitura e Escrita | Cria o arquivo      | Continua de onde parou  |
        //         |                   |                     |                         |
    R+  // TEXTO   | Leitura e Escrita | Retorna NULL        | OK                      |
    W+  // TEXTO   | Leitura e Escrita | Cria o arquivo      | Reescreve o arquivo     |
    A+  // TEXTO   | Leitura e Escrita | Cria o arquivo      | Continua de onde parou  |
        //         |                   |                     |                         |
    Rb  // BINARIO | Leitura           | Retorna NULL        | OK                      |
    Wb  // BINARIO | Escrita           | Cria o arquivo      | Reescreve o arquivo     |
    Ab  // BINARIO | Leitura e Escrita | Cria o arquivo      | Continua de onde parou  |
        //         |                   |                     |                         |
    Rb+ // BINARIO | Leitura e Escrita | Retorna NULL        | OK                      |
    Wb+ // BINARIO | Leitura e Escrita | Cria o arquivo      | Reescreve o arquivo     |
    Ab+ // BINARIO | Leitura e Escrita | Cria o arquivo      | Continua de onde parou  |
//-----------------+-------------------+---------------------+-------------------------+


//* FECHAR ARQUIVO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: É de extrema importancia que o arquivo sempre seja fechado ao final de sua utilização para evitar corrompimentos.

//TODO: SINTAXE
    fclose(PONTEIRO);

//TODO: EXEMPLO
    fclose(arquivo);


//* ERROS NO ARQUIVO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta função retorna 1 caso tenha ocorrido algum erro na ultima execução do arquivo, caso contrario retorna 0.

//TODO: SINTAXE
    int ferror(PONTEIRO);

//TODO: EXEMPLO
    resultado = ferror(arquivo);


=====================================================================================================================================|99|
//! ARQUIVO TEXTO
//:

//* ESCREVER NO ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Existem diversas formas diferentes de se escrever no arquivo texto.

//? FPRINTF ----------------------------------------------------------------------------------------------------------------------------|
//: Escreve o texto que informamos dentro do arquivo txt.

//TODO: SINTAXE
    fprintf(PONTEIRO, "TEXTO");

//TODO: EXEMPLO
    fscanf(arquivo, "Olá mundo"); 


//? FPUTS ------------------------------------------------------------------------------------------------------------------------------|
//:

//TODO: SINTAXE
    fputs("TEXTO", PONTEIRO);

//TODO: EXEMPLO
    fputs("Hello World", arquivo);
    
    
//? FPUTC ------------------------------------------------------------------------------------------------------------------------------|
//:

//TODO: SINTAXE
    fputc(PONTEIRO);

//TODO; EXEMPLO
    fputc(arquivo); 


//* LER O ARQUIVO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Existem diversas formas de se ler o arquivo texto.

//? FSCANF -----------------------------------------------------------------------------------------------------------------------------|
//: Retorna a primeira ocorrencia da mascara de formatação informada

//TODO: SINTAXE
    fscanf(PONTEIRO, "%MASCARA", DESTINO);

//TODO: EXEMPLO
    fscanf(arquivo, "%s %d %c", v1, &v2, &v3); // Retorna a 1° String, o 1° Inteiro e o 1° Char após o inteiro que estejam separados.
                                               // Joga seus resultados para as respectivas variaveis (v1, v2, v3).

    // NO ARQUIVO: "Hoje é dia 21 de Outubro"
    // RETORNO: [v1 = "Hoje"] [v2 = 21] [v3 = 'd']
    
    
//? FGETS ------------------------------------------------------------------------------------------------------------------------------|
//: Lê uma string até a proxima quebra de linha ou até atingir o (tamanho - 1) informado.

//TODO: SINTAXE
    fgets(DESTINO, TAMANHO, PONTEIRO);

//TODO: EXEMPLO
    fgets(str, 100, arquivo); // Lê os primeiros 99 caracteres do ponteiro e joga em "str".
    
    
//? FGETC ------------------------------------------------------------------------------------------------------------------------------|
//: Lê o primeiro caracteres de uma string ou arquivo informado.
//: Podemos coloca-lo dentro de um loop while para percorrer todos os caracteres lidos.

//TODO: SINTAXE
    fgetc(PONTEIRO);

//TODO; EXEMPLO
    fgetc(arquivo); // Lê caractere a caractere do arquivo.
                    // Caso a função retorne algum lixo de memoria, lembre de alterar o ultimo caractere lido por "\0".


=====================================================================================================================================|99|
//! ARQUIVO BINARIO
//:


//* POSIÇÃO DO PONTEIRO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Estas funções se referem ao local onde o ponteiro está dentro do arquivo, alternado o local de leitura e escrita dentro do arquivo.

    fseek();  // Altera a posição do ponteiro para uma posição aleatoria.
    rewind(PONTEIRO); // Altera a posição do ponteiro para o inicio do arquivo.
    ftell();  // Retorna a posição atual do ponteiro.

=================================================================================================================================================================================
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 8            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

//? SUB-SUMÁRIO
CAPITULO 8 - BIBLITECAS E FUNÇÕES

0. BIBLIOTECAS
0. BIBLIOTECA STDIO.H
    + SAÍDA/IMPRESSÃO
	+ ENTRADA/CAPTURA
	+ LIMPAR MEMORIA
	+ PONTEIRO DE ARQUIVO
	+ ARQUIVO TEXTO
	+ ARQUIVO BINARIO
	
0. BIBLIOTECA STDLIB.H
	+ EXECUÇÃO DO SHELL
    + MALLOC
    + REALLOC 
    + FREE 

0. BIBLIOTECA LOCALE.H
	+ PADRÃO DE CARACTERES

0. BIBLIOTECA STRING.H
	+ TAMANHO DE UMA STRING
	+ COPIAR STRING
	+ DIVIDIR STRING
	+ COMPARAR STRINGS
	+ CONCATENAR STRINGS
	+ CONVERTER PARA INTEIRO


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
    #include <math.h>    //: Funções matemáticas.
    #include <string.h>  //: Permite ampla manipulação de strings.
    #include <stdlib.h>  //: Funções de uso geral.
    #include <locale.h>  //: Permite leitura de caracteres de outras linguas.


=====================================================================================================================================|99|
//! BIBLIOTECA STDIO.H
//: Esta biblioteca é responsavel pela manipulação de entrada e saida do usuário, é a função mais famosa em C.

//* SAÍDA/IMPRESSÃO ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Função para impressão de caracteres no console do aplicativo.

//TODO: SINTAXE
/* MODO 1 */
    printf("TEXTO");

/* MODO 2 */
    printf("TEXTO %MASCARA", VARIAVEL);  // Veja mascaras de formatação na Pg: x.

//TODO: EXEMPLO
    printf("Hello World");          
    printf("Numero: %d", n1); 


//* ENTRADA/CAPTURA ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Funções para captura dos caracteres digitados no console pelo usuário.

//? SCANF ------------------------------------------------------------------------------------------------------------------------------|
//TODO: SINTAXE
    scanf("MASCARA", &VARIAVEL); // Veja mascaras de formatação na Pg: x.

//TODO: EXEMPLO
    scanf("%d", &Numero); //: Utilizamos [&] para informar que queremos armazenar na memoria.
    scanf("%s", Nome);    //: Apenas valores de string (%s) não precisão do sinal de [&].


//? GETS -------------------------------------------------------------------------------------------------------------------------------|
//: Captura toda a cadeia de caracteres digitada pelo usuário é o numero de caracteres exceder ou a linha terminar.
//: A variavel de destino deve der um array.

//TODO: SINTAXE
    gets(VARIAVEL, TAMANHO, stdin);

//TODO: EXEMPLO
    char Nome[50];
    gets(Nome, 50, stdin);


//* LIMPAR MEMORIA +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Estas funções limpam todo o lixo de memoria contido no teclado, devem ser utilzadas após a entrada de caracteres no teclado.

//TODO: SINTAXE
    setbuf(stdin, NULL);
    fflush(stdin);


=====================================================================================================================================|99|
//! BIBLIOTECA STDLIB.H
//: Esta biblioteca contem funções de usos variados.

//* EXECUÇÃO DO SHELL ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Esta função executa um comando que será diretamente interpretado pelo CMD da aplicação.

//TODO: SINTAXE
    int system("COMANDO");

//TODO: EXEMPLO
    system("pause"); // Pausa a aplicação.


//? PRINCIPAIS COMANDOS ----------------------------------------------------------------------------------------------------------------|
    system("cls");   // Limpa a tela do console.
    system("pause"); // Pausa a aplicação e exibe uma mensagem de "Pressione qualquer tecla para continuar...".


//* MALLOC +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//:

//* REALLOC ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//:

//* FREE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//:


=====================================================================================================================================|99|
//! BIBLIOTECA LOCALE.H
//: Esta biblioteca é responsavel por configurações a respeito da localização.

//* PADRÃO DE CARACTERES +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Define qual padrão de caracteres será utilizado pela aplicação.

//TODO: SINTAXE
    setlocale(CATEGORIA, "LOCAL");

//TODO: EXEMPLO
    setlocale(LC_ALL, "Portuguese");


=====================================================================================================================================|99|
//! BIBLIOTECA STRING.H
//: Esta biblioteca é utilizada para uma melhor manipulação de strings.

//* TAMANHO DE UMA STRING ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Retorna o numero de caracteres de uma string.

//TODO: SINTAXE
    int strlen(STRING);

//TODO: EXEMPLO
    char txt[30] = "Minha String";
    int tam;

    tam = strlen(txt);     // Retorna: 12
    tam = strlen("Texto"); // Retorna: 5


//* COPIAR STRING ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Copia o texto da string de origem para a string de destino. 

//TODO: SINTAXE
    strcpy(DESTINO, ORIGEM);

//TODO: EXEMPLO
    char nome[30];
    strcpy(nome, "Barbara Médice");


//* DIVIDIR STRING +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Divide a string informada toda vez que encontrar os caracteres especificados, pode ser mais de um caractere.
//: Retorna para um ponteiro o endereço na memoria do pedaço da string recem dividida.

//TODO: SINTAXE
    PONTEIRO = strtok(STRING, "CARACTERES"); // Divide uma string
    PONTEIRO = strtok(NULL, "CARACTERES");   // Continua a divisão da string de onde parou, caso contrario divide novamente o início.

//TODO: EXEMPLO
    char endereco[100] = "Rua castelo Branco - 1042, Casa Branca, Xambrê, PR";
    char *pedaco;

    pedaco = strtok(endereco, ",-"); // Divide a string "endereco" toda vez que encontrar um ',' ou '-' e retorna para o ponteiro.

    while(pedaco != NULL)            // Percorre um loop enquanto o pedaço dividido conter algo
    {
        printf("%s", pedaco);        // Imprime o conteúdo do pedaço atual na tela
        pedaco = strtok(NULL, ",-"); // Divide a string a partir do ponto que parou.
    }


//* COMPARAR STRINGS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Compara o valor de duas strings e retorna um valor que indica se as string são iguais ou não.

//TODO: SINTAXE
    int strcmp(STRING_1, STRING_2);

//TODO: EXEMPLO
    char str1[4] = "abc";
    char str2[4] = "abd";

    int comparação = strcmp(str1, str2);


//? RETORNO ----------------------------------------------------------------------------------------------------------------------------|
    0  // As strings são iguais
    <0 // String 1 é menor do que a string 2.
    >0 // String 1 é maior do que a string 2.


//* CONCATENAR STRINGS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Concatena o valor de uma string de origem em outra string de destino.

//TODO: SINTAXE
    strcat(DESTINO, ORIGEM);

//TODO: EXEMPLO
    char msg[30] = "Minha mensagem:";

    strcat(msg, " Programação");
    printf("%s", msg);           // Retorna: "Minha mensagem: Programação"


//* CONVERTER PARA INTEIRO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
//: Converte uma string que contenha um numero em um inteiro.

//TODO: SINTAXE
    int atoi(STRING);

//TODO: EXEMPLO
    int num;
    num = atoi("12");

=========================================================================================================================================





=====================================================================================================================================|99|
//! RASCUNHOS

    while(!feof(PONTEIRO)) // Percorre todas as linhas do arquivo.
    {
    }


//: Reserva um espaço na memoria e retorna o endereço em que que esta reservado
    int malloc(TAMANHO);

//* NÓS

    typedef struct no
    {
        int info;
        struct no * proximo;
    }No;
    


=====================================================================================================================================|99|
//! ARQUIVO BINARIO

    fread(BUFFER, TAMANHO_BYTES, QUANTIDADE, NOME_ARQUIVO)
    fwrite(BUFFER, TAMANHO_BYTES, QUANTIDADE, NOME_ARQUIVO)
    fseek(PONTEIRO, OFFSET, ORIGEM)
