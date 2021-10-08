// Autor.............: Henrique Campos Jonck - 17 Anos
// Data de Inicio....: 02/09/2021
// Guia de Linguagem.: JavaScript

//? SUMÁRIO GERAL
------------------------------------------
CAPITULO 1 - INTRODUÇÃO A LINGUAGEM

1. HISTORIA
2. TECNOLOGIAS
3. ARVORE DOM

------------------------------------------
CAPITULO 2 - CONTEUDO BASICO

0. VARIAVEIS
0. ARRAYS
0. MATRIZES
0. FUNÇÕES

------------------------------------------
CAPITULO 4 - ESTRUTURAS LOGICAS

0. ESTRUTURAS CONDICIONAIS
0. ESTRUTURAS DE REPETIÇÃO

------------------------------------------
CAPITULO 3 - ESTRUTURA BASICA

0. IDENTIFICADORES
0. CLASSES

------------------------------------------
CAPITULO 5 - FERRAMENTAS BASICAS

0. OPERADORES
0. CONCATENAÇÃO
0. CONVERSÃO DE TIPOS
0. FORMATAÇÕES PARA STRING
0. FORMATAÇÕES PARA NUMBER

------------------------------------------
CAPITULO 6 - FUNÇÕES PRONTAS

0. WINDOW
0. DOCUMENT
0. CONSOLE


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! INTRODUÇÃO.
//: O Javascript é mais comummente utilizado para dar uma certa interatividade em paginas WEB.
//: Com o JS podemos validar campos, enviar pop-ups, alterar elementos HTML e etc...

    JAVASCRIPT //: É a linguagem de programação mais utilizada no mundo.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! HISTORIA.

    + /* JAVASCRIPT foi criado em meados da década de 90 por Brendan Eich a serviço da Netscape. */
    + /* O nome JAVAscript vem de uma jogada de marketing por conta da popularidade da linguagem JAVA na época. */
    + /* Depois da linguagem JS a microsoft criou sua propria linguagem que era identica. */
    + /* Para conter a Microsoft o JS foi padronizado pelas normas ECMA, surgindo assim a linguagem ECMASCRIPT. */
    + /* Atualmente a nomenclatura ECMASCRIPT é utilizada apenas para se referir as suas versões */

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! TECNOLOGIAS.

JAVASCRIPT //: Linguagem de programação
ECMASCRIPT //: Padrõnização da linguagem JS 

TYPESCRIPT //:
ANGULAR    //:

NODE.JS  //: Software baseado no motor V8 do Google Chrome com intuito de executar o JS fora de navegadores WEB.
VUE.JS   //: Framework JS focado no desenvolvimento de interfaces de usuário e aplicativos de página única.
ELECTRON //: Framework JS especializado em interfaces graficas.
IONIC    //: SDK utilizado para a criação de aplicativos mobiles hibridos.
JQUERY   //: Biblioteca em JS que visa simplificar os scripts interpretados pelo navegador, uitlizada por 74% dos sites.
REACT    //: Biblioteca em JS com foco em criar interfaces com o usuário em paginas WEB, muito utilizado por sites famosos.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! BIBLIOTECAS.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! ARVORE DOM.
//: Arvore com os componetes pais(Parents) e filhos(Child), de forma que esquematiza a hierarquia dos componentes HTML.

//* SIGNIFICADO DE DOM
    DOM  //: Document Object Model - Conjunto de objetos dentro do navegador que da acesso aos componentes internos do Website.

//* ARVORE DOM
    window  //: Tudo dentro do JS esta dentro de um objeto "window". (Janela do Navegador)
        + location //: Informa a localização do site, (URL, Pagina atual, Pagina anterior)
        + console  //: Referese ao console do navegador.
        + document //: O documento atual.
            + html //: Todo o conteúdo HTML do Site.
                + head //:
                    - meta
                    - title
                    - etc...
                + body 
                    - h1
                    - p
                    - div
                    - etc...
        + history  //: Quarda as informações de onde voçê veio e para aonde voçê vai.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! VARIAVEIS
//: Variaveis são espaços na memoria onde podemos armazenar uma série de informações.
//: Cada variavel pode receber um Tipo de valor (Texto, Numerico, Booleano e etc...).
//: Em JS os Tipos de variaveis são definidos implicitamente.

//* CRIANDO UMA VARIAVEL ---------------------------------------------------------------------------------------------------------------|
//Quando criamos uma variavel não definimos seu tipo, o JS fará isso implicitamente e tambem trocará seu tipo automaticamente.

//TODO: SINTAXE
    TIPO NOME_VARIAVEL;

//TODO: EXEMPLO
    let Nome;        //: Apenas criando uma varival.
    var N1, N2, N3;  //: Criando varias variaveis separadas por [,].
    const Pi = 3.14; //: Criando e ja definido seu valor.


//* TIPOS DE VARIAVEIS -----------------------------------------------------------------------------------------------------------------|
//: Em JS sempre declaramos variaveis utilizando 3 posiveis tipos. Cada tipo tem uma funcionalidade própria.   

//? TIPOS BASICOS
    let;   //:
    var;   //:
    const; //: Uma variavel com valor contante, que nunca poderá ser alterado novamente.


//? TIPOS PRIMITIVOS  
    Number    //: Valores Numéricos    [2] [17] [-43] [3.14] [-15.6]
    String    //: Valores Textuais     ["Maria"] ['Bom dia'] [`Javascript`]
    Boolean   //: Valores Condicionais [true] [false]
    Object    //: 
    null      //: Valor Vazio
    undefined //: Valor Indefinido


//* DESCOBRINDO TIPO -------------------------------------------------------------------------------------------------------------------|
//: Existem alguns metodos de se descobrir o tipo primitivo de alguma varivavel.

    typeof Pi            //: Retorna o tipo daquela variavel {Number}
    typeof "Hello World" //: Retorna o tipo daquele valor    {String}


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! ARRAYS
//: Arrays são como super variaveis em que podemos armazenar multiplos valores dentro dela.

//* CRIANDO UM ARRAY -------------------------------------------------------------------------------------------------------------------|
//: Sempre que criamos um Array devemos definir seu valor entre Colchetes [].
//: Podemos misturar os tipos primitivos contidos nos valores.

//TODO: SINTAXE
    const NOME_ARRAY = [ VALOR1, VALOR2, ...];

//TODO: EXEMPLO
    const Cores = ["Amarelo", "Azul", "Vermelho", "Verde"];
    const Mistu = ["Texto", 2021, true];

//* CHAMANDO UM ARRAY ------------------------------------------------------------------------------------------------------------------|
//: Sempre que chamamos um Array, buscamos um valor pelo seu indice que sempre começa em 0.

//TODO: SINTAXE
    NOME_ARRAY[INDICE];

//TODO: EXEMPLO
    var Cor = Cores[3]; //: Retorna "Verde"
    Mistu[2] = 2030;    //: Troca o valor "2021" por "2030"


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! MATRIZES
//: Matrizes são semelhantes a Arrays (Pg: x), porem podemos chamamar por nomes de colunas ao inves de utilizar indices.

//* CRIANDO UMA MATRIZ -----------------------------------------------------------------------------------------------------------------|

//TODO: SINTAXE
    const NOME_MATRIZ = [NOME_COLUNA : VALOR1, NOME_COLUNA : VALOR2, ...];

//TODO: EXEMPLO
    const Identidade = [Nome: "Henrique", Sobrenome: "Jonck", Idade: 17, Brasileiro: true];

//* CHAMANDO UMA MATRIZ ----------------------------------------------------------------------------------------------------------------|
//: Sempre que chamamos uma matriz utilizamos o nome da coluna entre aspas.

//TODO: SINTAXE
    NOME_MATRIZ["NOME_COLUNA"];

//TODO: EXEMPLO
    var Nome = Identidade["Nome"];
    Identidade["Idade"] = 18;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! FUNÇÕES
//: Funções são utilizadas para criar um bloco de comandos que pode ser executado diversas sem a necessidade de reescrever o código.
//: Em alguns casos podemos informar PARAMETROS que são informações externas que passamos para esta função.

//* CRIAR UMA FUNÇÃO -------------------------------------------------------------------------------------------------------------------|
//: Criamos uma função utilizando a palavra reservada "function".

//TODO INSTRUCÕES
    Parametro //: Uso OPCIONAL. São variaveis que recebem uma informação externa na hora que a função é chamada.
    return    //: Uso OPCIONAL. Comando que retorna algum valor quando a função é chamada.
    break     //: Uso OPCIONAL. Comando que quando executado encerra automaticamente a função.

//TODO: SINTAXE
    function NOME_FUNÇÃO(PARAMETRO) 
    { 
        /* Bloco de Comandos */
        return VALOR;
    }

//TODO: EXEMPLO
/* EXEMPLO 1 */
    function DobrarNumero(numero) 
    {
        let Resultado = 2 * numero; 
        return Resultado;          
    }

/* EXEMPLO 2 */
    function ExecutarComandos() 
    {
        window.alert("Função Executada!");
    }

//* CHAMAR FUNÇÃO ----------------------------------------------------------------------------------------------------------------------|
//: Chamamos uma função apenas escrevendo seu nome, caso necessite de parametros entao os informamos.

//TODO: SINTAXE
    NOME_FUNÇÃO(PARAMETRO);

//TODO: EXEMPLO
    var Dobro = DobrarNumero(10); //: Dobra o valor de 10 e retorna para "Dobro" o valor {20}.
    ExecutarComandos();           //: Apenas executa os comandos da função, envia um pop-up com "Função Executada!".


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! OUVIDORES

//TODO: SINTAXE
    ELEMENTO.addEventListener('EVENTO', FUNÇÃO);

//TODO: EXEMPLO
    var BTN = getElementById('Botao');
    BTN.addEventListener('click', MudaCor)

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! ESTRUTURAS CONDICIONAIS
//: Estruturas Condicionais são blocos de comandos que são executados apenas em determinados casos.

//* CONDICIONAL - IF -------------------------------------------------------------------------------------------------------------------|
//: Esta é uma condicional que contem duas bifurcações de código, uma para VERDADEIRO e outra para FALSO.

//TODO: TRADUÇÕES
    SE     = if
    MAS SE = else if //: Opcional
    SENÃO  = else    //: Opcional

//TODO: SINTAXE
    if (CONDIÇÃO_1)
    {
        //: Código para Verdadeiro na Primeira Condição;
    }
    else if (CONDIÇÃO_1)
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
        window.alert("O primeiro numero é maior");
    }
    else if (numero1 == numero2)
    {
        window.alert("Os numeros são iguais");
    }
    else
    {
        window.alert("O segundo numero é maior");
    }


//* CONDICIONAL - SWITCH ---------------------------------------------------------------------------------------------------------------|
//: Esta condicional recebe um parametro e executa um bloco de comando para cada posivel CASO daquele parametro.

//TODO: TRADUÇÕES
    MUDE    - switch
    CASO    - case    //: Opcional
    TERMINE - break   //: Opcional
    RESTO   - default //: Opcional

//TODO: SINTAXE
    switch (VARIAVEL)
    {
        case VARIANTE_1:
            //: Código caso a propriedade atenda ao caso 1;
        break;

        case VARIAVEL_2:
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
            window.alert("Voçê tem 10 anos!");
        break;

        case (idades > 47):
        case (idades < 52):
            window.alert("Voçê tem entre 47 e 52 anos!");
        break;        

        default;
            window.alert("Não sabemos a sua idade");
        break;
    }

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! ESTRUTURAS DE REPETIÇÃO
//: Estruturas de Repetição são meios de se repetir um certo bloco de comando determinas vezes.

//TODO: TRADUÇÕES
    FAÇA     - do
    ENQUANTO - while
    PARA     - for

//* REPETIÇÃO - WHILE ------------------------------------------------------------------------------------------------------------------|
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
        window.alert(numero);
        numero++;
    }

//* REPETIÇÃO - DO WHILE ---------------------------------------------------------------------------------------------------------------|
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
        window.alert(numero);
        numero++;
    }    
    while (numero < 10);

//* REPETIÇÃO - FOR --------------------------------------------------------------------------------------------------------------------|
//: Esta estrutura cria o contador, avalia ele e incrementa seu valor ao mesmo tempo em uma unica linha.

//TODO: SINTAXE
    for(Variavel; Condição; Incremento)
    {
        //: Codigo que será repetido enquanto VERDADEIRO;
    }

//TODO: EXEMPLO
    for(int cont = 0; cont <= 10; cont++)
    {
        window.alert(cont);
    }


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! IDENTIFICADORES
//: Identificadores são utilizados para se dar um "Nome" unico para algum elemento. Seu nome não poderá ser repetido em outro elemento.
//: Para mais detales visite o manual de HTML na pagina x.

//* DEFININDO UM ID --------------------------------------------------------------------------------------------------------------------|
//: Um identificador não pode ter um nome repetido de outro elemento.

//TODO: SINTAXE
    <tag id="NOME_ID"> CONTEÚDO </tag>

//TODO: EXEMPLO
    <p id="Paragrafo"> Este é o meu paragrafo. </p>

//* CHAMANDO UM ID ---------------------------------------------------------------------------------------------------------------------|
//: Como um ID não pode se repetir existe apenas um elemento com este identificador.

//TODO: SINTAXE
    document.getElementById('NOME_ID');

//TODO: EXEMPLO
    var Par = document.getElementById('Paragrafo');


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! CLASSES
//: Classes são identificadores multiplos em HTML. Serverm para podermos categorizar os elementos.
//: Podemos definir uma mesma classe para multiplos elementos e tambem mais de 1 classe para cada um.
//: Para mais detales visite o manual de HTML na pagina x.

//* DEFININDO UMA CLASSE ---------------------------------------------------------------------------------------------------------------|

//TODO: SINTAXE
    <tag class="NOME_CLASSE"> CONTEÚDO </tag>

//TODO: EXEMPLO
    <h1 class="Titulos"> Titulo Principal </h1>
    <h2 class="Titulos Subtitulo"> Segundo Titulo </h2>
    <h3 class="Subtitulo"> Sub-Titulo </h3>

//* CHAMANDO UMA CLASSE ----------------------------------------------------------------------------------------------------------------|
//: Como pode existir mais de um elemento com a mesma classe, podemos informar o indice de qual elemento especifico queremos chamar.
//: Caso não informemos um indice e exista mais de um elemento com a mesma classe, ele retornara um Array com todos os elementos.

//TODO: SINTAXE
    document.getElementsByClassName('NOME_CLASSE')[INDICE]; // Retorna apenas o elemento no inidice informado.
    document.getElementsByClassName('NOME_CLASSE');         // Retorna um array com todos os elementos com aquela classe.

//TODO: EXEMPLO

//? Retorna o elemento no indice 1 com a classe "Titulos".
    var Tit1 = document.getElementsByClassName('Titulos')[1]; //: {H2}
    
//? Retorna um array com todos os elementos com a classe "Titulos".
    var Tit2 = document.getElementsByClassName('Titulos');   //: {H1 e H2}

//? Retorna um array com todos os elementod que tenham ambas as classes.
    var Tit3 = document.getElementsByClassName('Titulos Subtitulo'); //: {H2}

//? Retorna as classes "Titulos" dentro do elemento com o id "Principal".
    var Tit4 = document.getElementById('Principal').getElementsByClassName('Subtitulo');


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! OPERADORES

//* OPERADORES ARITMÉTICOS -------------------------------------------------------------------------------------------------------------|
//: Utilizados em operações matematicas.
    + Adição
    - Subtração
    * Multiplicação
    / Divisão
    % Resto da Divisão
    ** Exponenciação

//* OPERADORES DE ATRIBUIÇÃO -----------------------------------------------------------------------------------------------------------|
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

//* OPERADORES RELACIONAIS -------------------------------------------------------------------------------------------------------------|
//: Operadores utilizados para comparar valores, sempre retornam valores do tipo (true, false).

    (a < b)  Menor que  
    (a > b)  Maior  que
    (a <= b) Menor ou Igual que
    (a >= b) Maior ou Igual que

    //: Verificam a apenas o valor das comparações. (Exemplo: 3 == "3" --> true)
    (a == b) Igualdade  
    (a != b) Diferença 
    //: Verificam valor e tipo das comparações. (Exemplo: 3 === "3" --> false).
    (a === b) Identidade
    (a !== b) Desigualdade

//* OPERADORES LÓGICOS -----------------------------------------------------------------------------------------------------------------|
//: Operadores utilizados para operações lógicas em programação, contem a ordem de execução dos operadores.
    
    NOT = !  //: Inverte o estado de uma operação (Verdadeiro -> Falso e vice-versa).
    AND = && //: Retorna verdadeiro se todas as comparações forem verdadeiras.
    OR  = || //: Retorna verdadeiro se uma ou mais comparações forem verdadeiras.
    XOR = ^       //: Retorna verdadeiro se as comparações forem diferentes entre si.

//* OPERADOR TERNARIO ------------------------------------------------------------------------------------------------------------------|
//: Verifica uma condição e retorna um valor caso "true" ou um valor caso "false".

//TODO: SINTAXE
    Condição ? True : False

//TODO: EXEMPLO
    var Resultado = (10 < 20) ? "Verdadeiro" : "Falso"  //: {Resultado -> "Verdadeiro"}

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! CONCATENAÇÃO.
//: Concatenação é quando precisamos unir dois ou mais textos em um.

Simbolo de Concatenção [+]
//: Em JS qualquer valor não textual se tornará textual quando concatenado com uma String.
//: Como o operador de soma tambem utiliza o [+], equações devem ser isoladas das Strings.

    Number + Number //: Adição
    String + String //: Concatenação
    String + Number //: Concatenação

//* CONCATENAÇÃO SIMPLES ---------------------------------------------------------------------------------------------------------------|
//TODO: SINTAXE
    VALOR_1 + VALOR_2

//TODO: EXEMPLO
    "Meu nome é: " + "Henrique"  //: {"Meu nome é: Henrique"}

    "6 + 5 = " + (6 + 5)    //: {"6 + 5 = 11"} Realiza a equação antes de concatenar ja que esta isolada.
    "6 + 5 = " + 6 + 5      //: {"6 + 5 = 65"} Concatena tudo que esta interligado a uma String.

    "Verdadeiro = " + true  //: {"Verdadeiro = true"} Concatena valores booleanos.
    "Juntar " + Valor1      //: Concatena a String com a Variavel "Valor1".


//* CONCATENAÇÃO COM TEMPLATES ---------------------------------------------------------------------------------------------------------|
//: Templates são utilizados para concatenar o valor de uma variavel de forma mais simples, sem precisar fechar aspas.
//: Templates devem ser realizados entre crases [``].

//TODO: SINTAXE
    `${Variavel}`

//TODO: EXEMPLO
    var Nome = "Henrique";

    var Texto = `Meu nome é ${nome}`; // {"Men"}


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! CONVERSÃO DE TIPOS PRIMITIVOS
//: O JS possui uma capacidade de converter alguns tipos de forma automatica.
//: Porem em alguns casos será necessario utilizar algum destes metodos de conversão abaixo.

//* STRING PARA NUMBER -----------------------------------------------------------------------------------------------------------------| 
    
    parseInt("12");   //: Converte o texto "12" para um Numero Inteiro.
    parseFloat("12"); //: Converte o texto "12" para um Numero Real.
    Number("Numero"); //: Converte a variavel "Numero" automaticamente para seu respectivo valor (Inteiro ou Real).

//* NUMBER -> STRING -------------------------------------------------------------------------------------------------------------------|

    Numero.toString(); //: Converte a variavel "Numero" em string.
    String(Numero);    //: Converte a variavel "Numero" em string.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! FORMATAÇÕES PARA STRINGS
//: Estas funções servem para trasformar ou receber informações sobre qualquer texto em JS.

//TODO EXEMPLO
    var texto = "JavaScript"

//TODO FUNÇÕES
    texto.length;        //: Retorna o numero de caracteres de uma String {10}.
    texto.toUpperCase(); //: Retorna a String em Maiusculas {JAVASCRIPT}.
    texto.toLowerCase(); //: Retorna a String em Minusculas {javascript}.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! FORMATAÇÕES PARA NUMBERS

//TODO EXEMPLO
    var numero = 323.2

//TODO FUNÇÕES
    numero.toFixed(2); //: Retorna o numero com a quantidade de casas decimais que foi definido {323.20}.
    

//* ADICIONAR PADRÃO MONETARIO ---------------------------------------------------------------------------------------------------------|
    numero.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }) //: {R$ 323,20}
                                                                           //: Retorna o numero no padrão monetario especificado


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! REGEX.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! CALLBACK.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! WINDOW
//: Estas funções se referem a toda a pagina WEB do HTML.

    window.alert("Mensagem");   //Pop-up de alerta com mensagem no canto superior do site.
    window.confirm("Mensagem"); //Pop-up botões de "OK" e "Cancelar".
    window.prompt("Mensagem")   //Pop-up com caixa de texto.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! DOCUMENT
//: Estas funções se referem apenas ao documento escrito em HTML.

    document.write("Mensagem"); //Escreve no corpo do documento, tambem é possivel adicinar Tags HTML dentro dele

//* PEGAR ELEMENTO ---------------------------------------------------------------------------------------------------------------------|

    document.getElementsByTagName('p')[1]        //: Retorna oa elementoa da "tag" selecionada no indice 0 - {Segundo <p> da pagina}.
    document.getElementById('ID')                //: Retorna o elemento com o "id" selecionado
    document.getElementsByClassName('Classe')[0] //: Retorna os elementos com a "Classe" selecionada no indice 0
    document.getElementsByName('Nome')[0]        //:

    document.body                    //: Podemos chamar um elemento pela sua tag deste jeito caso ela seja de uso unico.
    document.querySelector('Tag#Id') //: Buscamos informando a tag e o id, podemos trocar o id por uma classe porem trocamos (# -> .)


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! CONSOLE
//: Estas funções se referem ao aplicativo de console embutido no navegador.

    console.log("Mensagem"); // Escreve uma mensagem no console.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! FUNÇÕES ASSINCRONAS


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--|*********************************************************************************************************************************|--|**********************************|--//
//--|*********************************************************************************************************************************|--|            CAPITULO 1            |--//
//--|*********************************************************************************************************************************|--|**********************************|--//



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|99|
//! RASCUNHOS.

    console.log("Esta é uma mensagem via CMD"); // Escreve no Console do site
    document.getElementById("Teste1").innerHTML = "Mensagem via Elemento"; //Pega o elemento com id selecionado
    eval(1 + ">" + 2); //Realiza a equação mesmo que seka de tipos diferentes
    window.co

