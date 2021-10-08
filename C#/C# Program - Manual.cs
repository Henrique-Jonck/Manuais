''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? DEFINIÇÃO DE TERMOS.

Valor      ->// Informação contida em um Propriedade.
Códigos    ->// São constituidos de Códigos e Comandos. As linhas de código são responsaveis por instruir o programa.
Membros    ->// Tudo que estiver contido dentro de algo: Namespace, Classe, Metodo, Propriedade e etc...
Escopo     ->// Define até a onde um membro consegue acessar outros membros.
Instanciar ->// Chamar uma Classe/Metodo de outro escopo em seu escopo atual.
Herança    ->// Quando uma Classe/Metodo se duplica e se copia em outro Escopo.
Argumentos ->//

Comandos/Ferramentas ->// São códigos especiais que realizam alguma tarefa em especifico.
Programa/Compilador  ->// É a plataforma que é responsavel por interpretar os Códigos e realizar a operação.

Delimitador [;]
Atribuidor  [=]

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? COMPOSIÇÃO DAS PAGINAS.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ Pg +
/* [Titulo Principal] */
    // [Resumo Geral]

/* [Sub-Titulo Primario] --------------------------------------------------------------------------------------------------*/

/* [Sub-Titulo Secundário] */

//--// [Escopo]

    |Sintaxe|->// [Metodo]
               // [Instruções] -->> Entre <> Significa "Alteravel".
                                

    |Exemplo|->// [Exemplos]
               // "->>" Esplicações

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? SUMÁRIO GERAL.
------------------------------------------
CAPITULO 1 - ESTRUTURA DO PROGRAMA.

1- ESCOPO e ACESSOS.
2- NAMESPACES.
    N.1- MEMBROS.
3- CLASSES.
    C.1- HERANÇA DE CLASSES.
    C.2- INTERFACES.
    C.3- DELEGATES.
    C.4- ARGUMENTOS DE ENTRADA.
    C.5- STRUCTS
4- METODOS.
    M.1- ARGUMENTOS DE METODOS.
    M.2- METODOS VIRTUAIS.
    M.3- RECURSIVIDADE.
5- PROPRIEDADES.
    P.1- TIPOS
    P.2- ARRAY
    P.3- MATRIZ
    P.4- ENUM
    P.5- ACESSORES
    P.6- ACESSORES ARRAYS

------------------------------------------
CAPITULO 2 - COLEÇÕES e LISTAS

6 - VISÃO GERAL DE COLEÇÕES
7 - COLEÇÃO DICTIONARY
8 - COLEÇÃO LINKEDLIST
9 - COLEÇÃO LIST
10- COLEÇÃO QUEUE

------------------------------------------
CAPITULO 3 - FERRAMENTAS DE PROGRAMAÇÃO

11- ESTRUTURAS CONDICIONAIS
12- ESTRUTURA SWITCH
13- ESTRUTURAS DE REPETIÇÃO
	A- WHILE
	B- DO WHILE
	C- FOREACH
	D- FOR
14- ESTRUTURA TRY CATCH

------------------------------------------
CAPITULO 3 - FERRAMENTAS BASICAS

16 - OPERADORES LÓGICOS
17 - CONCATENAÇÃO
18 - CONVERTER VALOR
19 - OPERADORES ARITIMÉTICOS
20 - INCREMENTO e DECREMENTO DE VALOR
21 - DESCOBRIR COMPRIMENTO
22 - ABREVIAÇÕES

------------------------------------------
CAPITULO 4 - METODOS DO SISTEMA

PARTE I - CONSOLE e GERAL
   20- ESCREVER E LER A TELA
   21- INVERTER SINAL DE NUMERO
   XX-
   XX-
   XX-

PARTE II - FORMULARIO
   XX- CAIXA DE DIALOGO
   XX-
   XX-
   XX-
   XX-

------------------------------------------
CAPITULO 5 - VISUAL STUDIO FORM

XX - NOMEAÇÃO DE FERRAMENTAS
XX - 
XX - 
XX - 
XX - 
XX -


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
CAPITULO 1 - ESTRUTURA DO PROGRAMA.

1- ESCOPO e ACESSOS.
2- NAMESPACES.
    N.1- MEMBROS.
3- CLASSES.
    C.1- HERANÇA DE CLASSES.
    C.2- INTERFACES.
    C.3- DELEGATES.
    C.4- ARGUMENTOS DE ENTRADA.
    C.5- STRUCTS
4- METODOS.
    M.1- ARGUMENTOS DE METODOS.
    M.2- METODOS VIRTUAIS.
    M.3- RECURSIVIDADE.
5- PROPRIEDADES.
    P.1- TIPOS
    P.2- ARRAY
    P.3- MATRIZ
    P.4- ENUM
    P.5- ACESSORES
    P.6- ACESSORES ARRAYS


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 1 +
//! ESCOPO e ACESSOS.
    //Escopo define até a onde um membro consegue acessar outros membros.
    //Acessos são meios de se escolher o nivel de permição e acesso de uma membro à outro.

//* HIERARQUIA DO PROGRAMA --------------------------------------------------------------------------------------------------------*/
1---Namespace.
2-------Classes.
3-----------Metodos.
            Códigos.


//* MODIFICADORES DE CLASSES*/
    public   ->// Publica, sem restição de acesso.
    sealed   ->// Classe não pode ser herdada.
    static   ->// Não permite ser instanciada, herdada, não posui construtores e membros devem ser static tambem.
    abstract ->// Classe-Base para outras Classes, Não é possivel instanciar objetos dentro dela. 
               //   Membros não abstract precisam informar algum comando.


//* /*ESPECIFICADOR DE ACESSO - [PROPRIEDADES e METODOS]*/
//--// Primarios.
  | public    ->// Sem restrição de acesso.
  | private   ->// Só pode ser acessado pela propria classe.
  | protected ->// Só pode ser acessado pela propria classe e pelas classes derivadas.

//--// Secundários.
    abstract  ->// Apenas cria a Propriedade/Metodo sem definir nenhum valor, deixando para as Propriedades filhas (Herança pg 3.1).
    sealed    ->// A Propriedade/Metodo não pode ser redefinida/alterada. (Polimorfismo pg x)
    virtual   ->// A Propriedade/Metodo só pode ser redefinida se for em uma Propriedade/Metodo herdada. 
    static    ->// A Propriedade/Metodo pode ser chamado sem que se instancie um novo objeto.

//--// Combinações.
    public static ->// Cria uma classe Static que pode ser acessada em outros Escopos.


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 2 +
//! NAMESPACE.
    //Namespaces são exclusivamente formas de se organizar o codigo, classificando o membros contidos.
    //Podemos criar duas classes exatamente iguais, porem em Namespaces diferentes.
    //Não são obrigatorios, qualquer Membro instanciado em Escopo Namespace pode ser instanciado sem o uso deste.

//* CRIANDO UM NAMESPACE ----------------------------------------------------------------------------------------------------------*/
//--// Escopo 1 - Namespace.

    |Sintaxe|->  namespace <Nome> {<Classes, Metodos e Códigos>}

    |Exemplo|->  namespace Calculo {  }


//* CHAMANDO UM NAMESPACE ---------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 e 3 - Classes e Metodos.

    |Sintaxe|->// De forma local - Apenas naquele Código.
                 <Namespace>.<Classe>.<Metodo();
               // De forma global - Em todo o Namespace.
                  using <Namespace>;
                                    

    |Exemplo|->  Calculo.Matematica.Soma();
                 using Calculo;


--------------------------------------------------------------------------------------------------------------------------------- N.1 -
//! MODULOS.
    //Como a programação C# é muito extensa, os programadores dividiram-na em varios Namespaces.
    //Cada Modulo é um acesso a um Namespace diferente da biblioteca de Comandos do C#.
    //Quando se acessa um modulo, se abre um leque de variedades de Classes e Metodos novos.

//* INSTANCIANDO UM MODULO/NAMESPACE ----------------------------------------------------------------------------------------------*/
//--// Escopo 1 - Namespace.

    |Sintaxe| -> Using System.<Biblioteca>;
    
    'MODULOS por Padrão'
    using System;                       ->// Posibilita que o C# manipule o sistema do usuario .
    using System.collections.generic;   ->// Posibilita a criação de um coleção Dictionary generica (Dictionary Pg: x)
    using System.linq;                  ->// Utilizado para lidar com um grande numero de dados.
    using System.text;                  ->// Disponibiliza ferramentas de manipulação de texto.
    using System.threading.tasks;       ->// Permite que seu programa corra em Multithreds.

    'MODULOS ja utilizados'
    using System.io;                      ->// Permite manipular arquivos facilmente.
    using System.net;                     ->// Permite interagir com a rede.
    using System.Threading;               ->// Permite manipular o tempo de execução do programa (Veja mais: pg x)
    using System.Text.RegularExpressions; ->// 




++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 3 +
//! CLASSES.
    //Classes são utilizadas para armazenar Metodos ou Propriedades e chama-los.
    //Classes são compostas de Metodos e Propriedades.

//* ACESSOS*/
    public   ->// Publica, sem restição de acesso.
    sealed   ->// Classe não pode ser herdada.
    static   ->// Não permite ser instanciada, não posui construtores e membros devem ser static tambem.
    abstract ->// Classe-Base para outras Classes, Não é possivel instanciar objetos dentro dela. 
                    // Membros não abstract precisam informar algum comando.


//* CRIANDO UMA CLASSE ------------------------------------------------------------------------------------------------------------*/
//--// Escopo 1 - Namespaces.

    |Sintaxe|->  <Acesso> Class <nome> {<Metodos, Propriedades e Codigos>}

    |Exemplo|->   Public class Pokemons ->>// Criação da Classe.
                    {
                        public string nome = "Charizard";
                        public int nivel = 100;

                        public int Dano(int atc)  ->>//Aqui foi criado um Metodo novo.
                        {
                            int resultado = atc * nivel;
                            return resultado;
                        }
                    }

//* INSTANCIANDO UMA CLASSE -------------------------------------------------------------------------------------------------------*/
    //É necessario que se instancie uma Classe para que se possa utiliza-la em outro lugar (Onde voçê instanciar).
    //Classes static não podem ser instanciadas.

//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Classe> <Nome de Instanciação> = New <Classe>(<Parametros>); 
                                                  // Veja os Parametros de uma Classe em Construtores e Destrutores.
    |Exemplo|->  Pokemons PK1 = New Pokemons();
                 Pokemons PK2 = New Pokemons();

//* CHAMANDO UMA CLASSE -----------------------------------------------------------------------------------------------------------*/
    //Quando chamamos uma Classe poderemos utilizar de todos os membros contidos nela.
    //Existe um jeito diferente para cada Classe com um acesso diferente.

//--// Escopo 3 - Metodos.

    |Sintaxe|->// Public - Chamar Propriedade ou Metodo.
                 <Instancia>.<Propriedade>
                 <Instancia>.<Metodo(<Parametro>)>

               // Static - Chamar Propriedade ou Metodo (Sem instanciar).
                 <Classe>.<Propriedade>
                 <Classe>.<Metodo(<Parametro>)>


    |Exemplo|->// Classe Public.  
                 -->  PK1.nivel;
                  -->  PK2.nome = "Bulbasaur";
                   -->  PK2.Dano(12);

               // Objetos Static ou Private.
                 -->  Pokemon.nivel;
                  -->  Pokemon.nome = "Bulbasaur";
                   -->  Pokemon.Dano(12);


//* METODO CONSTRUTOR -------------------------------------------------------------------------------------------------------------*/
    //Metodos construtores são Metodos com o mesmo nome da Classe que se iniciam quando instanciamos esta classe.
    //Quando não definimos um Metodo construtor o programa faz isso automaticamente de forma invisivel.

//--// Escopo 2 - Classes.

    |Sintaxe|->  <Acesso> <Nome da Classe>(<Parametros>) {Comandos} 

    |Exemplo|->  Public class Familiares
                    {
                        public string nome;
                        public int idade;
                        public bool vivo;

                        public Familiares() ->// Metodo Construtor sem informar parametros.
                        {
                            nome = "NULL";
                            idade = "NULL";
                            vivo = False;
                        }
                        public Familiares(string nom, int ida, string viv)  ->// Metodo Construtor informando parametros.
                        {
                            nome = nom;
                            idade = ida;
                            vivo = viv;
                        }
                    }
    
    |Instanciando|->  Familiares NULL = new Familiares(); ->// É posivel instanciar sem informar parametros.
                      Familiares mãe = new Familiares("Silvia", 42, true); ->// Ou podemos informar o parametro.


//* SOBRECARGA DE METODOS*/
    //Como vimos a cima, em uma Classe podemos criar Metodos com mesmo nome porem com parametros diferentes.
    //Deste modo posibilitamos que quando instanciemos uma Classe, exista diversos modos de se preencher os parametros.


//* METODO DESTRUTOR --------------------------------------------------------------------------------------------------------------*/
    //Metodos destrutores são chamados quando o metodo é destruido/alterado posteriormente.

//--// Escopo 2 - Classes.

    |Sintaxe|->  ~<Nome da Classe>() {Codigo que será executado}

    |Sintaxe|->  ~Familiares()


//* FERRAMENTA THIS ---------------------------------------------------------------------------------------------------------------*/
    //As vezes na criação de uma Classe, o parametro de entrada pode ter o mesmo nome de uma Propriedade da propria Classe.
    //A ferramenta This serve para apontar a Propriedade e diser que estamos nos referindo a Propriedade da Classe.

//--// Escopo 2 e 3 - Classes e Metodos
    |Exemplo|->  Public class Pokemons
                    {
                        public string nome = "Charizard";

                        public void TrocarNome(int nome)  ->// O parametro de entrada tem o mesmo nome da Propriedade "nome"
                        {
                            this.nome = nome; ->// O this diz que "nome" se refere a Propriedade desta Classe.
                        }
                    }

--------------------------------------------------------------------------------------------------------------------------------- C.1 -
//! HERANÇA DE CLASSES.
    //A herança de classes faz com que todos os Metodos e Propriedades da Classe-Pai sejam copiados para a Classe-Filha.
    //Mas os Membros copiados são os que estão com acesso Public.
    //Tambem é posivel criar novas Propriedades e Metodos para a Classe-Filha.

//* CRIANDO A CLASSE-FILHA --------------------------------------------------------------------------------------------------------*/
    //Podemos criar quantas Classes-Filhas quisermos, ate dentro de outras classes-Filhas.

//--// Escopo 1 - Namespaces

    |Sintaxe|->  <Acesso> Class <Nome da Classe-Filha>:<Classe-Pai> {<Comandos>}

    |Exemplo|->  Public class MinhaFamilia:Familiares {   } ->// Herdada da classe "Familiares".
                 Public class Derivada:MinhaFamilia {  } ->// Herdada da classe "MinhaFamilia" 

//* METODOS CONTRUTORES HERDADOS --------------------------------------------------------------------------------------------------*/
    //Quando criamos uma herança de classe, atá os metodos construtores da Classe-Pai são herdados à Classe-Filha.
    //E na classe-Filha quando queremos criar um novo metodo contrutor, precisamos informar todos os parametros
    //  do metodo contrutor-Pai

//--// Escopo 1 - Namespace

    |Sintaxe|->  Public <Nome Classe-filha>(<Parametros>) :base(<Informe os Paramtros Metodo-Pai>)

    |Exemplo|->  Public class MinhaFamilia:Familiares
                    {
                        public MinhaFamilia() :base("Silvia", 41, true)
                        {                       // Informando parametros do metodo-Pai.
                            nome = nom;
                            idade = ida;
                            vivo = viv;
                        }
                    }

//* /*ORDEM DE EXECUÇÃO*/
    //Quando há classes herdadas e chamamos elas, a ordem de execução é:
    //A partir da Classe-Pai para cada Classe-Filha.

--------------------------------------------------------------------------------------------------------------------------------- C.2 -
//! INTERFACES.
    //São semelhantes a Classes abstracts, portanto, servem de base para outras classes.
    //Quando utilizadas como base para classes herdadas, seu membros precisam ser preenchidos na chamada.

//* REGRAS*/
1-// Definimos apenas Metodos dentro de Interfaces
2-// Não utilizamos Proproedades, Metodos construtores ou destrutores dentro de Interfaces.
3-// Classes que implementarem Interfaces obrigatoriamente precisam preencher seus Metodos.

//* CRIANDO UMA INTERFACE*/
//--// Escopo 1 - Namespaces.

    |Sintaxe|->//Primeiro criamos a Interface:
                 <Acesso> interface <Nome> {<Implementação>}
               //Detro da Interface criamos Metodos sem definir nada:
                 <Retorno> <Nome Do Metodo()>; ->// Criamos quantos desejarmos.

    |Exemplo|-> public interface Veiculo
                {
                    void Ligar();
                    void Desligar();
                }
               //Outra inteface
                public interface Combate
                {
                    void Munição();
                }

//* CHAMANDO A INTERFACE*/
    //Para chamar uma interface precisamos preencher cada Metodo contido nesta interface.
    //Se o Metodo estiver com { } porem vazias, ele ja sera considerado como implementado.

//--// Escopo 1 - Namespaces.

    |Sintaxe|->  <Acesso> Class <Nome>:<Interface> {<Metodos>}

    |Exemplo|->// Podemos definir uma classe com uma interface:
                public class carro:Veiculo{  }
               // Ou podemos definir uma classe com mais de uma interface, separadas por "," :
                public class carro:Veiculo,Combate
                {
                    public bool ligado;
                    public string arma;

                    public void Ligar() ->// Aqui criamos como um metodo comum porem com o mesmo nome do Metodo da interface.
                    {                     // E preenchemos os campos deste.
                        ligado = true
                    }
                    public void Desligar()
                    {
                        ligado = false;
                    }
                    public void Munição() ->// Agora precisamos informar ambas as interfaces
                    {
                        arma = "Metralhadora"
                    }

                }

--------------------------------------------------------------------------------------------------------------------------------- C.3 -
//! DELEGATES.
    //É um objeto que pode fazer referencia a um ou mais metodos de uma classe.

    |Contexto|-> public class Matematica
                {
                    public static int soma(int n1, int n2) ->// Metodo 1 - Soma
                    {
                        return n1 + n2;
                    }
                    public static int multiplicação(int n1, int n2) ->// Metodo 2 - Multiplicação
                    {
                        return n1 * n2;
                    }
                }

//* CRIANDO UM DELEGATE -----------------------------------------------------------------------------------------------------------*/

//--// Escopo 1 - Namespace.
    |Sintaxe|->  delegate <Tipo> <Nome(<Parametros>)>;

    |Exemplo|->  delegate int OP(int n1, int n2); ->// Os parametros devem corresponder aos Metodos referenciados.

//* INSTANCIANDO O DELEGATE -------------------------------------------------------------------------------------------------------*/

//--// Escopo 2 - Classes.
    |Sintaxe|->  <Delegate> <Nome de Instanciação> = new <Delegate(<Classe>.<Metodo>)>;

    |Exemplo|->  OP d1 = new OP(Matematica.soma);

//* CHAMANDO O DELEGATE -----------------------------------------------------------------------------------------------------------*/

//--// Escopo 3 - Metodos

    |Sintaxe|->// Chamar o Delegate:
                <Instancia(<Parametro>)>
               // Alterar o Delegate:
                <instanciação> = new <Delegate(<Classe>.<Metodo>)>;

    |Exemplo|->  int numero = d1(10,20)
                 Console.WriteLine(numero)
    
                 d1 = new OP(Matematica.multiplicação);

--------------------------------------------------------------------------------------------------------------------------------- C.4 -
//! ARGUMENTOS DE ENTRADA.
    //São semelhantes a parametros em Metodos, são meios de se transferir um valor de uma classe para outra. (Metodos Pg: x)

//--// Escopo 1 - Namespace

    //No espaco de "Entrada" criamos Propriedades.
    |Sintaxe|->  <Acesso> <Nome> (<Entrada>) {<Comandos>}

    |Exemplo|->  public form1(string)


--------------------------------------------------------------------------------------------------------------------------------- C.5 -
//! STRUCTS.
    //Structs são ferramentas que armazenam multiplos dados.
    //Podemos definir Propriedades e/ou Metodos Construtores para uma Struct.

//* CRIANDO UMA STRUCT ------------------------------------------------------------------------------------------------------------*/
    //Atente-se que sua estrutura se assemelha muito com uma classe, porem ele NÃO possui as funcionalidades de uma classe.

//--// Escopo 3 - Namespace.

    |Sintaxe|->  <Acesso> Struct <Nome> {<Defina Propriedades e Metodos>}

    |Exemplo|->  struct Carro
                {
                    public string marca;
                    public int placa;
                    public bool vendido;
                    
                    public Carro(string marca, int placa, bool vendido)
                    {
                        this.marca = marca;
                        this.placa = placa;
                        this.vendido = vendido;
                    }
                }

//* CHAMANDO UMA STRUCT -----------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes

    |Sintaxe|->// Instancie a struct:
                <Struct> <Nome de Instanciação>; ------------------------------>// Instanciação para Propriedades.
                <Struct> <Nome de Instanciação> = new <Struct(<Parametros>)>; ->// Instanciação para Metodos construtores.
               // Chame a instanciação
                <Instancia>.<Propriedade>;


    |Exemplo|->// Metodo 1 - Chamando propriedades.
                 Carro c1;

                 c1.marca = "Ford";
                 c1.placa = 1943745;
                 c1.vendido = true;
               // Metodo 2 - Chamando metodos construtors
                 Carro c2 = new Carro("Fiat", 8326936, false)


//* STRUCTS ARRAYS ----------------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes

    |Sintaxe|->// Instanciando a Struct Array:
                  <Struct>[] <Nome de Instanciação> = new <Struct>[<Tamanho>]
               // Chamando a Struct Array:
                  <Instancia>[<Indice>].<Propriedade ou Metodo()>;

    |Exemplo|->  Carro[] carros = new Carro[3];

                 carros[0].marca = "Honda";
                 carros[1].Carro("BMW", 3852951, false);

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 4 +
//! METODOS.
    //Metodos são formas de chamar/puxar um bloco de comandos apenas pelo nome sem a necessidade de reescrever todos os comandos.

//* ESPECIFICADOR DE ACESSO*/
//--// Primarios.
  | public    ->// Sem restrição de acesso.
  | private   ->// Só pode ser acessado pela propria classe.
  | protected ->// Só pode ser acessado pela propria classe e pelas classes derivadas.

//--// Secundários.
    abstract  ->// Apenas cria a Propriedade/Metodo sem definir nenhum valor, deixando para as Propriedades filhas (Herança pg 3.1).
    sealed    ->// A Metodo não pode ser redefinida/alterada. (Polimorfismo pg x)
    virtual   ->// A Metodo só pode ser redefinida se for em um Metodo herdado. 
    static    ->// A Metodo pode ser chamado sem que se instancie um novo objeto.

//--// Combinações.
    public static ->// Cria uma classe Static que pode ser acessada em outros Escopos.


//* CRIANDO UM METODO -------------------------------------------------------------------------------------------------------------*/  
    //--// Escopo 2 - Classes.

    |Sintaxe|-> <Acesso> <Retorno> <Nome>(<Parametros>) {<Código>}
                        
    |Exemplo|
        static void Exibrimsg()
        { 
            Console.WriteLine("Hello world");
        }

//* RETORNO -----------------------------------------------------------------------------------------------------------------------*/
    //Retorno é quando definimos se o Metodo agregará ou não um valor a ele mesmo.
    //Dividido em dois: Void (Não retorna nada) e Tipos(int, string, float,...).
    //Caso queiramos que retorne algo, ao final do metodo devemos utilizar do Comando "Return" junto do valor à retornar.
    
    //--// Escopo 3 - Metodos.
    |Exemplo|
        static int Somar(int num1, Int num2)
        {   
            int resultado = num1 + num2;
            Return resultado;
            // Qualquer comando abaixo do Return será ignorado pelo programa.
        }

        soma1 = Somar(3,7); ->// A Propriedade "soma1" agora possui resultado da Propriedade "Resultado" graças ao return.


//* PARAMETROS --------------------------------------------------------------------------------------------------------------------*/
    //Parametros podem ser explanados como requisitos que inserem um valor em uma Propriedade dentro do Metodo.
    //São definidos na criação do Metodo e quando chamarmos ele, precisamos informar algum Parametro para chama-lo.
    
    //--// Escopo 3 - Metodos.
    |Exemplo|
        static void Somar(int num1, Int num2) ->// Criando os Parametros dentro dos parenteses
        {  
            int resultado = num1 + num2;
            Console.WriteLine(resultado);
        }

        Somar(2,3); ->// Aqui foi preencido um Parametro para que se retorne a soma destes valores.


//* SOBRECARGA DE METODOS*/
    //Uma sobrecarga de metodos pode ser definida por dois ou mais Metodos em uma Classe cujo nome sejam exatamente iguais.
    //Diferenciamos um Metodo do outro pelos Parametros, criando cada Metodo com um parametro diferente.
    //Deste modo conseguimos chamar o mesmo Metodo porem com deferentes maneiras de se preencher os Parametros.
    //Argumento params são altamente recomedados de se utilizar em sobrecargas de Metodos (Params pg: x)

//* CHAMANDO UM METODO ------------------------------------------------------------------------------------------------------------*/
    Exibirmsg(); ------------>// Metodo simples.
    Somar(13,76); ----------->// Metodo com Parametro.

    // Atribuindo o Metodo à uma Propriedade pelo Return.
    Soma1 = Somar(28,45);
    Console.WriteLine(Soma1)

//* CHAMANDO METODOS DE OUTRAS CLASSES --------------------------------------------------------------------------------------------*/
    //Para melhor compreenção leia sobre classes (Pg: x).

//--// Escopo 3 - Metodos

    |Sintaxe|->// Public - Chamar Propriedade ou Metodo (Instancie a classe (Pg: x)).
                 <Nome de Instanciação>.<Propriedade>
                 <Nome de Instanciação>.<Metodo(<Parametro>)>

               // Static - Chamar Propriedade ou Metodo (Sem instanciar).
                 <Classe>.<Propriedade>
                 <Classe>.<Metodo(<Parametro>)>


    |Exemplo|->// Classe Public.  
                 -->  PK1.nivel;
                  -->  PK2.nome = "Bulbasaur";
                   -->  PK2.Dano(12);

               // Objetos Static ou Private.
                 -->  Pokemon.nivel;
                  -->  Pokemon.nome = "Bulbasaur";
                   -->  Pokemon.Dano(12);

--------------------------------------------------------------------------------------------------------------------------------- M.1 -
//! ARGUMENTOS DE METODOS.
    //Argumentos são ferramentas que um Metodo pode recorer para realizar uma tarefa a mais.
    //Argumentos com exceção do "Params" são utilizados dentro de parametros na criação e utilização de Metodos.

    REF    -> Retornar valor diretamente no parametro de entrada.
    OUT    -> Adiciona parametro de saida.
    PARAMS -> Criar parametro igual um array.

//* ARGUMENTO DE REFERENCIAMENTO [ref] --------------------------------------------------------------------------------------------*/
    //Utilizado para retornar o resultado do Metodo diretamente na Propriedade de entrada.
    //Semelhante ao que o retorno faz, porem sem a necessidade de se utilizar o comando "return".
    //Utilizado no Parametro de Entrada e no de Criação.

//--// Escopo 2 - Classes.
    |Exemplo|->  static void Dobrar(ref int num1)
                 { num1 *= 2}

                 int Numero = 10;
                 Dobrar(ref numero);  ->// Ja atribui o valor à Propriedade de entrada após o calculo.


//* ARGUMENTO DE SAIDA [out] ------------------------------------------------------------------------------------------------------*/
    //Utilizado para adicionar Propriedades de saída nos parametros.
    //Usamos quando queremos mais de um valor saindo do Metodo, um simples return retorna apenas um valor.
    //Utilizado no Parametro de Entrada e no de Criação.

//--// Escopo 2 - Classes.
    |Exemplo|->  static void Dividir(int num1, int num2, out int resto)
                 {
                     resultado = num1/num2;
                     resto = num1%num2;  ->// Definiu o valor de resto e atribui ao parametro de saída "resto".
                     return resultado;   ->// Saída normal.
                 }

                 Dividir(10,3,out int rest); ->// Metodo return trará o valor 3.
                                               // Enquanto que o argumento out na propridade "rest" atribuirá o valor 1 para "rest".


//* ARGUMENTO DE PARAMETRO [params] -----------------------------------------------------------------------------------------------*/
    //Utilizado para definir um parametro parecido com um array (Array pg x).
    //Utilizado apenas no parametro de criação.

//--// Escopo 2 - Classes.
    |Exemplo|->  static void Soma(params int[] numero) ->// Criamos um array no parametro.
                 {
                    resultado = numero[0] + numero[1] + numero[2] + numero[3];
                    return resultado;
                 }

                 Somar(4,2,6,9,42) ->// Adiciona todos os valores ao Array "numero".
                                     // Mas pedimos para somar apenas os 4 primeiros numeros .


--------------------------------------------------------------------------------------------------------------------------------- M.2 -
//! METODOS VIRTUAIS.
    //Metodos virtuais são utilizados quando, em uma Classe-Filha existe um Metodo com o mesmo nome de um Metodo na Classe-Pai.

//* CRIANDO O METODO VIRTUAL ------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes.

    |Sintaxe|->// Metodo na classe Pai.
                  virtual <Acesso> <Retorno> <Nome()> {<Comandos>}
               // Metodo na classe Herdada.
                  override <Acesso> <Retorno> <Nome()> {<Comandos>} ->// Podemos utilizar em quantas Classe-Filhas quisermos.

    |Exemplo|->  public class Pai
                {
                    virtual public void Info() ->//Metodo Da classe Pai.
                    {
                        console.WriteLine("Classe Pai")
                    }
                }

                public class Filha:Pai
                {
                    override public void Info() ->// Metodo com mesmo nome do metodo da Classe Pai.
                    {
                        console.WriteLine("Classe Filha")
                    }
                }

--------------------------------------------------------------------------------------------------------------------------------- M.3 -
//! RECURSIVIDADE.
    //É um Metodo que chama a ele mesmo ou a outro metodo. Podemos criar um novo tipo de Loop com essa ferramenta.

//* CRIANDO O METODO RECURSIVO ----------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes.

    |Sintaxe|->  <Acesso> <Retorno> <Nome()> {<Metodo()>}

    |Exemplo|->  public int Fatorial(int num)
                {
                    int res;
                    if(num <= 1) ->// Precisamos informar um geito do loop terminar, caso contrario repetirá infinitamente.
                    {
                        res = 1
                    }
                    else
                    {
                        res = num * Fatorial(num-1) ->// Aqui utilizamos do proprio parametro para informar o proprio
                    }                                 // metodo, assim criando um Looping.
                    return res;
                }       // Neste codigo informamos um numero e ele faz a fatorial dele. Ex: 5 => 5*4*3*2*1


//* METODOS QUE RETORNAM OUTROS METODOS -------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes.

    |Sintaxe|->  <Acesso> <Metodo> <Nome()> { return new <Metodo()>; }

    |Sintaxe|->  public Dano Getdano()
                {
                    return new Dano();
                }

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 5 +
//! PROPRIEDADES.
    //Pode ser difinida por locais na memoria RAM onde se consegue guardar informações, utilizamos para guardar valores.
    //Muitas vezes podem ser chamadas de Propriedades ou de Variaveis.

//* ESPECIFICADOR DE ACESSO*/
//--// Primarios.
  | public    ->// Sem restrição de acesso.
  | private   ->// Só pode ser acessado pela propria classe.
  | protected ->// Só pode ser acessado pela propria classe e pelas classes derivadas.

//--// Secundários.
    abstract  ->// Apenas cria a Propriedade/Metodo sem definir nenhum valor, deixando para as Propriedades filhas (Herança pg 3.1).
    sealed    ->// A Propriedade não pode ser redefinida/alterada. (Polimorfismo pg x)
    virtual   ->// A Propriedade só pode ser redefinida se for em uma Propriedade herdada. 
    static    ->// A Propriedade pode ser chamado sem que se instancie um novo objeto.

//--// Combinações.
    public static ->// Cria uma Propriedade Static que pode ser acessada em outros Escopos.

//* CRIANDO UMA PROPRIEDADE -------------------------------------------------------------------------------------------------------*/
    // Podemos criar uma Propriedade sem acesso, ela automaticamente sera de acesso "Public".
    // Existem caracteres proibidos na nomeação, como: Espaços, Caracteres especiais e Nomes reservados pelo C#.

//--// Escopo 2 e 3 - Classes e Metodos.
    |Sintaxe|->  <Acesso> <Tipo> <Nome> = <Valor>;
    
    |Exemplo|->  public String Meunome = "Henrique Jonck";


//* ALTERANDO UMA PROPRIEDADE -----------------------------------------------------------------------------------------------------*/
    
//--// Escopo 2 e 3 - Classes e Metodos.
    |Sintaxe|->   <Propriedade> = <Novo Valor>;

    |Exemplo|->   Meunome = "Rainha Elizabeth";


//* CONSTANTES --------------------------------------------------------------------------------------------------------------------*/
    //Constantes são como irmãs gemeas das Propriedades que nunca podem ser alteradas.

/*CRIANDO UMA PROPRIEDADE CONSTANTE*/
//--// Escopo 2 e 3 - Classes e Metodos.

    |Sintaxe|->  const <Tipo> <Nome> = <Valor>;

    |Exemplo|->  const Float Pi = 3.141592f;
                    // Este valor nunca poderá ser alterado.


--------------------------------------------------------------------------------------------------------------------------------- P.1 -
//! TIPOS DE DADOS.
    String  ->/*Texto [Entre " "]                       */| String Texto = "ABC12";
    Char    ->/*Caracteres unicos [Entre '']            */| Char Caractere = 'r';
    Integer ->/*Numeros inteiros                        */| Integer Numero = 123;
    Float   ->/*Numeros decimais, [Final com letra f]   */| Float NumDec = 438.50f;
    Bool    ->/*True ou False                           */| Bool Verdade = True;
    Double  ->/*                                        */|
    Decimal ->/*                                        */|
    Datetime->/*Datas e Horas                           */| datetime Data = DateTime.Now;
                                                          | datetime Data = new datetime (ano,mes,dia);

    Var     ->// Automatico. Tenta adivinhar qual é o tipo, ou seja, pode atribuir qualquer valor.
    Dynamic ->// Alteravel.  Permite que o tipo da PROPRIEDADE seja alterado futuramente para outro tipo.

--------------------------------------------------------------------------------------------------------------------------------- P.2 -
//! ARRAY.
    //Arrays podem ser consideradas como super propriedades que armazenam multiplos valores;
    //É como se ao invez de criar diversas Propriedades para cada valor, criar uma unica Propriedade para varios valores.

//* CRIANDO UM ARRAY --------------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 e 3 - Classes e Metodos.

    |Sintaxe|// Declarando apenas o tamanho.
               <Acesso> <Tipo>[] <Nome> = New <Tipo>[<Tamanho>];
             // Declarando e ja definindo os valores.
               <Acesso> <Tipo>[] <Nome> = {<Valor 1>,<Valor 2>,<Valor 3>};


    |Exemplo|->  Int[] Anos = New int[3];
            
                 String[] Produto = {"Maçã","Pera", "Uva"};
                   // Podemos criar um Array sem acesso, ele automaticamente sera de acesso "Public".


//* CHAMANDO UM ARRAY -------------------------------------------------------------------------------------------------------------*/
    //A contagem inicia no zero

//--// Escopo 2 e 3 - Classes e Metodos.
    |Sintaxe|->  <Array[<Indice>]>

    |Exemplo|->  Produto[0] ->// Maçã

                 Console.Writeline(Produto[1]) ->// Pera
                 Produto[2] = "Pessego"

//* METODOS -----------------------------------------------------------------------------------------------------------------------*/

    Array.Sort(Produto); ->// Ordena os valores do Array (Alfabetico - string) (Numerico - int)
--------------------------------------------------------------------------------------------------------------------------------- P.3 -
//! MATRIZ.
    //Matrizes são Arrays bidmencionais que possuem linhas e colunas.
    //Matrizes são definidas por [Linhas,Colunas].                        Exemplo: Matriz de [3,5]:  10 20 30 40 50   
    //Podemos acessar qualquer um dos valores da tabela bidmendional.                                60 70 80 90 23
    //                                                                                               12 45 86 21 67
                        
//* CRIANDO UMA MATRIZ ------------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 e 3 - Classes e Metodos.

    |Sintaxe|// Declarando apenas o tamanho.
               <Acesso> <Tipo>[,] <Nome> = New <Tipo>[<Linhas>,<Colunas>];
             // Declarando ja definindo os valores.
               <Acesso> <Tipo>[,] <Nome> = {{<L1 C1>,<L1 C2>},{<L2 C1>,<L2 C2>}}; ->// Matriz de Duas linhas e duas colunas.


    |Exemplo|->  Int[,] Anos = New int[2,6]; ->// Duas linhas e seis colunas.

                 String[,] Produto = {{"Maçã","Pera"},{"Uva","Pessego"}};
                    // Podemos criar uma Matriz sem acesso, ela automaticamente sera de acesso "Public".


//* ATRIBUINDO VALOR --------------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 e 3 - Classes e Metodos.

    Anos[0,0] = 10; Anos[0,1] = 20; Anos[0,2] = 30; Anos[0,3] = 40; Anos[0,4] = 50; //                 10 20 30 40 50
    Anos[1,0] = 60; Anos[1,1] = 70; Anos[1,2] = 80; Anos[1,3] = 90; Anos[1,4] = 23; // Resultado:      60 70 80 90 23           
    Anos[2,0] = 12; Anos[2,1] = 45; Anos[2,2] = 86; Anos[2,3] = 21; Anos[2,4] = 67; //                 12 45 86 21 67 


//* CHAMANDO UMA MATRIZ -----------------------------------------------------------------------------------------------------------*/
    //A contagem inicia do zero

//--// Escopo 2 e 3 - Classes e Metodos.
    |Sintaxe|->  <Matriz[<Linha>,<Coluna>]>

    |Exemplo|->  Anos[1,3] -> 90

                 Console.WriteLine(Anos[2,1]) ->// 45
                 Produto[1,1] = "Mamão"

--------------------------------------------------------------------------------------------------------------------------------- P.4 -
//! ENUM.
    //Serve para declarar um conjunto de valores limitados dentro de um novo tipo criado por voçê.
    //São muito utilizados em paralelo com os Switchs. (Switchs Pg: x)

//* CRIANDO UM ENUM ---------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 e 2 - Namespaces e Classes.

    |Sintaxe|->  <Acesso> Enum <Nome> {<Declarar valores>};

    |Exemplo|->  static enum uf {SP, PR, MG, RS, RR};
                    // Apartir de agora existe um novo tipo chamado "uf" que suporta apenas estes valores.


//* CHAMANDO UMA PROPRIEDADE COM TIPO ENUM ----------------------------------------------------------------------------------------*/
//--// Escopo 1 - Metodos.
    
    |Sintaxe|->// Chamando diretamente pelo nome
                 <Enum> <Nome> = <Enum>.<Valor contido>;
               // Chamando pelo indice
                 <Enum> <Nome> = (<Enum>)<Indice>;

    |Exemplo|->  uf MeuEstado = uf.PR;
                 uf MeuEstado = (uf)3;

    
//* INDICES DE ENUM ---------------------------------------------------------------------------------------------------------------*/
    //Dentro de cada propriedade criada em um Enum, o sistema armazena um indice iniciando do 0.
    /*Ou seja*/->  SP = 0,  PR = 1,  MG = 2,  RS = 3,  RR = 4

        // Podemos alterar o indice padrão de cada valor, independentemente da ordem.
//--// Escopo 1 - Metodos.
    |Exemplo|-> enum pessoas {ana, pedro = 10, joão, maria = 290, clara, diogo = 54}

        // Atente-se que o numero a seguir será ordenado segundo o numero anterior.
    ana-> 0   pedro->10   joão->11   maria->290   clara->291   diogo->54


//* CONVERTENDO ENUMS -------------------------------------------------------------------------------------------------------------*/
    //É possivel converter um Enum de letra para seu respectivo indice, e assim chama-lo pelo numero, ou vise e versa.

//--// Escopo 1 - Metodos.

    |Sintaxe|->  // String -> Int
                    ((int)<Enum>.<valor contido>)
                 // Int -> String 
                    ((<Enum>) <Indice>)

    |Exemplo|->  Console.WriteLine((int)nome.maria)   ->// Trará o numero 290 e jogará na tela.
                 pessoas amiga = ((pessoas)291);      ->// Converte 291 em "clara" e joga na Propriedade "amiga".

--------------------------------------------------------------------------------------------------------------------------------- P.5 -
//! ACESSORES GET e SET.
    //Utilizamos um acessor para criar Propriedades de Somente leitura ou escrita ou ambos.

    //Podemos utilizar de um de ambos.
    get -> Ler valor da propriedade    |// Utilizamos return no final.
    set -> Definir valor a Propriedade |// O que é inserido é armazenado na propriedade "valor"(Exclusiva dos acessores)

    value ->// Valor de entrada definido pelo usuario no set.

//* CRIANDO O ACESSOR -------------------------------------------------------------------------------------------------------------*/

//--// Escopo 2 - Classes.

    |Sintaxe|->  <Acesso> <Tipo> <Nome Do Acessor>
                {
                       //Ordem não importa
                    set{<Codigo>}
                    get{<Codigo> return;}
                }
                
    |Exemplo|->  class Veiculo
                 {
                    private int velocidade = 0;
                    private int vel;

                    // Criando o acessor ------------------------------------------------------------------
                    public int velocidadeMax 
                    {
                        set ->// Aqui começa o Código da hora que for definir os valores.
                        {
                            if(value < 0) ->// "Value" é o valor que será definido pelo usuario no Set.
                            {
                                velocidade = 0;
                            }
                            else if(value > 300)
                            {
                                velocidade = 300;
                            }
                            else
                            {
                                velocidade = value; ->// "velocidade" receberá o valor que o usuario definir em Set.
                            }
                        }
                        get
                        {
                            return velocidade; ->// Quanto o Get for utilizado, retornará o valor de "velocidade"
                        }
                    }
                }

//* INSTANCIANDO O ACESSOR --------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes

    |Sintaxe|->  <Classe Do Acessor> <Nome de Instanciação> = new <Classe Do Acessor>

    |Exemplo|->  Veiculo veic1 = new Veiculo();

//* CHAMANDO UMA PROPRIEDADE SET e GET --------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos

    |Sintaxe|->// Com a classe instanciada, chame o Acessor.
                 <Instancia>.<Nome Do Acessor>

    |Exemplo|->  veic1.velocidadeMax = 250;  ------------->// Set(define) valor
                 Console.WriteLine(Veic1.VelocidadeMax); ->// Get(pega) valor e joga na tela 
    
--------------------------------------------------------------------------------------------------------------------------------- P.6 -
//! ACESSORES COM ARRAY.
    //Utilizamos este Acessor para criar Propriedades de Somente leitura ou escrita ou ambos com entradas de Array.

//* CRAINDO O ACESSOR COM ARRAY ---------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes

    |Sintaxe|->// Primeiro crie um Array (Pg: x).
                 <Acesso> <Tipo[]> <Nome> = new <Tipo[<Tamanho>]>;
               // Depois crie o Acessor Array:
                 <Acesso> <Tipo> this[int <Indexador>]
                {
                    set{<Codigo>}
                    get{<Codigo> return;}
                }
               // Quando for referenciar o Array:
                <Array[<index>]>


    |Exemplo|->  class Veiculo
                 {
                    private int[] velocidade = new int[5];
                    private int vel;
                    
                    public int this[int i] ->// Criando o indexador.
                    {set
                        {if(value < 0)
                            {
                                velocidade[i] = 0; ->// Referenciando o Array.
                            }
                            else if(value > 300)
                            {
                                velocidade[i] = 300;
                            }
                            else
                            {
                                velocidade[i] = value; 
                            }
                        }
                     get
                        {return velocidade[1]; 
                        }
                    }
                }

//* INSTANCIANDO O ACESSOR --------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes

    |Sintaxe|->  <Classe Do Acessor> <Nome de Instanciação> = new <Classe Do Acessor>

    |Exemplo|->  Veiculo veic = new Veiculo();

//* CHAMANDO UMA PROPRIEDADE SET e GET --------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos

    |Sintaxe|->// Com a classe instanciada, chame o Acessor.
                 <Instancia[Indice]>

    |Exemplo|->  veic[1] = 250;  ------------->// Set(define) valor
                 Console.WriteLine(Veic[2]); ->// Get(pega) valor e joga na tela 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++   
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--

CAPTULO 2 - COLEÇÕES e LISTAS

6 - VISÃO GERAL DE COLEÇÕES
7 - COLEÇÃO DICTIONARY
8 - COLEÇÃO LINKEDLIST
9 - COLEÇÃO LIST
10- COLEÇÃO QUEUE


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 6 +
//! VISÃO GERAL DE COLEÇÕES.
    //Coleções são ferramentas de organização de codigo semelhantes a Arrays e Matrizes.
    //Ao contrario de Arrays e Matrizes, coleções armazenam dados de forma dinamica, crescendo e diminuindo.

//* INSTANCIANDO UMA COLEÇÃO ------------------------------------------------------------------------------------------------------*/
    //Para se utilizar de qualquer coleção, é preciso antes instanciar suas coleções.

//--// Escopo 1 - Namespaces.

1-    using System.Collections.Generic;
2-    using System.Collections.Concurrent;
3-    using System.Collections;

//* PRINCIPAIS COLEÇÕES -----------------------------------------------------------------------------------------------------------*/
    (1) DICTIONARY ->// Representa uma coleção de [Chave - Valores] organizadas pela chave.
    (1) LINKEDLIST ->// Representa uma lista duplamente vinculada.
    (1) LIST       ->// Representa uma Lista de itens acessados por indices, com metodos para pesquisar, classificar e modificar.
    (1) QUEUE      ->// Representa uma coleção em Pilha PEPS (Primeiro a entrar, Primeiro a sair).
    (1) STACK      ->// Representa uma coleção em Pilha UEPS (Ultimo a entrar, Primeiro a sair).


----------------------------------------------------------------------------------------------------------------------------------- 7 -
//! COLEÇÃO DICTIONARY.
    //Um Dictionary funciona como um meio de se criar uma Propriedade que contem uma Chave e um Valor.
    //A chave é a organização ao qual agrupamos o Dictionary enquanto que o valor é a informação contida neste.
    //Um Dictionary funciona como uma Propriedade, então funciona por exemplo em: Foreach,

//* CRIADO UM DICTIONARY ----------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  Dictionary <<Tipo-Chave>,<Tipo-Valor>> <Nome de Instanciação> = new Dictionary <<Tipo-Chave>,<Tipo-Valor>>();

    |Exemplo|->  Dictionary <int, string> Veiculos = new Dictionary <int, string>();
                 Dictionary <string, double> Preco = new Dictionary <string, double>();
                 

//* MANIPULANDO O DICTIONARY ------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>.<Metodo()>;

    |Exemplo|->  Veiculos.Add(10,"Carro");
                 Veiculos.Add(0,"Navio")
                 Preco.Add("Sansung",3000.99);

//* CHAMANDO O DICTIONARY ---------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>[<Chave>];

    |Exemplo|->  Veiculos[10] = "Trem"
                 Preco["Sansung"] = 3500.99;


//* MELHOR MANEIRA DE RETORNAR TODOS OS VALORES/CHAVES ----------------------------------------------------------------------------*/
//--// Escopo 2 - Classes.

    Dictionary<int, string>.ValueCollection valores = Veiculos.Values;
    Dictionary<int, string>.ValueCollection valores = Veiculos.Keys;

    foreach(string v in valores)
    {
        Console.WriteLine(v);
    }

//* METODOS DE MANIPULAÇÃO - DICTIONARY -------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    <Instancia>.Add(<Chave>,<Valor>);   ->// Adiciona uma Chave e seu Valor ao Dictionary.
    <Instancia>.ContainsKey(<Chave>);   ->// Retorna true ou false caso exista uma chave com o valor informado.
    <Instancia>.ContainsValue(<Valor>); ->// Retorna true ou false caso exista um valor correspondente ao informado.
    <Instancia>.Count;                  ->// Informa o tamanho do Dictionary.

    <Instancia>.Remove(<Chave>);     ->// Remove o Dictionary com a chave correspondente.
    <Instancia>.Clear();             ->// Apaga todos os Dictionarys.


----------------------------------------------------------------------------------------------------------------------------------- 8 -
//! COLEÇÃO LINKEDLIST.
    //É uma lista duplamente encadeada.
    //Onde que cada elemento é um nó da lista que possui um vinculo para o elemento posterior e anterior.

//* CRIADO UMA LINKEDLIST ---------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodo

    |Sintaxe|->  LinkedList <<Tipo>> <Nome de Instanciação> = new Linkedlist <<Tipo>>();

    |Exemplo|->  LinkedList <string> Transporte = new LinkedList <string>();

//* MANIPULANDO O LINKEDLIST ------------------------------------------------------------------------------------------------------*/
    //É muito importante que se utilize nós em LinkedLists. 
    //Nós podem ser definidos como o ponto em que será inserido um valor posteriormente, tanto antes quanto depois do nó.

//--// Escopo 3 - Metodos.

    |Sintaxe|->// Utilizando-se do Linkedlist.
                 <Instancia>.<Metodo()>;

               // Criar um nó - Definir um nó.
                 LinkedListNode<Tipo da Lista> <Nome Do nó>;
                 <Nome Do nó> = Transporte.FindLast(<Ponto do Nó>);

               // Definir em algum ponto de Nó.
                 <Instancia>.<AddBefore ou AddAfter>(<Nome do Nó>,<Valor>);


    |Exemplo|->// Atribuindo valor a Primeira e Ultima Posição.
                 Transporte.AddFirst("Onibos"); 
                 Transporte.AddLast("Metro");  


               // Criando e Definindo o Nó.
                 LinkedListNode<string> nó;          ->// Criado o Nó, Podemos criar varios nós para a mesma Lista Linkada.
                 nó = Transporte.FindLast("Metro");  ->// Ponto no Nó que queremos continuar.

               // Atribuindo valor antes ou depois de um Nó.
                 Transporte.AddBefore(nó, "Uber");          
                 Transporte.AddAfter(nó, "Monotrilho").Next; ->// ".next" aponta para o proximo nó da Lista Linkada. 
                                                               
//* CHAMANDO O LINKEDLIST ---------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos. 

    |Sintaxe|->  <Instancia>[<Chave>];

    |Exemplo|->  Veiculos[10] = "Trem"
                 Preco["Sansung"] = 3500.99


//* METODOS DE MANIPULAÇÃO - LINKEDLIST -------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    <Instancia>.Find(<Valor>);      ->// Procura pelo primeiro valor correspondente na lista e retorna, o Valor ou "NULL"
    <Instancia>.FindLast(<Valor>);  ->// Procura pelo ultimo valor correspondente na lista e retorna, o Valor ou "NULL"
   
    <Instancia>.AddFirst(<Valor>);           ->// Adiciona valor ao primeiro item da Lista Linkada.
    <Instancia>.AddLast(<Valor>);            ->// Adiciona valor ao ultimo item da Lista Linkada.
    <Instancia>.AddBefore(<Nó>,<Valor>);     ->// Adiciona valor antes de um nó item da Lista Linkada.
    <Instancia>.AddAfter(<Nó>,<Valor>).next; ->// Adiciona valor depois de um nó item da Lista Linkada e pula para o proximo Nó.

    <Instancia>.RemoveFirst();    ->// Remove o Primeiro item da lista Linkada.
    <Instancia>.RemoveLast();     ->// Remove o Ultimo item da lista Linkada.
    <Instancia>.Clear();          ->// Limpa todos os item da lista Linkada.



----------------------------------------------------------------------------------------------------------------------------------- 9 -
//! COLEÇÃO LIST.
//Representa uma Lista de objetos que podem ser acessados por índice.
//Fornece métodos para pesquisar, classificar e manipular Listas.

//* CRIADO UM LIST ----------------------------------------------------------------------------------------------------------------*/
//--// Escopo 2 - Classes.

    |Sintaxe|->  List <<Tipo>> <Nome de Instanciação> = new List <<Tipo>>();

    |Exemplo|->  List <string> Cores1 = new List <string>();
                 List <string> Cores2 = new List <string>();
                 

//* MANIPULANDO A LIST ------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>.<Metodo()>;

    |Exemplo|->  Cores1.Add("Vermelho");
                 Cores1.Add("Azul");
                 Cores1.Add("Amarelo");

                 Cores2.AddRange(Cores1); ->// A lista "Cores2" recebe todos os elementos de "Cores1"

//* CHAMANDO A LIST ---------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>[<Chave>];

    |Exemplo|->  Veiculos[10] = "Trem"
                 Preco["Sansung"] = 3500.99

//* METODOS DE MANIPULAÇÃO - LIST -------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    <Instancia>.Add(<Valor>,<Valor>);      ->// Adiciona um ou mais itens na lista.
    <Instancia>.Insert(<Posição>,<Valor>); ->// Insere um item na posição informada da lista.

    <Instancia>.Contains(<Item>);       ->// Retorna true ou false caso exista um item com o valor informado.
    <Instancia>.IndexOf(<Valor>);       ->// Procura o valor informado e retorna a posição do primeiro item semelhante.
    <Instancia>.LastIndexOf(<Valor>);   ->// Procura o ultimo valor informado e retorna a posição do item informado.
    <Instancia>.OfType<Tipo>();         ->// Retorna todos os valores do tipo informado.

    <Instancia>.Copyto(<Array>,<Posição>);->// Copia tudo da lista para o Array, apartir da posição informada.
    <Instancia>.Invert();                 ->// Inverte os itens da lista.
    <Instancia>.Sort();                   ->// Ordena os itens em oredem alfabetica.
    <Instancia>.Count();                  ->// Conta quantos itens posuem na lista.
    <Instancia>.Capacity = <Tamanho>;     ->// Define a quantidade maxima de itens em uma lista, ou retorna seu tamanho.

    <Instancia>.RemoveAt(<Posição>);   ->// Remove o item no indice correspondente.
    <Instancia>.Remove(<Item>);        ->// Remove o item com o valor correspondente.
    <Instancia>.Clear();               ->// Limpa todos os itens da fila.


---------------------------------------------------------------------------------------------------------------------------------- 10 -
//! COLEÇÃO QUEUE.
    //Representa uma coleção PEPS (Primeiro a entrar, primeiro a sair de objetos).

//* CRIADO UM QUEUE ---------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  Queue <<Tipo>> <Nome de Instanciação> = new Queue <<Tipo>>(<Array>/*OPCIONAL*/);

    |Exemplo|->  Queue <string> Colocacao = new Queue <string>();

                 string[] paises = new string[5] {"EUA","Inglaterra","Russia","França","China"}
                 Queue <string> ONU = new Queue <string>(paises);
                 

//* MANIPULANDO O QUEUE -----------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>.<Metodo()>;

    |Exemplo|->  Colocacao.Enqueue("Primeiro");
                 Colocacao.Enqueue("Segundo");
                 Colocacao.Enqueue("Terceiro"); ->// Adiciona no final da fila.


//* CHAMANDO O QUEUE --------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|->  <Instancia>[<Chave>];

    |Exemplo|->  Veiculos[10] = "Trem"
                 Preco["Sansung"] = 3500.99

//* METODOS DE MANIPULAÇÃO - QUEUE ------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    <Instancia>.Enqueue(<Valor>);         ->// Adiciona um item a fila.

    <Instancia>.Dequeue();                ->// Chama o primeiro item da fila e em seguida remove ele.
    <Instancia>.Peek();                   ->// Apenas chama o primeiro item da fila.
    <Instancia>.Contains(<Item>);         ->// Retorna true ou false caso exista um item com o valor informado.

    <Instancia>.Clear();                  ->// Limpa todos os itens da fila.

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++   
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--

CAPTULO 3 - FERRAMENTAS DE PROGRAMAÇÃO

11- ESTRUTURAS CONDICIONAIS
12- ESTRUTURA SWITCH
13- ESTRUTURAS DE REPETIÇÃO
	A- WHILE
	B- DO WHILE
	C- FOREACH
	D- FOR
14- ESTRUTURA TRY CATCH

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 11 +
//! ESTRUTURAS CONDIÇIONAIS.
    //Condicinais são estruturas que mudão o rumo do codigo caso o resultado seja True ou False.

//* CRIANDO UMA CONDICIONAL -------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|
        if(<Condicão 1>)
            {
            <Codigo para Verdadeiro>
            } 
        else if(<Condição 2>) //OPÇIONAL, Repita quantas vezes quizer para haver outras condições.
            {
            <Codigo caso if seja Falso>
            }
        else
            {
            <Codigo caso tudo seja falso>
            }
    

    |Exemplo|
        Int Anoatual = 2000;
        int Nascimento = Console.Readline();
        
        if(Nascimento < Anoatual)
            {
            Console.WriteLine("Voçê nasceu antes do seculo 21!")
            }
        else if(Nascimento >= Anoatual)
            {
            Console.WriteLine("Voçê nasceu no seculo 21!")
            }
        else
            {
            Console.Writeline("Isso é IMPOSSIVEL!!!!!")
            }
        // Caso queira que a condiçional termine sem nenhum "else", escreva [return;] no final da linha.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 12 +
//! ESTRUTURA SWITCH.
    //Switchs são estruturas parecidas com as Condicionais.
    //Porem são utilizadas quando temos muitas condições(else if) e queremos simplificar o codigo.

        //O que o Switch faz e checar se a Propriedade é igual a alguma das posibilidades, se sim, executa o codigo.
        //Porem funciona apenas com igualdade(==), operadores como (<) não funcionam.

//* CRIANDO UM SWITCH -------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos.

    |Sintaxe|
        switch(<Propriedade>)
            {
                case <Comparação>:
                    <Codigo caso a Comparação seja atendida>;
                break;
                    //Repita esta estrutura para cada posivel alteração da Propriedade (Posibilidade).

                default:
                    <Codigo caso nada atenda a comparação>
                break;
            }
    
    |Exemplo|
        String Cor = "Azul";
        switch(Cor)
            {
                case "Azul":
                case "azul":  //Tambem podemos criar mais de uma opção para casa caso.
                    Console.writeline("Sua cor favorita é Azul!")
                break;

                case "Vermelho":
                case "vermelho":
                    Console.writeline("Sua cor favorita é Vermelho!")
                break;

                default:      //"default" será utilizado quando não houver nenhuma combinação com a Propriedade.
                    Console.writeline("Não sabemos a sua cor favorita")
                break;
            }


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 13 +
//! ESTRUTURAS DE REPETIÇÃO.
    //Estruturas de repetição são ferramentas para repetir um codigo infinitamente enquanto a condição for verdadeira.

//* INDICE*/
    A - While
    B - Do While 
    C - Foreach
    D - For

    break    ->// Instrução que quando executada, encerra qualquer loop.
    continue ->// No momento em que é executado, ele ignora o resto do loop até o fim e passa para o proximo valor deste.

//* WHILE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  A  
    //Repetirá enqaunto a condição for "True" e terminará quando for "False".

//--// Escopo 3 - Metodos.
    |Sintaxe|->  while(<Condicão>)  {<Codigo que será repetido>}

//* DO WHILE ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  B 
    //Irmã gemea da estrutura While.
    //Repete o codigo e apenas depois confere se a condição é True para que repita mais uma vez.
    //Sua peculiaridade é que mesmo que a condição seja falsa, a estrutura repetirá pelo menos uma vez.

//--// Escopo 3 - Metodos.
    |Sintaxe|->  do{<Codigo que será repetido>}  while(<Condicão>)

//* FOREACH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  C 
    //O Foreach é uma estrutura que repete uma vez para cada valor contido dentro de um Array (Array Pg: x).
    //Ele tambem salva os valores contidos em um array dentro de sua Propriedade.

//--// Escopo 3 - Metodos.

    |Sintaxe|->  foreach(<Tipo do Array> <Novo Nome> in <Array>) {<Comando que repetirá para cada valor>}

    |Exemplo|
        String[] Cidades = {"São Paulo", "Curitiba", "Vitoria", "Belem"};

        foreach (String Capitais in Cidades)
        {
            Console.WriteLine(Capitais); ->// Repetirá uma vez para cada valor e em cada repetição trará o valor contido na hora.
        }

//* FOR +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  D 
    //A estrutura for é utilizada para reduzir o codigo.
    //Voçê ja cria uma Propriedade de contagem, adiciona a condição e ja soma ao contador. Tudo dentro do "For".

//--// Escopo 3 - Metodos.

    |Sintaxe|->  for(<Propriedade de contagem> ; <Condição> ; <Adicione valor ao contador>) {<Codigo de repetição>}

    |Exemplo|
        for(int Contador = 0 ; Contador < 10 ; Contador++)
            {
            Console.WriteLine("A estrutura esta repetindo!");
            }

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 14 +
//! EXCEÇÕES - TRY CATCH.
    //São formas de se tratar um erro.
    //Ao invez de informar na tela o erro e o programa finalizar, podemos definir uma programação caso ocorra este erro.

//--// Escopo 3 - Metodos.

    |Sintaxe|
        try {
                <Codigo que o programa tentará realizar>
                    // Assim que for descoberto um erro, ele ignora o resto do codigo e pula para o "catch".
            }
        catch(Exception <Nome>) //(Exception) = Opcional
            {                   //Exception puxa o formulario do erro e joga na propriedade.
                <Codigo para caso a tentativa resulte em um erro>
            }
        //Opcional
        finally
            {
                <Codigo que será executado independentemente se ouve erro ou não>
            }

    |Exemplo|
        try
        {
            int res = 10 / 0; ->// Causará um erro, pois é imposivel dividir por 0.
            Console.WriteLine(res);
        }
        catch (Exception er)
        {
            Console.WriteLine("ERRO: " + er.message); ->//Informará que ouve um erro.
                                                         //A Propriedade "er" informa uma mensagem com o erro que o causou.
        }

//* THROW -------------------------------------------------------------------------------------------------------------------------*/
    //Throw é uma forma de se criar um formulario de erro personalizado e que não esta incluido no programa.
    //O exception fica vinculado ao escopo atual, quando houver um erros naquele escopo, trará aquele Exception.

//--// Escopo 3 - Metodo.

    |Sintaxe|->  throw new Exception(<Erro ou Informação>)

    |Exemplo|->  throw new Exception("Não é posivel realizar uma divisão por zero!")


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++   
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--

CAPTULO 4 - FERRAMENTAS BASICAS

13 - OPERADORES LÓGICOS
14 - CONCATENAÇÃO
15 - CONVERTER VALOR
16 - OPERADORES ARITIMÉTICOS
17 - INCREMENTO e DECREMENTO DE VALOR
18 - DESCOBRIR COMPRIMENTO
19 - ABREVIAÇÕES


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 15 +
//! REDIRECIONAR CODIGO - GOTO.
    //O comando Goto serve para enviar o foco do programa para outra parte do codigo, seja antes ou depois do Goto.
    //Para isso é precisso criar um Label antes.

//* LABEL -------------------------------------------------------------------------------------------------------------------------*/
    //Labels são locais onde voçê indica usando o Goto para que o programa recomeçe daquele ponto.

//--// Escopo 3 - Metodos  

    |Sinatxe|->  <Nome>:

    |Exemplo|->  Inicio:

//* COMANDO GOTO ------------------------------------------------------------------------------------------------------------------*/
//--// Escopo 3 - Metodos    

    |Sintaxe|->  goto <nome>;

    |Exemplo|->  goto Inicio;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 16 +
//! OPERADORES LOGICOS.
    AND = & ou &&  //Para que a saida seja verdadeira, TODAS as condiçoes precisam ser verdadeiras.
    OR  = | ou ||  //Para que a saida seja verdadeira, basta que apenas uma das condiçoes seja verdadeira.

    //A diferença de quando ha um e dois simbolo é que:
        &  ->Verifica TODA a operação logica.
        && ->Verifica apenas até ja conseguir o resultado.

    |Exemplo|
        1<2 |  10<20  //Mesmo o primeiro valor ja sendo True ele continua até o fim do codigo e retorna True.
        1<2 || 10<20  //Assim que o primeiro valor foi descoberto como True o codigo termina e retorna True.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 17 +
//! CONCATENAÇÃO.
    //Concatenação é quando precisamos juntar dois valores em um.
    //Tenha em mente que nem sempre será possivel e as vezes precisará converter um ou mais valores.

    Simbolo de Concatenção [+]

    |Sintaxe|->  <Valor 1> + <Valor 2>;

    |Exemplo|->  "Meu nome é: " + Nome;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 18 +
//TODO: CONVERSÕES EXPLICITAS.
    //Serve para converter o valor de uma Propriedade que é de um tipo para outro tipo.

    |Sintaxe|-> // Maneira 1.
                 (<Tipo>)<Valor à converter>;
                // Maneira 2.
                 <Tipo>.Parse(<Valor à converter>);
                // Maneira 3.
                 Convert.to<Tipo>(<Valor à converter>);

    |Exemplo|->  (short)10;
                 int.parse("136");
                 Convert.ToInt32("692");
                    //Nem sempre isso é possivel.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 19 +
//! OPERADORES ARITIMÉTICOS.
    //Operadores utilizados em formulas matemáticas.
    + Adição                   | < Menor que                   | %  Divide e Retorna o valores que sobra              
    - Subtração                | > Maior que                   | == Igualdade               
    * Multiplicação            | <= Menor ou igual             | != Diferença               
    / Divisão                  | >= Maior ou igual                                           

    //Todas as Propriedades com Operaçoes Aritiméticas devem ser do tipo Float e devem conter ao menos um numero como Float(7.0f).
    //Atente-se que o resultado deve corresponder ao tipo da Propriedade (Int ou Decimal/Float).


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
//! OPERADOR TERNARIO.
    //O operador ternario retorna um valor caso a expressão booleana seja True e outro valor caso seja False.
    //Basicamente pode servir de atalho para a condicional "if else".

    |Sintaxe|->  <Condição booleana> ? <Valor para true> : <Valor para false>;

    |Exemplo|->  Bool vivo = true;
                 Console.WriteLine(vivo?"Ele está vivo":"Ele está morto");
                        // Escreverá um texto diferente para cada condição de "vivo".


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
//TODO OPERADOR NULL-TOLERANTE.
    //Diz ao compilador do programa que uma valor não é nulo, confie em mim
 [!]


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
//TODO OPERADOR DE COALESCÊNCIA.
    //Atribui o valor a uma variavel apenas se esta variavel for nula;
 [??]
    int a = null;
    a ?? = 3;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
//! OPERADOR DE INTERPOLAÇÃO.
    //A interpolação é um metodo de se concatenar duas ou mais strings indicando suas respectivas Propriedades;

    |Sintaxe|->  $ <"String: {<Propriedade 1>} {<Propriedade 2>}">;

    |Exemplo|->  string nome = "Henrique";
                 string sobrenome = "Jonck";
                 string meuNome = $"Meu Nome é: {nome} {sobrenome}";

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 21 +
//! INCREMENTO e DECREMENTO DE VALOR.
    //Formas de se repetir uma operação de um valor -> (num = num + 1) == (num += 1).
    //Existem 3 formas de se fazer isso, tanto para a [+] quanto para [-][*][/].

    Contagem = Contagem + 1      Contagem = Contagem - 1      Contagem = Contagem * 1          Contagem = Contagem / 1
    Contagem += 1                Contagem -= 1                Contagem *= 1                    Contagem /= 1
    Contagem ++                  Contagem --


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 22 +
//! BITWISE.
    //O que o bitwise faz é deslocar o numero binario algumas casas tanto para a esquerda quanto para a direita.
    //Isso faz com que consiguamos DOBRAR ou DIVIDIR o valor de um numero decimal.
    // Desloca para a esquerda: <<     
    // Desloca para a direita: >>

    |Sintaxe|->  <Numero> << <Casas à deslocar>

    |Exemplo|->  Console.WriteLine(10 << 1); ->// 10=(00001010)  Deslocando uma casa=(00010100) Que corresponde a: 20
                 Console.WriteLine(20 >> 2); ->// 20=(00010100)  Deslocando duas casas=(00000101) Que corresponde a: 5

    //Perceba que deslocando a Esquerda (<<) ele dobra o valor a cada casa.
    //E deslocando a Direita (>>) ele divide o valor por 2 a cada casa.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 23 +
//TODO FERRAMENTAS DE STRINGS.
    //Indices são formas de chamar uma Propriedade pelo numero oculto dele.
    //Tenha em mente que indices sempre iniciam do 0.

//* CHAMANDO UM INDICE ------------------------------------------------------------------------------------------------------------*/
    |Sintaxe|->  ("{<Indice>, <Espaçamento>}" <Propriedade>)

    |Exemplo|
    String Letra1, Letra2, Letra3;   
    Letra1 = O;   Letra2 = L;   Letra3 = S;

    Console.WriteLine("Indices-> {0} {1} {2}"  Letra3, Letra1, Letra2) //Trará o texto:  "Indices-> S O L".

//* ESPAÇAMENTO -------------------------------------------------------------------------------------------------------------------*/
    //Alem de chamar pelo indice, podemos definir o numero de espaçoes entre as palavras utilizando de indices.
    //A contagem de espaços começa apartir do final do texto e vem de traz pra frente.

    |Exemplo|
    string Nome = "Barbara"
    Console.Writeline("Inicio:{0,10}" Letra1);  // Trará o texto: "Inicio:   Barbara"
                                                // Conte quantos caracteres cabem desde o fim de "Barbara" até ":"

//* ACESSAR CARACTERE -------------------------------------------------------------------------------------------------------------*/
    //Um meio de se acessar o caractere de uma string em sua determinada posição.

    |Exemplo|
    string Tijolo = "Paralelepipedo";
    Console.WriteLine(Tijolo[2]);    // Retornará "r".

//* OUTROS ------------------------------------------------------------------------------------------------------------------------*/
    texto.ToUpper(); //Converte todas as letras em Maiusculas.
    texto.ToLower(); //Converte todas as letras em Minusculas.




+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 24 +
//! DESCOBRIR COMPRIMENTO.
    //Serve para retornar a quantidade de valores em uma Propriedade, Array, Matriz, etc...
    |Sintaxe|->  <Propriedade>.length


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 25 +
//! CARACTERES ESPECIAIS.
    \n  -> //[Enter]  Quebra de linha, depois de \n ele pulará para a proxima linha.
    \t  -> //[Tab]    Tabulação, depois de \t ele inserirá uma Tab.

    \\  -> //
    \O  -> //NULL
    \a  -> //
    \b  -> //Backspace
    \f  -> //
    \r  -> //
    \U  -> //
    \u  -> //
    \v  -> //
    \x  -> //

    @   -> //
    $   -> //


    :C  -> //[$]      Cifrão, adiciona o simbolo de cifrão bem à frente.
    :p  -> //[%]      Porcentagem, adiciona o simbolo de porcentagem bem à frente.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--

CAPTULO 4 - METODOS E PROPRIEDADES DO SISTEMA

PARTE I - CONSOLE e GERAL
   20- ESCREVER E LER A TELA
   21- INVERTER SINAL DE NUMERO
   XX-
   XX-
   XX-

PARTE II - FORMULARIO
   XX- CAIXA DE DIALOGO
   XX-
   XX-
   XX-
   XX-

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 26 +
//* ESCREVER E LER A TELA.
/*ESCREVER ----------------------------------------------------------------------------------------------------------------------*/
    Console.Write(); ----->// Escreve e continua na mesma linha.
    Console.Writeline(); ->// Escreve e pula para a prxima linha.

    Console.Writeline(<"Texto" ou Propriedade>);

/*LER ---------------------------------------------------------------------------------------------------------------------------*/
    Console.Read(); ----->// Lê a tela e continua na mesma linha
    Console.Readline(); ->// Espera que se digite algo, muito utilizado para que o programa não feche.
    
    //Duas formas de se ler o que foi digitado e entregar para a Propriedade "Nome".
    String Nome = Console.Readline(); 
    Nome = Console.Readline();


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 27 +
//* OPERAÇÕES MATEMATICAS.

    |Sintaxe|->  Math.<Metodo()>;

    Math.Abs(-12); ---->// Converte numeros negativos em positivos.
    Math.Round(12.6); ->// Aredonda  valor para o numero mais proximo.
    Math.Max(10, 9); -->// Retorna qual dois valores é o maior. [10]
    Math.Min(50, 51); ->// Retorna qual dois valores é o Menor. [50]
    Math.Sqrt(64); ---->// Realiza uma operação de Raiz Quadrada.
    Math.Pi ----------->// Retorna o valor de Pi.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 28 +
//* VERIFICAR PRIMEIRA LETRA.
    aluno.StartsWith("H") ->// Verifica se a Propriedade aluno começa com a letra "H".


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 29 +
//* OBTER DATAS e HORAS.
    Datetime.Now.Hour; ->// Retorna a hora atual.
    Datetime.UtcNow.Day; ->// Retorna a hora pelo fuso-horario atual;

    Datetime agora = Datetime.Now;
    agora.ToLongDateString(); ->// Retorna: "quarta-feira, 9 de junho de 2021".
    agora.ToLongHourString(); ->// Retorna: "11:07:48".


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 29 +
//* DIVIDIR TEXTO.
    //Divide um texto em todo pedaço que houver o parametro passado. Cada pedaço divido deve ser jogado em um Array.
    
    string Texto = "Haverá um corte em cada espaço"
    string[] Pedacos = Texto.Split(' ');

    Pedacos[0] = "Haverá";  Pedacos[2] = "corte";  Pedacos[4] = "cada"  ;  
    Pedacos[1] = "um"    ;  Pedacos[3] = "em"   ;  Pedacos[5] = "espaço";


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* ABRIR UM PROCESSO.
    //Faz com que o pograma abra um programa do computador ou um link URL

    System.Diagnostics.Process.Start("https://www.youtube.com/channel/UCqHIWCQSq0yeE-1nbcRnt2w"); ->// Abre o link
    System.Diagnostics.Process.Start("calc.exe"); ->// Abre a calculadora.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* FOCAR EM UM OBJETO
    //Faz com que o objeto selecionado vire o foco na tela.
    TXB_nome.Focus()


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* LIMPAR OBJETO.
    //Exclui todos os dados de um objeto selecionado.
    TXB_nome.Clear()  ->//Caso haja algo escrito nesta textbox, ele limpará.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* VISUALIZAÇÃO.
    Form1.Show();       ->// Apenas abre o Formulario.
    Form1.ShowDialog(); ->// Abre o Formulario e impede que se clique em outros Formularios.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* FECHAR FORMULARIO.
    Form1.Close();

   
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* FAZER PROGRAMA ESPEREAR. 
    //Instancie o modulo:
        using System.Threading;
    //Use o metodo para esperar.
        Thread.Sleap(200); ->// Tempo em Milisegundos (1 Segundos == 1000 Milisegundos)

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//* CONTAR OCORRENCIA DE UMA LETRA.
    //Procura por uma ou mais determinadas letras em um texto e retorna quantas correspondem.

using System.Text.RegularExpressions;

    string texto = "Paralelepipedo";
    string filtro = "[aeiou]";
    string res = Regex.Matches(texto,filtro).count;  //  "res" =>  7

   
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ xx +
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--

/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
/* RASCUNHO */


        //- Primeiro baixe o modulo d nuget - itextsharp
        //- Importe os modulos itextsharp e .IO

        //- Código
        private void btn_Imprimir_Click(object sender, EventArgs e)
        {
            string nomeArquivo = Globais.caminho + @"\turmas.pdf";
            FileStream arquivoPDF = new FileStream(nomeArquivo, FileMode.Create);
            Document doc = new Document(PageSize.A4);
            PdfWriter escritorPDF = PdfWriter.GetInstance(doc, arquivoPDF);


            //----------------------------------------------------------------------- PARAGRAFO
            
            string dados = "";
            Paragraph paragrafo = new Paragraph(dados, new iTextSharp.text.Font(iTextSharp.text.Font.NORMAL, 20, (int)System.Drawing.FontStyle.Bold));

            paragrafo.Alignment = Element.ALIGN_CENTER;
            paragrafo.Add("CFB Cursos\n");

            paragrafo.Font = new iTextSharp.text.Font(iTextSharp.text.Font.NORMAL, 14, (int)System.Drawing.FontStyle.Italic);
            paragrafo.Alignment = Element.ALIGN_CENTER;
            paragrafo.Add("Curso de C#\n");

            string texto = "youtube.com/cfbcursos";
            paragrafo.Font = new iTextSharp.text.Font(iTextSharp.text.Font.NORMAL, 12, (int)System.Drawing.FontStyle.Italic);
            paragrafo.Alignment = Element.ALIGN_CENTER;
            paragrafo.Add(texto + "\n");

            //----------------------------------------------------------------------- LOGO

            iTextSharp.text.Image logo = iTextSharp.text.Image.GetInstance(Globais.caminho + @"\SQL Logo.png");
            logo.ScaleToFit(140f, 120f);
            logo.Alignment = Element.ALIGN_LEFT;
            //logo.SetAbsolutePosition(100f, 700f);    // X e Y (Contagem de y começa de baixo para cima em relação a pagina)

            //----------------------------------------------------------------------- TABELA

            PdfPTable tabela = new PdfPTable(3); // 3 Colunas.
            tabela.DefaultCell.FixedHeight = 20;

            PdfPCell celula1 = new PdfPCell(new Phrase("Tabela de Preços"));
            celula1.Colspan = 3; // Linha 1 mesclada
            celula1.Rotation = 90;

            tabela.AddCell(celula1);

            tabela.AddCell("Código");
            tabela.AddCell("Produto");
            tabela.AddCell("Preço");

            tabela.AddCell("01");
            tabela.AddCell("Mouse");
            tabela.AddCell("25,00");

            tabela.AddCell("02");
            tabela.AddCell("Teclado");
            tabela.AddCell("65,50");


            PdfPCell celula2 = new PdfPCell();
            celula2.Colspan = 3;                                 // Linha 1 mesclada
            celula2.AddElement(logo);
            //celula2.FixedHeight = 35;                            //- Define a largura vertical da celula
            celula2.HorizontalAlignment = Element.ALIGN_RIGHT;  
            celula2.VerticalAlignment = Element.ALIGN_MIDDLE;

            tabela.AddCell(celula2);


            doc.Open();
            doc.Add(paragrafo);
            doc.Add(logo);
            doc.Add(tabela);
            doc.Close();

        }

