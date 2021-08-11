% Released under the MIT license.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ronr-bylaws}

% Base Class
\LoadClass[12pt, onecolumn]{article}
\DeclareOption{twocolumn}{\OptionNotUsed}

\ProcessOptions\relax

%Required Packages
\RequirePackage{microtype}
\RequirePackage[letterpaper,
                top=1in, 
                left=1in, 
                right= 1in, 
                bottom=1in]{geometry}
\RequirePackage{mathptmx}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\onehalfspacing

\RequirePackage{enumitem}
\RequirePackage[utf8]{inputenc}
\RequirePackage[normalem]{ulem}
\RequirePackage{xcolor}

\RequirePackage{changepage}
\RequirePackage{parskip}

%% Title formatting
\def\partyname#1{\def\@partyname{#1}}

%Creates the correct heading for all bills and title
\renewcommand{\maketitle}{
    \begin{center}
        
        \large{\textbf{\MakeUppercase{\@partyname}}}
        \vspace{8pt}
        
        Bylaws
        
        \vspace{12pt}
        
        As adopted on \@date
        
        \vspace{12pt}
    \end{center}
}

%%
% article title class
\titleclass\article{straight}[\part]
\titleformat{\article}[hang]{\bfseries\MakeUppercase}{Article \thearticle}{1.5em}{}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[block]{\normalfont\scshape}{\S \thesection}{1.5em}{}
\titlespacing*{\section}{12pt}{1ex}{1em}
\renewcommand{\thesection}{\arabic{section}} 

\makeatletter
\let\xarticle\article
\renewcommand\article{\par
  \leftmargin0\p@
  \leftskip\leftmargin
  \@totalleftmargin\leftmargin\linewidth\textwidth
  \xarticle}
\let\xsection\section
\renewcommand\section{\par
  \leftmargin12\p@
  \leftskip\leftmargin
  \@totalleftmargin\leftmargin\linewidth\dimexpr\textwidth-\leftmargin\relax
  \xsection}


% Defines WHEREAS
\newcommand{\whereas}[1]{\noindent\textbf{WHEREAS:} #1;\vspace{12pt}}

% Defines Therefore 
\newcommand{\therefore}{
    \noindent
    \textbf{%
        \MakeUppercase{Therefore, be it resolved that:}
    }
    \vspace{12pt}
}