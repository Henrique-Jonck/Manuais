''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? INTRODUÇÃO
Manual de utilização aos componentes Do Visual Studio 2019 - C# dotnet Framework Windows Form.
Para melhor compreenção dos elementos consulte o manual de C# Program.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? COMPONENTES
    //Dentro do programa temos os seguintes comoponentes basicos de desenvolvimento.

Design      ->// Onde Criamos a inteface grafica do programa, a parte a ser visualizada pelo usúario, tambem nomeada GUI.
Ferramentas ->// São os componentes que constituem a GUI, estão situados na Caixa de Ferramentas.
Código      ->// Parte oculta do programa, onde são criadas as linhas de comando para que o programa funcione.
Resources   ->// Local onde são armazenados Tabelas, Imagens, Videos, Arquivos e etc... São acessados por todo o programa.

Propriedades ->// São as configurações dos componentes e ferramentas do sistema.
Eventos      ->// Quando acionados realizam um trecho de código, existe um evento para cada posivel ação do componente.

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//? SUMARIO GERAL

CAPTULO 1 - ESTRUTURA DO COMPILADOR
00 - RESOURCES
00 - INSTALADOR

CAPTULO 2 - CAIXA DE FERRAMENTAS
00 - RENOMEAÇÃO
00 - PRINCIPAIS FERRAMENTAS


CAPTULO 3 - CONEXÃO COM BANCO DE DADOS

CAPTULO 4 - FERRAMENTAS DE SAÍDA
00 - MANIPULAÇÃO DE ARQUIVOS
00 - IMPRESSÃO
00 - CRIÇÃO DE PDF


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
CAPTULO 1 - ESTRUTURA DO COMPILADOR
00 - RESOURCES
00 - INSTALADOR
00 - COMANDOS

=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+= 1 /
/* RESOURCES */
    //Local no programa onde são armazenados Caracteres, Imagens, Icones, Audios, Arquivos e etc...
    //São acessados por todo o programa, caso algo seja alterado todos aqueles que o utilizem seram modificados.
    
//! Acessar.
    |Sin|    Properties.Resources.<Nome Do Arquivo>;

    |Ex:|    LBL_Canal.Text = Properties.Resources.NomeCanal.ToString();
    |Ex:|    PIC_Logo       = Properties.Resources.Azul;

=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+= 2 /
/* INSTALADOR */


=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+= 2 /
/* COMANDOS */
    System.AppDomain.CurrentDomain.BaseDirectory.ToString() ->// Retorna o caminho do diretorio do programa atual.
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
CAPTULO 2 - CAIXA DE FERRAMENTAS
00 - RENOMEAÇÃO



=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+ 00 /
/* RENOMEAÇÃO */
    //Precisamos definir um nome fixo para cada ferramenta, Tabulação de Maiuscula e Minuscula não importam.


            'Principais'                                 'Menu'                            'Caixas de Dialogo'               
00 - FORMULARIO          -> F_nome       00 - CONTEXT MENU STRIP   -> CMS_nome     00 - COLOR DIALOG         -> CLR_nome         
00 - LABEL               -> LBL_nome     00 - MENU STRIP           -> MNU_nome     00 - FOLDER BROWSER DIALOG-> FBD_nome
00 - LINK LABEL          -> LKL_nome     00 - STATUS STRIP         -> STP_nome     00 - FONT DIALOG          -> FTD_nome
00 - BUTTON              -> BTN_nome     00 - TOOL STRIP           -> TSP_nome     00 - OPEN FILE DIALOG     -> OFD_nome
00 - RADIO BUTTON        -> RAD_nome     00 - TOOL STRIP CONTAINER -> TSC_nome     00 - SAVE FILE DIALOG     -> SFD_nome
00 - TEXT BOX            -> TXB_nome                                                                                   
00 - MASKED TEXT BOX     -> MTB_nome                   'Contêineres'                            'Componentes'            
00 - RICH TEXT BOX       -> RTB_nome     00 - FLOW LAYOUT PANEL    -> FLP_nome     00 - BACKGROUND WORKER   -> BGW_nome          
00 - NUMERIC UP DOWN     -> NUD_nome     00 - GROUP BOX            -> GPB_nome     00 - DIRECTORY ENTRY     -> DTE_nome
00 - CHECK BOX           -> CKB_nome     00 - PANEL                -> PNL_nome     00 - DIRECTORY SEARCHER  -> DTS_nome
00 - CHECKED LIST BOX    -> CKL_nome     00 - SPLIT CONTAINER      -> SPC_nome     00 - DOMAIN UP DOWN      -> DUD_nome
00 - COMBO BOX           -> CBB_nome     00 - SPLITTER             -> SPT_nome     00 - ERROR PROVIDER      -> ERR_nome
00 - LIST BOX            -> LTB_nome     00 - TAB CONTROL          -> TAB_nome     00 - EVENT LOG           -> EVT_nome
00 - LIST VIEW           -> LTV_nome     00 - TABLE LAYOUT PANEL   -> TLP_nome     00 - FILE SYSTEM WATCHER -> FSW_nome 
00 - TREE VIEW           -> TRV_nome     00 - H SCROLL BAR         -> SCB_nome     00 - HELP PROVIDER       -> HEP_nome
00 - DATE TIME PIKER     -> DTP_nome     00 - V SCROLL BAR         -> SCB_nome     00 - IMAGE LIST          -> IML_nome  
00 - MONTH CALENDAR      -> MOC_nome                                               00 - MESSAGE QUEUE       -> MSQ_nome                                          
00 - PICTURE BOX         -> PIC_nome                    'Impressão'                00 - PERFORMANCE COUNTER -> PFC_nome
00 - PROGRESS BAR        -> PGS_nome     00 - PAGE SETUP DIALOG    -> PSD_nome     00 - PROCESS             -> PCS_nome
00 - NOTIFY ICON         -> NOT_nome     00 - PRINT DIALOG         -> PTG_nome     00 - PROPERTY GRID       -> PPG_nome 
00 - TOOL TIP            -> TTP_nome     00 - PRINT DOCUMENT       -> PTD_nome     00 - SERIAL PORT         -> SRP_nome
00 - WEB BROWSER         -> WEB_nome     00 - PRINT PREVIEW CONTROL-> PPC_nome     00 - SERVICE CONTROLLER  -> SVC_nome              
00 - PONTEIRO            -> PTR_nome     00 - PRINT PREVIEW DIALOG -> PPD_nome     00 - TIMER               -> TIM_nome                     
                                                                                   00 - TRACK BAR           -> TKB_nome                                                    
             'Internos'                                 'Dados'                                                                       
00 - TOOL STRIP MENU ITEM -> TSMI_nome    00 - BIDING NAVIGATOR     -> BDN_nome                                                       
00 - STATUS LABEL         -> SLBL_nome    00 - BINDING SOURCE       -> BDS_nome                                                       
00 - COLUMN HEADER        -> CLMN_nome    00 - DATA GRID VIEW       -> DGV_nome           drg                                           
00 - LIST VIEW ITEM       -> LTVI_nome    00 - DATA SET             -> DST_nome               
00 - LIST VIEW SUB ITEM   -> LTVS_nome    00 - CHART                -> CHT_nome           
00 - CONTENT PANEL        -> CPNL_nome
00 - TOP TOOL STRIP PANEL -> TTSP_nome
00 - TAB PAGE             -> TABP_nome



=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+ 00 /
/* PRINCIPAIS FERRAMENTAS */

P.1  - FORMULARIO
P.2  - TEXTOS
P.3  - BOTÕES
P.4  - CAIXAS DE TEXTO
P.5  - CAIXA NUMERICA
P.6  - CAIXAS DE SELECÃO
P.7  - LISTAS
P.8  - DATAS
P.9  - CAIXA DE IMAGEM
P.10 - BARRA DE CARREGAMENTO
P.11 - NOTIFICAÇÕES
P.12 - ORGANIZAÇÃO DE DESIGN




================================================================================================================================= P.0 ===
===-------------------------------------------------------------------------------------------------------------- === /*FORMULARIOS*/ ===
//* FORM - F_nome
    //Parte principal do programa, é a pagina onde adicionamos os itens de interação com o usuário.

//! ABRIR FORMULARIO
    // Requer que o formulario externo seja instanciado antes.
    F_nome FORM = new F_nome();
    FORM.Show();

//! FECHAR FORMULARIO
    Close();        ->// Fechar o formulario atual.
    F_nome.Close(); ->// Fecha o formualrio indicado.

//! OUTROS.
        Application.OpenForms[F_nome]; ->// Procura pelo formulario especificado. Retorna o nome do Form ou Null.
        Application.OpenForms.Count;   ->// Retorna o numero de Formularios abertos na execução do Programa.

//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===------------------------------------------------------------------------------------------------------------------- === /*TEXTOS*/ ===
//* LABEL     - LBL_nome
//* LINKLABEL - LKL_nome
    //Ambos são ferramentas de texto que utilizamos para complementar nosso programa.
    //LinkLabel tem a diferença de se poder atribuir um Link de SITE ou Programa a ele.


//! ATRIBUIR LINK.
    System.Diagnostics.Process.Start("https://www.youtube.com/"); ->// Abre o link.
    System.Diagnostics.Process.Start("calc.exe"); ->// Abre a calculadora. Podemos expecificar o caminho do programa tambem.

//! ATRIBUIR MULTIPLOS LINKS.
    LKL_nome.Links.Add(<Posição>, <Tamanho>, "<Link>");

    |Ex:|   LKL_nome.Links.Add(0, 6, "https://www.google.com.br/");   // Texto:  Google - Facebook - Youtube
    |Ex:|   LKL_nome.Links.Add(9, 8, "https://www.facebook.com/");               |||||||||||||||||||||||||||
    |Ex:|   LKL_nome.Links.Add(20, 7, "https://www.youtube.com/");    // Conte o numero de palitos e identifique a Posição e o Tamanho;

    // Obter qual dos multiplos links foi clicado.
    System.Diagnostics.Process.Start(e.Link.LinkData.ToString());

//! DESLIGAR LINK
    LKL_nome.Links[0].Enabled = false;

//! MARCAR LINK
    lkl_calculadora.LinkVisited = true;    ->// Link unico.
    lkl_multiplos.Links[0].Visited = true; ->// Link multiplo.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===------------------------------------------------------------------------------------------------------------------- === /*BOTÕES*/ ===
//* BUTTON      - BTN_nome.
//* RADIOBUTTON - RAD_nome.
    //Botões são formas de se definir um comando assim que apertemos eles.
    //RAD é um botão que selecionamos, podemos selecionar apenas um por grupo. Por isso separamos eles em GroupBoxes.

//! OUTROS.
    RAD_nome.checked; ->// Retorna true ou false caso o RadioButton esteja marcado.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===--------------------------------------------------------------------------------------------------------- === /*CAIXAS DE TEXTOS*/ ===
//* TEXTBOX        - TXB_nome
//* MASKED TEXTBOX - MTB_nome
//* RICH TEXTBOX   - RTB_nome
    //São caixas onde o usuário pode escrever algo que será interpretado pelo programa.
    //Masked TB tem a função de se definir um Layout padrão à caixa. Ex: (__)____-____ ou (__/__/__). 


//! VIZUALIZAR SENHA OU NÃO.
    TXB_nome.UseSystemPasswordChar = PasswordPropertyTextAttribute.Yes.Password; ->// Caractere de senha será utilizado.
    TXB_nome.UseSystemPasswordChar = PasswordPropertyTextAttribute.No.Password;  ->// Caractere de senha não será utilizado.


//! CRIANDO O MASKED TEXTBOX.
    //Na hora de se criar o MTB certos simbolos definiram a funcionaridade daquele espaço.

        0 ->// Digito Obrogatorio. Numeros entre [0 e 9].
        9 ->// Digito Opcional. Numeros entre [0 e 9] e Espaços.
        L ->// Letra Obrigatoria. Letras entre [a-z] e [A-Z].
        ? ->// Letra Opcional. Letras entre [a-z] e [A-Z] e Espaços.
        \ ->// Caractere de escape. O digito a seguir será apena escrito na formatação e não interpretado.

    //- Veja mais em: https://docs.microsoft.com/pt-br/dotnet/api/system.windows.forms.maskedtextbox.mask?view=net-5.0 

//! MOSTRAR CONTEUDO DO MTB.
    //Quando buscarmos o conteudo do MTB podemos definir exatamente o que será retornado.

    MTB_nome.TextMaskFormat = MaskFormat.IncludeLiterals;  ->// Retorna numeros, letras e simbolos.
    MTB_nome.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals; ->// Retorna apenas numeros e letras.

    MTB_nome.TextMaskFormat = MaskFormat.IncludePrompt;
    MTB_nome.TextMaskFormat = MaskFormat.IncludePromptAndLiterals;


//! ALTERAR FONTE DO TEXTO.
    RTB_nome.SelectionFont = new Font(Nome_Fonte, Tamanho_Fonte, FontStyle.Regular);

        Nome_Fonte    -> RTB_nome.Font.Name;  ->// Retorna o nome da fonte do texto selecionado
        Tamanho_Fonte -> RTB_nome.Font.Size;  ->// Retorna o tamanho da fonte do texto selecionado
        Regular, Bold, Italic, Underlined     ->// Define a fonte para Padrão, Negrito, Italico e Sublinhado respectivamente. 


//! OUTROS.
    TXB_nome.MaxLength = 8;                           ->// Define o tamanho maximo do texto.
    TXB_nome.PasswordChar = '*';                      ->// Define o caractere a ser visualizado.
    TXB_nome.CharacterCasing = CharacterCasing.Lower; ->// Converte todas as letras em minusculas.
    TXB_nome.TextAlign = HorizontalAlignment.Center;  ->// Alinha o texto no centro da Textbox.
    TXB_nome.SelectionLength;                         ->// Retorna o numero de caracteres selecionados


//TODO: CONFIGURAÇÕES.
    PasswordChar ->>// Desfinimos qual caractere aparecerá quando o usuário digitar algo.
    Mask         ->>// Apenas MTB | Definimos a mascara utilizada.

//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===----------------------------------------------------------------------------------------------------------- === /*CAIXA NUMERICA*/ ===
//* NUMERICUPDOWN - NUD_nome 
    //É uma caixa de texto numerica com botões laterais para aumentar ou decrementar valor a ele.

//! OUTROS.
    NUD_nome.Minimum; ->// Define ou Recebe o valor minimo do NumericUpDown.
    NUD_nome.Maximum; ->// Define ou Recebe o valor maximo do NumericUpDown.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===-------------------------------------------------------------------------------------------------------- === /*CAIXAS DE SELECÃO*/ ===
//* CHECKBOX       - CKB_nome.
//* CHECKEDLISTBOX - CKL_nome.
    //São caixas de seleção com um texto, CKL tem a diferença de ser uma tabela com uma coleção de CheckBoxes.

//! OUTROS.
    CKB_nome.checked; ->// Retorna true caso o Checkbox esteja marcado e false caso não esteja.

    CKL_nome.Items;        ->// Trabalha com todos os items da Lista de Checagem.
    CKL_nome.CheckedItems; ->// Trabalha apenas com os items marcados na Lista de Checagem.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.
    CheckedChanged ->// Acionado sempre que o Checkbox muda de estado (Selecionado, Não selecionado).



================================================================================================================================= P.0 ===
===------------------------------------------------------------------------------------------------------------------- === /*LISTAS*/ ===
//* COMBOBOX - CBB_nome -----------------------------------------------------------------------------------------------------------------
    //Tabela com itens que se desdobram em outros itens em forma de cascata.

//! OUTROS.
    CBB_nome.SelectedValue         ->// Retorna ou define o item selecionado na ComboBox

    CBB_nome.FindString("Item");   ->// Procura pelo valor especificado, retorna: [-1 Não encontrado, 0 Encontrado]
    CBB_nome.SelectedIndex = null; ->// Define o item selecionado da CBB como vazio.
    CBB_nome.DroppedDown = true;   ->// Abre a caixa com os itens contidos neste.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.
    SelectedIndexChanged ->// Acionado assim que um item da Combobox é selecionado. 



//* LISTBOX - LTB_nome ------------------------------------------------------------------------------------------------------------------
    //Lista de elementos contidos em uma caixa que podem ser acessados pelo usúario.
    //Em ListBox utilizamos de coleções List para modificar os valores.

//! MODIFICAR ITENS
        //Criamos Listas para modificar a ListBox
        List<string> Carros = new List<string>();
        Carros.Add("Fox");

    LBT_nome.DataSource = Carros; ->// Define um valor ao Listbox.
    LBT_nome.DataSource = null;   ->// Define que a Listbox esta vazia.

    LBT_nome.SelectedIndex;       ->// Retorna o indice do item selecionado na Listbox pelo usúario.
        |Ex:|   TXB_nome.Text = carros[ LTB_nome.SelectedIndex ];

//! OUTROS.
//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



//* LISTVIEW - LTV_nome -----------------------------------------------------------------------------------------------------------------
    //Lista de elementos contidos em uma tabela que podem ser acessados pelo usúario.
    //Dentro do LTV a tabela é dividida em Linhas e Colunas, sendo elas:

    List view Item    -> LVI_nome  //Linhas
    List View SubItem -> LVS_nome  //Colunas

//! CRIAR E ADICIONAR A TABELA.
        //Criamos um Array com um indice para cada Coluna da LTV.
        string[] Loja = new string[4];
        Loja[0] = TXB_Id.Text;          
        Loja[1] = TXB_Produto.Text;
        Loja[2] = TXB_Qtde.Text;
        Loja[3] = TXB_Preco.Text;

        //Depois criamos uma instancia com o tipo ListViewItem e referenciamos o Array.
        ListViewItem Lista = new ListViewItem(Loja);  
        
        //Então adicionamos o item a propriedade de atribuição ao LTV.
        LTV_nome.Items.Add(Lista);                    


//! REMOVER ITEM
    LTV_nome.Items.RemoveAt(LTV_Produtos.SelectedIndices[0]); 
        // "0" Representa o indice do item selecionado, alteramos quando ha Multi Seleção.
                                                              

//! OBTER ITEM
    LTV_nome.SelectedItem["Indice da Linha"].SubItem["Indice da Coluna"] ->// Obtem o item selecionado na posição X.Y

    TXB_Id.Text      = LTV_nome.SelectedItems[0].SubItems[0].Text;
    TXB_Produto.Text = LTV_nome.SelectedItems[0].SubItems[1].Text;
    TXB_Qtde.Text    = LTV_nome.SelectedItems[0].SubItems[2].Text;
    TXB_Preco.Text   = LTV_nome.SelectedItems[0].SubItems[3].Text;

//! OUTROS.
//TODO: CONFIGURAÇÕES.
    FullRowSelect ->// Faz com quando cliquemos em um item, toda a linha seja selecionada.
    GridLines     ->// Torna todas as linhas da tabela visiveis.
    MultiSelect   ->// Permite que mais de um item seja selecionado ao mesmo tempo.

//TODO: EVENTOS.



//* TREEVIEW - TRV_nome -----------------------------------------------------------------------------------------------------------------



================================================================================================================================= P.0 ===
===-------------------------------------------------------------------------------------------------------------------- === /*DATAS*/ ===
//* DATETIMEPIKER - DTP_nome ------------------------------------------------------------------------------------------------------------
    //Caixa de texto com informaçoes sobre Datas e Horas, Podendo serem alteradas/inseridas pelo usúario. 
    //Importante saber que para datas utilizamos do tipo Datetime.

//! OUTROS.
    DTP_nome.value;     ->// Definimos ou Capturamos o valor do Datetimepiker.

    DTP_nome.Value.Day;          ->// Retrona o dia do DateTimePiker.
    DTP_nome.Value.DateTime.Now; ->// Retorna a data hora atual do DateTimePiker.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



//* MONTHCALENDAR - MOC_nome ------------------------------------------------------------------------------------------------------------
    //Calendario de mes que o usuario pode selecionar uma data.

//! OBTER DATA
    TXB_nome.Text = MOC_nome.SelectionStart.ToLongDateString(); ->// Obtem a data inicio selecionada no calendario.
    TXB_nome.Text = MOC_nome.SelectionEnd.ToLongDateString();   ->// Obtem a data fim selecionada no calendario.
    TXB_nome.Text = MOC_nome.TodayDate.ToLongDateString();      ->// Obtem a data atual contida no calendario.

//! OUTROS.
//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------------- === /*CAIXA DE IMAGEM*/ ===
//* PICTUREBOX - PIC_nome.
    //Caixa onde pode ser inserido alguma imagem.

//! ATRIBUIR IMAGEM.
    PIC_nome.Image = Properties.Resources.Azul; ->// Definimos uma imagem apartir do Resurce (Pg: xx).
    PIC_nome.ImageLocation = @"C:\Arquiv..."    ->// Definimos/Pegamos o caminho de uma imagem.


//! OUTROS.
//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------- === /*BARRA DE CARREGAMENTO*/ ===
//* PROGRESSBAR - PGS_nome.
    //Uma barra de carregamento que realiza uma animação de preenchimento de seu valor Minimo ao valor Maximo.
    //Uma dica util é colocar seu carregamento dentro de um Loop realizando cada ação que carregará a barra.

//! OUTROS.
    PGS_nome.Maximum ->// Define ou Pega o valor maximo da ProgressBar.
    PGS_nome.Minimum ->// Define ou Pega o valor minimo da ProgressBar.
    PGS_nome.Value   ->// Define ou Pega o valor atual contido na ProgressBar.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===------------------------------------------------------------------------------------------------------------- === /*NOTIFICAÇÕES*/ ===
//* NOTIFYICON       - NOT_nome.
//* CONTEXTMENUSTRIP - CMS_nome.
    //NotifyIcon é uma Ferramenta que fornece um icone na parte inferir direita da barra de ferramentas.
    //ContextMenuStrip é o menu que aparece ao clicar com o botão direito sobre este icone.

//! OUTROS.
        //Os botões do menu do NotifyItem são criados dentro do CMS e são Padronizados por:
        TOOL STRIP MENU ITEM -> TSMI_nome

    e.ClickedItem.Name.ToString(); ->// Retorna o item TSMI clicado pelo usúario.


//TODO: CONFIGURAÇÕES.
//TODO: EVENTOS.



================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------- === /*ORGANIZAÇÃO DO DESIGN*/ ===
//* GROUPBOX - GPB_nome -----------------------------------------------------------------------------------------------------------------
    //É uma caixa onde são agrupados e organizados componentes.

//! DESCOBRIR COMPONENTES
        //É um meio de se retornar cada componente contido naquele GroupBox.
        GPB_nome.Controls.OfType<Componente>();

    |Ex:|   GPB_Grupo1.Controls.OfType<RadioButton>().SingleOrDefault(RadioButton => RadioButton.Checked).Text;
                                                        //Retorna o texto dos RadioButtons marcados que estão contidos no GPB.

-**-// CONFIGURAÇÕES.
-**-// EVENTOS.



//*--------------------------------------------------------------------------------------------------------------------------------------
//* SPLITCONTAINER - SPC_nome
//* SPLITTER       - SPT_nome



//* TABCONTROL - TAB_nome ---------------------------------------------------------------------------------------------------------------

TAB_nome.SelectedTab = TABP_nome   ->>// Define esta como a pagina selecionada no momento

================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------------------- === /* TABELAS */ ===
//* DATA GRID VIEW - DGV_nome

//! Outros.
    DGV_nome.



================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------- === /*---------------------*/ ===
//* PANEL - PNL_nome -----------------------------------------------------------------------------------------------------------------

            f_contratoNovo myForm = new f_contratoNovo();
            myForm.TopLevel = false;
            myForm.AutoScroll = true;
            pnl_formulario.Controls.Add(myForm);
            myForm.Show();


================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------- === /*---------------------*/ ===
//* -------- - ---_nome -----------------------------------------------------------------------------------------------------------------



================================================================================================================================= P.0 ===
===---------------------------------------------------------------------------------------------------- === /*---------------------*/ ===
//* -------- - ---_nome -----------------------------------------------------------------------------------------------------------------




''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
CAPTULO 3 - CONEXÃO COM BANCO DE DADOS SQLite


=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+ 00 /
//! METODOS, PROPRIEDADES E TIPOS DO SQLite
    //Primeiro baixe o pacote Nuget do System.Data.SQLite
    // Importe as Bibliotecas:
        using System.Data;
        using System.Data.SQLite;


//* TIPOS / INSTANCIAS ---------------------------------------------------------------------------------------------------------*/
//* PROPRIEDADES ---------------------------------------------------------------------------------------------------------------*/
//* METODOS --------------------------------------------------------------------------------------------------------------------*/

=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+ 00 /
//! CONECTAR AO BANCO

//* ABRIR CONEXÃO --------------------------------------------------------------------------------------------------------------*/

// Crie um objeto SQLiteConnection.
    private static SQLiteConnection conexao;

// Crie um Metodo do tipo SQLiteConnection.
private static SQLiteConnection ConectarBanco()
    {
    // Crie um objeto com o caminho da pasta ao Banco de Dados.
        Conexao = new SQLiteConnection( @"Data Source = D:\Visual Studio\Banco De Dados.db"); 
    // Abra a conexão.
        Conexao.Open();
    // Retorne a conexão. 
        return Conexao;
    }

//* ENVIAR COMANDO -------------------------------------------------------------------------------------------------------------*/

public static DataTable ComandoSelect()
    {
    /* CRIE AS SEGUINTES VARIAVEIS: */
        SQLiteDataAdapter DA = null;     //- Objeto do tipo SQLiteDataAdapter.
        DataTable DT = new DataTable();  //- Objeto do tipo DataTable.
        var CON = ConectarBanco();       //- Variavel que abrirá a conexão por meio do Metodo.
        var CMD = CON.CreateCommand();   //- Variavel que conterá a linha de comando SQL.


    /* INSIRA OS COMANDOS NO SQLite. */
    // Utilize da variavel CMD para escrever o comando que será utilizado no Banco.
        CMD.CommandText = "SELECT * FROM USUARIO";
    // Atribua a "DA" a resposta do Banco de Dados ao comando "CMD"
        DA = new SQLiteDataAdapter(CMD.CommandText, CON);


    /* DECIDA QUAL FUNCIONALIDADE O COMANDO TERÁ */
        DA.Fill(DT);           //- Preenche o objeto "DT" com o resultado do Banco.
        CMD.ExecuteNonQuery(); //- Apenas executa o comando no banco. Se utilizado, não requisitará do objeto "DT".

    // Feche a Conexão com o banco
        CON.Close();

    // Retorne o conteudo em "DT"
        return DT;
    }




































''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
//-*********************************************************************************************************************************************--**************************--
CAPTULO 4 - 


























































































