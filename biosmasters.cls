% A LaTeX class for UNC Biostatistics Master's papers
% Based on JSS class in rticles package
% https://github.com/rstudio/rticles/

\ProvidesClass{biosmasters}
\LoadClass{article}
%\PassOptionsToPackage{pagebackref=true}{hyperref}

%% PACKAGES %%
\usepackage[top=1in, bottom=1in, left=1.25in, right=1in]{geometry} % default for most pages
 \usepackage[pagebackref=true]{hyperref}
\usepackage{afterpage}
\usepackage{amsmath}
\usepackage{fancyvrb}
\usepackage{natbib}
\usepackage{etoolbox} % Enable various patching tools
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{setspace} % For double spacing
\usepackage{indentfirst} % For indenting all paragraphs
\setlength{\parindent}{1cm}

%% PAGE STYLES %%

\pagestyle{fancy} % Default page style
\fancyhf{}

\rhead{\thepage}
\renewcommand{\headrulewidth}{0pt} % remove lines 
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{firstpage}
{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt} % remove lines 
  \renewcommand{\footrulewidth}{0pt}
   % No numbers on first page
}


%% DEFINITIONS %%

\DefineVerbatimEnvironment{Sinput}{Verbatim}{fontshape=sl, baselinestretch = 0.75}
\DefineVerbatimEnvironment{Soutput}{Verbatim}{}
\DefineVerbatimEnvironment{Scode}{Verbatim}{fontshape=sl, baselinestretch = 0.75}
\newenvironment{Schunk}{}{}
\DefineVerbatimEnvironment{Code}{Verbatim}{}
\DefineVerbatimEnvironment{CodeInput}{Verbatim}{fontshape=sl, baselinestretch = 1}
\DefineVerbatimEnvironment{CodeOutput}{Verbatim}{baselinestretch = 1}
\newenvironment{CodeChunk}{}{}
%\setkeys{Gin}{width=0.8\textwidth}

\newcommand\code{\bgroup\@makeother\_\@makeother\~\@makeother\$\@codex}
\def\@codex#1{{\normalfont\ttfamily\hyphenchar\font=-1 #1}\egroup}
\let\proglang=\textsf
\newcommand{\pkg}[1]{{\fontseries{b}\selectfont #1}}

\newcommand*{\SignatureAndDate}[1]{%
    \par\noindent\makebox[2.5in]{\hrulefill}%
    \par\noindent\makebox[2.5in][l]{#1}%
}

%% BIBLIOGRAPHY STYLE %%

\bibliographystyle{jasa}