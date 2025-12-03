% LaTeX definitions for SBC 2001 style
%
% Created by Jomi Hubner & Rafael Bordini, june 2001
% updated march 2005

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ppgpca-template}[2025/12/03
------------------------------------------------------------
Classe para anteprojetos do PPGPCA/UFFS
Baseado no estilo SBC (Sociedade Brasileira de Computação)
Criado originalmente por Jomi Hubner & Rafael Bordini (junho 2001)
Atualizado em março de 2005
Convertido de pacote para classe em dezembro de 2025
Para uso em anteprojetos de mestrado do Programa de Pós-Graduação em Computação Aplicada da Universidade Federal da Fronteira Sul
------------------------------------------------------------]

% Carregar a classe base article com opção 12pt
\LoadClass[12pt]{article}

% margem sup 3.5 cm: h? 1,5 cm para header, + 2 cm para top
% margem inf 2.5 cm: h? 1,5 cm para foot, + 1 cm para bottom
% margem esq/dir 3 cm
\RequirePackage[a4paper,top=3.5cm,left=3cm,right=3cm,bottom=2.5cm]{geometry}
\usepackage{graphicx,url}
\usepackage[utf8]{inputenc}
\usepackage{booktabs}
% Para inserção de figuras.
\usepackage{graphicx}
% Utilize a opção 'pdftex' se você estiver usando o pdflatex (que
% permite figuras em formatos como .jpg ou .png)
%\usepackage[pdftex]{graphicx}

% Para tabelas com elementos ocupando mais de uma linha
\usepackage{multirow}
% Para frações na mesma linha (ex. ⅓).
\usepackage{nicefrac}
% Para inserir figuras lado a lado.
 \usepackage{subfigure}
% Para formatar algoritmos.
% A opção [algo2e] é necessária para evitar conflitos
% com as definições da classe.
% https://linorg.usp.br/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf
\usepackage{algorithmic}
\usepackage[portuguese,algo2e,boxruled]{algorithm2e}
% Hyperlink em capitulos, seções, citações
\usepackage[hidelinks]{hyperref}	
% Bibliografia e citações padrão ABNT
%https://mirrors.ibiblio.org/CTAN/macros/latex/contrib/abntex2/doc/abntex2cite-alf.pdf
% Comandos: \citeonline{ref} \citeauthor{ref} \citeyear{ref}
%\usepackage[num]{abntex2cite}	% numérica
\usepackage[alf]{abntex2cite}	% alfabetica
% Referência cruzada que já coloca o tipo (Tabela, Figura, etc)
% a opção "brazilian" é para colocar em portugues (retirar a opção 
% quando escrever o texto em ingles/english
\usepackage[brazilian]{cleveref} 
% Pacote para revisão de texto
% alguns comandos de revisão:
% \alert{texto entre chaves}  \highlight{texto entre chaves}
% \remove{texto a ser removido} 
% \replace{texto original}{texto novo}
% \comment{texto original}{comentario adicionado}
% precisa ajustar a margem para evitar warning
\setlength {\marginparwidth }{2cm}
\usepackage{easyReview} 

\parindent 1.27cm
\parskip   6pt

\flushbottom

% captions
\RequirePackage[bf,sf,footnotesize,indent]{caption2}
\setlength{\captionmargin}{0.8cm}
\renewcommand{\captionfont}{\sffamily\footnotesize\bfseries}
\renewcommand{\captionlabeldelim}{.}

% font
\RequirePackage{times}

\renewcommand{\normalsize}{\@setfontsize\normalsize\@xiipt\@xivpt}
\newcommand{\XIIIPT}{\@setfontsize\xiiipt{13}{17}}
\newcommand{\XVIPT}{\@setfontsize\xvipt{16}{20}}

% new commands
\newcounter{instn}
\setcounter{instn}{1}
\newcommand{\instnum}{\arabic{instn}}
\newcommand{\inst}[1]{\ensuremath{^{#1}}}
\newcommand{\nextinstitute}{\\\mbox{}\\[-6pt] \addtocounter{instn}{1}\inst{\instnum}}
\newcommand{\email}[1]{\\\mbox{}\\[-6pt]\footnotesize\texttt{#1}}
\renewcommand{\and}{, }

% to avoid [...] in the bibliography
% \item[] instead of \item[\@biblabel{#1}\hfill]
\def\@lbibitem[#1]#2{\item[]\if@filesw
      {\let\protect\noexpand
       \immediate
       \write\@auxout{\string\bibcite{#2}{#1}}}\fi\ignorespaces}
\renewenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            %% changed!
               \itemindent -\leftmargin
               \itemsep 6pt
            %%%%%%%%%%%
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


% itens
\setlength\leftmargini   {1.27cm}
\setlength\leftmargin    {\leftmargini}
\setlength\leftmarginii  {\leftmargini}
\setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini}
\setlength  \labelsep    {.5em}
\setlength  \labelwidth  {\leftmargini}
\addtolength\labelwidth  {-\labelsep}
\def\@listI{\leftmargin\leftmargini
            \parsep 0\p@ \@plus1\p@ \@minus\p@
            \topsep 0\p@ \@plus2\p@ \@minus4\p@
            \itemsep0\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus2\p@ \@minus\p@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@}


% sections
\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-6\p@ \@plus -4\p@ \@minus -4\p@}%
                       {0\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\XIIIPT\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-6\p@ \@plus -4\p@ \@minus -4\p@}%
                       {0\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}

%\renewcommand{\thesection}{\arabic{section}.}
%\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
%\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}

\RequirePackage{titlesec}
\titlelabel{\thetitle.\hspace{1ex}}

% first page

\pagestyle{empty}

\newcommand{\authortag}[1]{$^{#1}$}

\def\address#1{\gdef\@address{#1}}

% Comando para criar título automaticamente
\newcommand{\titulo}[1]{%
  \title{#1}%
  \maketitle%
}

\def\@maketitle{\newpage
 %\null % isso dava um espaco extra antes do title
 \begin{center}
   %\vglue -6pt
%   \vspace*{12pt}
\vspace*{-.7cm}
  {\XVIPT\bf\@title\par}
   \vglue 6pt plus 3pt minus 3pt
  % Verifica se o autor foi definido e não está vazio
  \ifx\@author\@empty
  \else
    {\normalsize
     \textbf{\begin{tabular}[t]{c}\@author\end{tabular}}\par}
     \vglue 6pt plus 3pt minus 3pt
    % Verifica se o endereço foi definido
    \@ifundefined{@address}{}{%
      {\normalsize
       \begin{tabular}[t]{c}\inst{\instnum}\@address\end{tabular}\par}
       \vglue 6pt plus 3pt minus 3pt
    }%
  \fi
   \end{center}\par
}
\let\maketitleOLD\maketitle
\renewcommand{\maketitle}{\maketitleOLD\thispagestyle{empty}}

\renewenvironment{abstract}{%
      \list{}{\advance\topsep by6pt\relax%\small
      \leftmargin=0.8cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item[\hskip\labelsep
                                    \bfseries\itshape Abstract.]\itshape}%
      {\endlist}

\newenvironment{resumo}{%
      \list{}{\advance\topsep by6pt\relax%\small
      \leftmargin=0.8cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item[\hskip\labelsep
                                    \bfseries\itshape Resumo.]\itshape}%
      {\endlist}
