\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2011/03/26 My custom CV class]

\LoadClass{article}


\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage{hyperref}
\RequirePackage{geometry} % changes margins across the page
 \geometry{
 left=5mm,
 right=5mm,
 top=5mm,
 bottom=5mm,
}


\RequirePackage{enumitem}
\setitemize{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt}

\titlespacing\section{0pt}{0pt plus 2pt minus 2pt}{5pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{5pt plus 4pt minus 2pt}{5pt plus 2pt minus 2pt}
\titlespacing\item{0pt}{1pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}



\titleformat{\section}         % Customise the \section command 
  {\Large\scshape} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
  
  
  

\newcommand{\contact}[5]{
    \centerline{ {\Gentsroom}#1 {\large} \url{#2} {\large} #3
    {\large\Large\Letter} #4 \ {\Large\Telefon} #5 }
}

\newcommand{\longcontact}[5]{% <--- don't forget
  \par % be sure to start a new line
  \Gentsroom\ #1 \hfill \ComputerMouse\ #2%
  \par\nopagebreak
  \makebox[0pt][l]{\Letter\ #3}% zero width
  \hfill % fill
  \makebox[0pt][c]{\Telefon\ #4}% zero width
  \hfill % fill
  \makebox[0pt][r]{Github: #5}%
  \par
}
  
\newcommand{\datedsection}[3]{%
  \section[#1]{#1 \hfill #2 \hfill #3}%
}
\newcommand{\datedsubsection}[3]{%
  \subsection[#1]{
  \makebox[0pt][l]{ #1}% zero width
  \hfill % fill
  \makebox[0pt][c]{ #2}% zero width
  \hfill % fill
  \makebox[0pt][r]{ #3}%
  }%
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
  \hrulefill
}


\newcommand{\workitemsthree}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}


\newcommand{\workitemstwo}[2]{
    \begin{itemize}
    \setlength\itemsep{0em}
    \item #1
    \item #2
    \end{itemize}
}

\newcommand{\workitemsone}[1]{
    \begin{itemize}
    \setlength\itemsep{0em}
    \item #1
    \end{itemize}
}