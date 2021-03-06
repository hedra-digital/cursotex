%!TEX project = rbef.tex

%%%%
% rbef.cls
% Copyright (c) Youssef Cherem, 2016
% Consider the following:
% Considere o seguinte:
% License: http://creativecommons.org/licenses/by-nc-sa/4.0/
% (CC BY-NC-SA 4.0) 
% Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use. 
%%%%%%No warranties are given.%%%%%%%

%
%NonCommercial — You may not use the material for commercial purposes.

%ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original. 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rbef}[2016/04/11]
\RequirePackage{penalidades}
\LoadClass{article}
%[a4paper,twoside,DIV=calc,headings=normal,numbers=endperiod,parskip=never]{article}

\RequirePackage{rbef-metadados}


\begin{comment}
\addtokomafont{subtitle}{\small}
\addtokomafont{author}{\fontsize{12}{14}}

\renewcaptionname{brazil}{\abstractname}{\vspace{-28pt}}
\renewcaptionname{english}{\abstractname}{\vspace{-28pt}} % renew existing name
\renewcaptionname{spanish}{\abstractname}{\vspace{-28pt}}



\RequirePackage{mathtools}%substitui e acrescenta funções a amsmath
% amssymb internally loads amsfonts!
\RequirePackage{amssymb} %para \mathbb{text}
\RequirePackage{mathrsfs} % para mathscr





%%%%fontes e compilação com pdflatex
\RequirePackage{ifxetex}


\ifxetex
\RequirePackage{fontspec} % fontes
%\defaultfontfeatures{Ligatures=TeX} %not needed anymore?
%\setmainfont[Numbers=OldStyle]{Minion Pro}
%\setsansfont{Myriad Pro}
%\setmonofont[Scale=MatchLowercase]{Myriad Pro}
%\RequirePackage{polyglossia} %polyglossia retirado: 22/12/2015
%\setmainlanguage{brazil}
%\setotherlanguages{english,french,spanish,german,italian}
\RequirePackage[english,french,spanish,es-tabla,brazil]{babel}
\RequirePackage[euler-digits,euler-hat-accent,T1]{eulervm} %fonte matemática, retirada a pedido do editor, 21/12/2015
\let\mathbf\mathbold
% se quiser fontes diferentes para matemática (Times/Asana):
%\RequirePackage[mathbf=sym]{unicode-math}
%\setmathfont{Asana Math}%[version=asana]
%\setmathfont{XITS Math}
%\setmathfont[range={\mathcal,\mathbfcal},StylisticSet=1]{XITS Math} % also for \mathscr

\else
\RequirePackage[utf8]{inputenc}
\addtokomafont{disposition}{\rmfamily}
\RequirePackage[english,french,spanish,es-tabla,brazil]{babel}
%\RequirePackage{lmodern}
%\RequirePackage{fourier} % much better for screen AND printing.
%\RequirePackage[lining,scale=0.9]{FiraSans} % why use Latin Modern Sans?
%\firalining
%\RequirePackage[scale=.9]{FiraMono} 
\fi

\RequirePackage{textcomp}


\RequirePackage{microtype} % melhor justificação de parágrafos
\RequirePackage{scrlayer-scrpage} %antigo scrpage2
\RequirePackage{graphicx} % para inserção de figuras
\RequirePackage[svgnames,dvipsnames]{xcolor} % cores
\RequirePackage{sidecap}
\widowpenalty=10000
\clubpenalty=10000
\setlength{\parskip}{0pt}
%\setheadsepline{.4pt}
%\addtokomafont{caption}{\footnotesize}
\setcapindent{0pt}
%\RequirePackage{pdflscape}
%\RequirePackage{pdfpages}
\RequirePackage[outer=2cm,inner=1.3cm,bottom=3cm,top=2.5cm]{geometry}
\RequirePackage{lipsum}
\pagestyle{scrheadings} % estilo de cabeçalho


\RequirePackage[stable,bottom]{footmisc}% para footnotes em títulos. pôr footnote DENTRO. % bottom para resolver problema com footnote + figura no fim de página
\deffootnote[0.3em]{0em}{0em} %notas de rodapé, footnotes
{\textsuperscript{\thefootnotemark}}




%%%%%% ----------CABEÇALHO--------------%%%%%%%%%%%
%%%%%%%==============================
\ofoot[]{\scriptsize \rbef, \volumerevista, \numerorevista, \numerocabecalho, \anorevista}
\ifoot[\scriptsize Copyright by Sociedade Brasileira de Física. Printed in Brazil.]{\scriptsize \doirevista}
%\ohead{\pagemark}
\chead{}
\rehead[]{\titleheader}
\lohead[]{\authorheader}
\lehead[]{\numerocabecalho-\pagemark}
\rohead[]{\numerocabecalho-\pagemark}%[\pagemark] entre colchetes: entre colchetes, plain.scrheadings (plain: primeira página)						

%%%%=================================================

%\automark[section]{section}
\RequirePackage{wrapfig}
%\setkomafont{headsepline}{\color{BurntOrange}} % cor da linha que separa cabeçalho %% BurntOrange MidnightBlue JungleGreen
\setkomafont{pagehead}{\normalfont \small}
\setkomafont{pagefoot}{\normalfont \small}
%\RequirePackage{caption} % really necessary?
\setkomafont{caption}{\small \sffamily}
\setkomafont{captionlabel}{\small \sffamily \bfseries}
\RequirePackage[normalem]{ulem}
\RequirePackage[framemethod=tikz]{mdframed}

%% Para quadros com fundo em equações e outros elementos
%\surroundwithmdframed[backgroundcolor=Lavender]{equation}
\surroundwithmdframed[backgroundcolor=Lavender]{verbatim}
%\surroundwithmdframed[backgroundcolor=Lavender]{displaymath}
%\surroundwithmdframed[backgroundcolor=Lavender]{align}
%\surroundwithmdframed[backgroundcolor=Lavender]{align*}


%\RequirePackage{etoolbox}
%
%% add the environment to \[\] (needs etoolbox)
%\preto{\[}{%
%	\begin{mdframed}[backgroundcolor=Lavender]%
%	\vspace{-\baselineskip}%
%}
%\appto{\]}{%
%\end{mdframed}%
%}

\RequirePackage{booktabs} %tabelas profissionais
\RequirePackage{tabularx} % para facilitar nas tabelas
\RequirePackage{longtable}
\RequirePackage{ccicons} % ícones creative commons
\RequirePackage{multicol}
\RequirePackage[bookmarks=true,breaklinks=true]{hyperref}
\g@addto@macro{\UrlBreaks}{\UrlOrds} % incluído em 04-04-2016
\RequirePackage[switch,columnwise]{lineno}
\RequirePackage[blocks]{authblk} %blocks: always author/affiliation blocks
\renewcommand\Affilfont{\small} %fonte afiliação. %\itshape
\renewcommand\Authand{, } % separação entre penúltimo e último autor no título
\renewcommand\Authands{, } % separação entre autores no título

\RequirePackage{abstract}%%[runin] -- %para abstract e \saythanks

%%% bibliografia fonte menor
\AfterBibliographyPreamble{\small}


%%% para diminuir espaço entre entradas na bibliografia
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
	\OLDthebibliography{#1}
	\setlength{\parskip}{0pt}
	\setlength{\itemsep}{0pt plus 0.3ex}
	}
	
	
	%%%% uso econômico de espaços%%%%
	
	\renewcommand\floatpagefraction{.9}
	\renewcommand\dblfloatpagefraction{.9} % for two column documents
	\renewcommand\topfraction{.9}
	\renewcommand\dbltopfraction{.9} % for two column documents
	\renewcommand\bottomfraction{.9}
	\renewcommand\textfraction{.1}   
	\setcounter{totalnumber}{50}
	\setcounter{topnumber}{50}
	\setcounter{bottomnumber}{50}
	
	
	\setlength{\columnsep}{18pt} %espaço entre colunas
	\setlength{\footskip}{36pt} % espaço entre texto e rodapé
	

	\date{\vspace{-5ex}}
	
	%%PARTE DE INSERÇÃO DE TEXTO -- AUTORES -- EXEMPLO
%	\author[1]{Fulano de Tal}
%	\author[2]{Beltrano Aristides Quadrilátero}
%	\affil[1]{Instituto de Geologia, Universidade do Triângulo de Ferro.%\thanks{\href{emailto:fulano@ferro.com}{fulano@ferro.com}}
%		} 
%		\affil[2]{Universidade do outro autor.}
%		
%%%%%%%%%%%%%%%%%%%%

%\providecommand{\imprimirtipotrabalho}{}
%\newcommand{\tipotrabalho}[1]{\renewcommand{\imprimirtipotrabalho}{#1}}


\RequirePackage{rbef-twocols}

%%% DO PACOTE dblfloatfix


%% This is the LaTeX package dblfloatfix which solves two problems:
%%   a)~floats in a twocolumn document come out in the right order and
%%   b)~allowed float positions are now [tbp].
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%\ProvidesPackage{dblfloatfix}[2012/12/31 v1.0a (JAW)]
%%
%% USAGE:
%%
%% This package redefines internals of the LaTeX kernel by merging
%% the code of the packages fixltx2e (the fix2col part) and stfloats.
%%
%% If either of the packages stfloats or fix2col are loaded you will
%% get an error message and your document will probably not be able
%% to compile. So don't load them!
%%
%% When the new output routine for LaTeX3 is done, this package will
%% be obsolete. The sooner the better...
%%
%% If you're using the subfigure package this package will provide a
%% fix for \end@dblfloat by Steven Cochran (the author of subfigure).
%%
%% Morten H\o gholm, <moho0...@student.cbs.dk>
%\RequirePackage{fixltx2e}
%% An error message for those who didn't read the instructions.
\newcommand*{\DBLFIXerrormessage}[1]{%
	\PackageError{dblfloatfix}{%
		Don't use the #1 package!^^J%
		Didn't you read the instructions in dblfloatfix.sty?!^^J%
		You're in big trouble now...^^J%
		Quit immediately (type `X') and correct the mistake}%
	{Type `X' dammit!}%
}
%% A check for those users who don't read manuals.
\AtBeginDocument{%
	\@ifpackageloaded{stfloats}{\DBLFIXerrormessage{stfloats}}{}%
	\@ifpackageloaded{fix2col}{\DBLFIXerrormessage{fix2col}}{}%
	%% Here's a fix by Steven Douglas Cochran (the author of subfigure).
	%% It is needed in order to make subfigure work with this package as
	%% both packages redefine \end@dblfloat.
	\@ifpackageloaded{subfigure}{%
		\typeout{Redefining \string\end@dblfloat\ for use with subfigure}%
		\def\end@dblfloat{%
			\if@twocolumn
			\@listsubcaptions{\@captype}%
			\@endfloatbox
			\ifnum\@floatpenalty <\z@
			\@largefloatcheck
			\global\dp\@currbox1sp %
			\expandafter\@gobble\subfig@end@float
			\fi
			\else
			\end@float
			\fi}%
	}{}%
}
%% Here we go...
\def\@dblbotlist{}
\newcount\@dblbotnum
\newcounter{dblbotnumber}
\setcounter{dblbotnumber}{2}
\def\@dbflt#1{\@ifnextchar[{\@xdblfloat{#1}}{\@xdblfloat{#1}[tbp]}}

\def \@dblfloatplacement {%
	\global \@dbltopnum \c@dbltopnumber
	\global \@dblbotnum \c@dblbotnumber
	\global \@dbltoproom \dbltopfraction\@colht
	\@textmin \@colht
	\advance \@textmin -\@dbltoproom
	\@fpmin \dblfloatpagefraction\textheight
	\@fptop \@dblfptop
	\@fpsep \@dblfpsep
	\@fpbot \@dblfpbot
	\def\f@depth{1sp}%
}

\def\@addtodblcol{%
	\begingroup
	\@insertfalse
	\@setfloattypecounts
	\@getfpsbit \tw@
	\ifodd\@tempcnta
	\@flsetnum \@dbltopnum
	\ifnum \@dbltopnum>\z@
	\@tempswafalse
	\ifdim \@dbltoproom>\ht\@currbox
	\@tempswatrue
	\else
	\ifnum \@fpstype<\sixt@@n
	\advance \@dbltoproom \@textmin
	\ifdim \@dbltoproom>\ht\@currbox
	\@tempswatrue
	\fi
	\advance \@dbltoproom -\@textmin
	\fi
	\fi
	\if@tempswa
	\@bitor \@currtype \@deferlist
	\@testwrongwidth\@currbox
	\if@test
	\else
	\@bitor \@currtype \@dblbotlist
	\if@test
	\else
	\@tempdima -\ht\@currbox
	\advance\@tempdima
	-\ifx \@dbltoplist\@empty \dbltextfloatsep
	\else \dblfloatsep
	\fi
	\global \advance \@dbltoproom \@tempdima
	\global \advance \@colht \@tempdima
	\global \advance \@dbltopnum \m@ne
	\@cons \@dbltoplist \@currbox
	\@inserttrue
	\fi
	\fi
	\fi
	\fi
	\fi
	\if@insert
	\else
	\@getfpsbit 4\relax
	\ifodd\@tempcnta
	\@flsetnum \@dblbotnum
	\ifnum \@dblbotnum>\z@
	\@tempswafalse
	\ifdim \@dbltoproom>\ht\@currbox
	\@tempswatrue
	\else
	\ifnum \@fpstype<\sixt@@n
	\advance \@dbltoproom \@textmin
	\ifdim \@dbltoproom>\ht\@currbox
	\@tempswatrue
	\fi
	\advance \@dbltoproom -\@textmin
	\fi
	\fi
	\if@tempswa
	\@bitor \@currtype \@deferlist
	% Test for twocolumn floats (2008/08/21 Mattias Nissler)
	\@testwrongwidth\@currbox
	\if@test
	\else
	\@tempdima -\ht\@currbox
	\advance\@tempdima
	-\ifx \@dblbotlist\@empty \dbltextfloatsep
	\else \dblfloatsep
	\fi
	\global \advance \@dbltoproom \@tempdima
	\global \advance \@colht \@tempdima
	\global \advance \@dblbotnum \m@ne
	\@cons \@dblbotlist \@currbox
	\@inserttrue
	\fi
	\fi
	\fi
	\fi
	\fi
	\if@insert
	\else
	\@cons\@deferlist\@currbox
	\fi
	\endgroup
}

\def\@combinedblfloats{%
	\ifx \@dbltoplist\@empty \else \@cdblflt \fi
	\ifx \@dblbotlist\@empty \else \@cdblflb \fi
}

\def\@cdblflt{%
	\setbox\@tempboxa \vbox{}%
	\let \@elt \@comdblflelt
	\@dbltoplist
	\let \@elt \relax
	\xdef \@freelist {\@freelist\@dbltoplist}%
	\global\let \@dbltoplist \@empty
	\setbox\@outputbox \vbox% to\textheight
	{%\boxmaxdepth\maxdepth   %% probably not needed, CAR
		\unvbox\@tempboxa\vskip-\dblfloatsep
		\ifnum \@dbltopnum>\m@ne
		\dblfigrule
		\fi
		\vskip \dbltextfloatsep
		\unvbox \@outputbox
	}%
}

\def\@cdblflb{%
	\setbox\@tempboxa \vbox{}%
	\let \@elt \@comdblflelt
	\@dblbotlist
	\let \@elt \relax
	\xdef \@freelist {\@freelist\@dblbotlist}%
	\global\let \@dblbotlist \@empty
	\setbox\@outputbox \vbox% to\textheight
	{%\boxmaxdepth\maxdepth   %% probably not needed, CAR
		\unvbox\@outputbox
		\vskip \dbltextfloatsep
		\ifnum \@dblbotnum>\m@ne
		\dblfigrule
		\fi
		\unvbox\@tempboxa
		\vskip -\dblfloatsep
	}%
}

\def \@doclearpage {%
	\ifvoid\footins
	\setbox\@tempboxa\vsplit\@cclv to\z@ \unvbox\@tempboxa
	\setbox\@tempboxa\box\@cclv
	\xdef\@deferlist{\@toplist\@botlist\@deferlist}%
	\global \let \@toplist \@empty
	\global \let \@botlist \@empty
	\global \@colroom \@colht
	\ifx \@currlist\@empty
	\else
	\@latexerr{Float(s) lost}\@ehb
	\global \let \@currlist \@empty
	\fi
	\@makefcolumn\@deferlist
	\@whilesw\if@fcolmade \fi{\@opcol\@makefcolumn\@deferlist}%
	\if@twocolumn
	\if@firstcolumn
	\xdef\@deferlist{\@dbltoplist\@dblbotlist\@deferlist}%
	\global \let \@dbltoplist \@empty
	\global \let \@dblbotlist \@empty
	\global \@colht \textheight
	\begingroup
	\@dblfloatplacement
	\@makefcolumn\@deferlist
	\@whilesw\if@fcolmade \fi{\@outputpage
		\@makefcolumn\@deferlist}%
	\endgroup
	\else
	\vbox{}\clearpage
	\fi
	\fi
	\ifx\@deferlist\@empty \else\clearpage \fi
	\else
	\setbox\@cclv\vbox{\box\@cclv\vfil}%
	\@makecol\@opcol
	\clearpage
	\fi
}

\RequirePackage{multirow} % células em várias linhas em tabelas.
\RequirePackage{enumitem} % enumerate e itemize sem espaço entre itens (ver abaixo:)
\setlist{noitemsep}

%%% hifenização de seções permitida abaixo. descomente para permitir hifenização. Mas quem quer hifenizar seções? Mude de acordo com seu gosto, por sua própria conta e risco.
%\renewcommand*{\raggedsection}{}% default is \raggedright

%mudado 07 01 2016
%\newenvironment{duascolunas}{\vspace*{10pt}\begin{minipage}{\textwidth}
%		\begin{equacaolonga}
%		}
%		{\end{equacaolonga}	\end{minipage}\vspace*{10pt}}
%
\newmdenv[rightline=false,leftline=false,
linecolor=gray!50,linewidth=1.5pt]{equacaolonga}%roundcorner=10pt



%\newenvironment{duascolunas}{\vspace*{10pt}\hspace*{.12\columnwidth}\begin{minipage}{.85\textwidth}
%		\begin{equacaolonga}
%		}
%		{\end{equacaolonga}	\end{minipage}\vspace*{10pt}}
%%
%\newmdenv[rightline=false,leftline=false,
%linecolor=gray!50,linewidth=1.5pt]{equacaolonga}%roundcorner=10pt


%%% Comandos que foram retirados mas que podem ser úteis.
%\newenvironment{duascolunas}{\begin{strip}
%	\begin{widetext}
%		}
%		{\end{widetext}\end{strip}}
%%
%\newmdenv[rightline=false,leftline=false,
%align=center,linecolor=gray]{widetext}%roundcorner=10pt


%%%\begin{strip} %% use this for one-column/widetext space
%%%\vspace{-28pt}
%%%\end{strip}

						
\endinput

\end{comment}