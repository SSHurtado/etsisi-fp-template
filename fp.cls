\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fp}[2025 ETSISI final project formatted LaTeX class]

% ===============================================
% Packages
% ===============================================
\LoadClass[12pt]{article}
\RequirePackage[a4paper,margin=0.9in]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{etoolbox}
\RequirePackage{colortbl}   % for \rowcolors
\RequirePackage[table,x11names]{xcolor}
\RequirePackage{xparse}
\RequirePackage{hyperref}  
\RequirePackage{fontspec}
\RequirePackage{graphicx} % Images package
\RequirePackage{eso-pic}
\RequirePackage{wrapfig}
\RequirePackage{tocloft}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pdflscape}
\RequirePackage[style=ieee,sorting=none]{biblatex} % Bibliography package
\addbibresource{references.bib} 

% ===============================================
% Colors
% ===============================================
\definecolor{sectionblue}{HTML}{006EB7}
% \definecolor{footlineblue}{HTML}{0F1C82}
\definecolor{subsectiongray}{HTML}{706F6F} 
\definecolor{headergray}{HTML}{E3E3E3}
\definecolor{reflinkcolor}{HTML}{AE9B6D}% For reference (citation) links
\definecolor{weblinkcolor}{HTML}{00ACE9}% For URL links
\definecolor{intlinkcolor}{HTML}{AE9B6D}% For internal links (index, etc.)
\definecolor{rowshade}{HTML}{E5F0F7}
\definecolor{CodeBG}{HTML}{CCBC97}
\definecolor{CodeFg}{HTML}{FAFCFF}  

\RequirePackage[most]{tcolorbox}


% ===============================================
% Hyperlinks setup
% ===============================================
\hypersetup{
  colorlinks = true,
  linkcolor  = intlinkcolor,
  citecolor  = reflinkcolor,
  urlcolor   = weblinkcolor,
  pdftitle   ={Final Project}
}


\setlength{\fboxsep}{2pt}     

% save the original \texttt
\let\OldTextTT\texttt

% redefine \texttt to add a background
\renewcommand{\texttt}[1]{%
  \colorbox{CodeBG}{\textcolor{CodeFg}{\OldTextTT{#1}}}%
}

% ===============================================
% Fonts
% ===============================================
\newfontfamily\librefranklinbold{LibreFranklin}[
  Extension=.otf,
  UprightFont=*-Bold
]
\newfontfamily\librefranklinlight{LibreFranklin}[
  Extension=.otf,
  UprightFont=*-Light
]
\newfontfamily\librefranklinlightit{LibreFranklin}[
  Extension=.otf,
  UprightFont=*-LightItalic,
  ItalicFont=*-LightItalic
]


% ===============================================
% Acknowlegements page
% ===============================================
\newcommand{\acknowledgmentpage}[1]{%
  \clearpage
  \thispagestyle{empty} % No headers/footers on this page
  \vspace*{\fill} 
  \begin{flushright} 
    {\librefranklinlightit \itshape \fontsize{30pt}{32pt}\selectfont Acknowledgements} 
    
    \vspace{0.2cm} 
    {\fontsize{15pt}{18pt} \selectfont #1}
  \end{flushright}
  \vspace*{\fill} 
  \clearpage
}

% ===============================================
% Abstract page
% ===============================================
\newcommand{\abstractpage}[2]{%
  \clearpage
  \thispagestyle{empty}% No headers/footers
  % Top part: Abstract title and text (flushleft)
  \vspace*{2cm}% Optional top margin
  \begin{flushleft}
    {\librefranklinlightit \fontsize{30pt}{32pt}\selectfont Abstract}\par
    \vspace{0.2cm}%
    {\fontsize{14pt}{16pt}\selectfont #1}\par
  \end{flushleft}%
  \vfill% Push the following to the bottom
  % Bottom part: Keywords (flushright)
  \begin{flushright}
    {\librefranklinlight \fontsize{15pt}{16pt}\selectfont Keywords |} \,  \fontsize{14pt}{16pt}\selectfont #2%
  \end{flushright}%
  \clearpage
}




% ===============================================
% TOC
% ===============================================
\renewcommand{\contentsname}{} % or \contentsname{My Title} if you prefer
\newcommand{\toc}{%
  \clearpage
  \thispagestyle{empty} % Set page style to empty
  \begin{center}
    {\librefranklinlight \fontsize{36pt}{32pt}\selectfont \color{subsectiongray} Contents}
  \end{center}
  \vspace{1em}

  % Customize TOC font sizes
  \renewcommand{\cftsecfont}{\librefranklinbold \fontsize{14pt}{16pt}\selectfont} % Sections
  \renewcommand{\cftsubsecfont}{\librefranklinlight \fontsize{12pt}{14pt}\selectfont} % Subsections
  \renewcommand{\cftsubsubsecfont}{\librefranklinlightit \fontsize{10pt}{12pt}\selectfont} % Subsubsections

  % Customize TOC entry indentation
  \renewcommand{\cftsecindent}{0pt}
  \renewcommand{\cftsubsecindent}{10pt}
  \renewcommand{\cftsubsubsecindent}{20pt}

  % Customize TOC dot leaders spacing
  \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
  \renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
  \renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftdotsep}}

  \renewcommand{\cftsecpresnum}{\librefranklinbold \fontsize{14pt}{16pt}\color{intlinkcolor}\selectfont} % Make section numbers blue
  \renewcommand{\cftsubsecpresnum}{\librefranklinlight \fontsize{12pt}{14pt}\color{intlinkcolor}\selectfont} % Make subsection numbers blue
  \renewcommand{\cftsubsubsecpresnum}{\librefranklinlightit \fontsize{10pt}{12pt}\color{intlinkcolor}\selectfont} % Make subsubsection numbers blue

  \renewcommand{\cftsecpagefont}{\librefranklinbold \fontsize{14pt}{16pt}\color{intlinkcolor}\selectfont} % Make section page numbers blue
  \renewcommand{\cftsubsecpagefont}{\librefranklinlight \fontsize{12pt}{14pt}\color{intlinkcolor}\selectfont} % Make subsection page numbers blue
  \renewcommand{\cftsubsubsecpagefont}{\librefranklinlight \fontsize{10pt}{12pt}\color{intlinkcolor}\selectfont} % Make subsubsection page numbers blue

  {\librefranklinlight \fontsize{14pt}{16pt}\selectfont \tableofcontents}

  \thispagestyle{empty} % Reset page style again after TOC is generated
  \clearpage
}

% ===============================================
% LIST OF FIGURES (styled like ToC) – non-bold + spacing
% ===============================================
\renewcommand{\listfigurename}{} % remove default title
\newcommand{\lof}{%
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    {\librefranklinlight \fontsize{36pt}{32pt}\selectfont \color{subsectiongray} List of Figures}
  \end{center}
  \vspace{1em}

  % ===== spacing between entries =====
  \setlength{\cftbeforefigskip}{10pt} % space before each figure entry

  % ===== entry formatting (non-bold) =====
  \renewcommand{\cftfigfont}{\librefranklinlight \fontsize{12pt}{16pt}\selectfont}        % figure entry text
  \renewcommand{\cftfigpagefont}{\librefranklinlight \fontsize{12pt}{16pt}\color{intlinkcolor}\selectfont} % page numbers
  \renewcommand{\cftfigleader}{\cftdotfill{\cftdotsep}}                                % dotted leaders

  {\librefranklinlight \fontsize{12pt}{16pt}\selectfont \listoffigures}

  \thispagestyle{empty}
  \clearpage
}

% ===============================================
% LIST OF TABLES (styled like ToC) – non-bold + spacing
% ===============================================
\renewcommand{\listtablename}{} % remove default title
\newcommand{\lot}{%
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    {\librefranklinlight \fontsize{36pt}{32pt}\selectfont \color{subsectiongray} List of Tables}
  \end{center}
  \vspace{1em}

  % ===== spacing between entries =====
  \setlength{\cftbeforetabskip}{10pt} % space before each table entry


\setlength{\cfttabindent}{0pt}
\setlength{\cfttabnumwidth}{3em}

  % ===== entry formatting (non-bold) =====
  \renewcommand{\cfttabfont}{\librefranklinlight \fontsize{12pt}{16pt}\selectfont}        % table entry text
  \renewcommand{\cfttabpagefont}{\librefranklinlight \fontsize{12pt}{16pt}\color{intlinkcolor}\selectfont} % page numbers
  \renewcommand{\cfttableader}{\cftdotfill{\cftdotsep}}                                % dotted leaders

  {\librefranklinlight \fontsize{12pt}{16pt}\selectfont \listoftables}

  \thispagestyle{empty}
  \clearpage
}

% ===============================================
% Header configuration
% ===============================================
\setlength{\headheight}{28.4pt}
\pagestyle{fancy}
\fancyhf{}

\newcommand{\mysectiontitle}{} 
\newcommand{\mysubsectiontitle}{}

\renewcommand{\sectionmark}[1]{%
  \def\mysectiontitle{#1}
  \def\mysubsectiontitle{}
  \markboth{#1}{}% Update left mark
}
\renewcommand{\subsectionmark}[1]{%
  \def\mysubsectiontitle{#1}
  \markright{#1}
}

\fancyhead[L]{% Section header format
    \librefranklinlight \fontsize{10pt}{12pt}\selectfont \color{subsectiongray} \mysectiontitle
}
\fancyhead[R]{% Subsection header format
    \librefranklinlightit \fontsize{10pt}{12pt}\selectfont \color{subsectiongray} \mysubsectiontitle
}
% Underline format
\renewcommand{\headrule}{%
    \color{headergray}\rule{\textwidth}{0.75pt}
}



% ===============================================
% Footer configuration
% ===============================================
\fancyfoot[L]{% Blue line
  \makebox[0pt][l]{%
    \hspace{\dimexpr -\oddsidemargin - 1in\relax}%
    \textcolor{sectionblue}{\rule{17.5cm}{6pt}}%
  }%
}
\fancyfoot[R]{% Page number
  {\librefranklinlight \fontsize{12pt}{14pt}\selectfont \thepage}%
}

% ===============================================
% Normal text format
% ===============================================
\setmainfont[
  Extension=.otf,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  % WordSpace keys are in 1/1000em units, so these give
  %    normal=0.15em, stretch=0.20em, shrink=0.10em
  WordSpace=1.8,
  % LetterSpace=100 means +0.1em between letters (10%)
  LetterSpace=2
]{EBGaramond}

\renewcommand{\normalsize}{%
    \fontsize{14pt}{20pt}\selectfont % 12pt font, 1.2 line spacing
}
% Adjust paragraph spacing
\setlength{\parskip}{12pt}  % Space after each paragraph
\setlength{\parindent}{0pt} % No indentation


% ===============================================
% Section format
% ===============================================
% Automatically start each section on a new page:
\pretocmd{\section}{\clearpage\vspace*{4cm}}{}{}

% Define the section format:
\titleformat{\section}
  {\librefranklinbold \fontsize{36pt}{32pt}\selectfont \color{sectionblue}} % Font, size, color
  {}    % No numbering label (empty)
  {0em} % No extra horizontal spacing
  {}    % No extra code before the title text

\titlespacing*{\section}
  {0pt}{0pt}{20pt}


% ===============================================
% Subsection format
% ===============================================
\titleformat{\subsection}
  {\librefranklinlight \fontsize{20pt}{22pt}\selectfont \color{subsectiongray}}  % Font, size, color
  {}    % No numbering label
  {0em} % No extra spacing before the title
  {}    % No extra code before title text
  [\color{subsectiongray}\titlerule] 

  
\titlespacing*{\subsection}
  {0pt}{30pt}{15pt} % Left indent , space before, after

% ===============================================
% Subsubsection format
% ===============================================
\titleformat{\subsubsection}
  {\librefranklinlightit \itshape \fontsize{16pt}{22pt}\selectfont \color{subsectiongray}}  % Font, size, color
  {}    % No numbering label
  {0em} % No extra spacing before the title
  {\textit}    % No extra code before title text
  [] 

  
\titlespacing*{\subsubsection}
  {0pt}{16pt}{8pt} % Left indent, space before, after

% ===============================================
% Cover page
% ===============================================
\newcommand{\coverpage}[1]{%
  \clearpage
  \thispagestyle{empty} % Set page style to empty
  \ClearShipoutPicture
  % Add the cover image as a background covering the full page:
  \AddToShipoutPicture*{%
    \put(0,0){%
      \includegraphics[width=\paperwidth,height=\paperheight]{#1}%
    }%
  }%
  \thispagestyle{empty}%
  \clearpage%
}

% ===============================================
% License page 
% ===============================================
\newcommand{\GetLicenseImage}[1]{images/licenses/#1.png}

\newenvironment{licensepage}[7]{%
  \ClearShipoutPicture
  \begingroup
  \small
  \thispagestyle{empty}% Remove header/footer on this page
  % #1: License key => define the image file
  \def\licenseImageFile{\GetLicenseImage{#1}}%
  % Begin left minipage for text (50% of page width)
  \begin{minipage}[t][\dimexpr\textheight-20pt\relax][b]{0.5\textwidth}%
    \raggedright
    % Title and subtitle (#2)
    {#2\par}%
    \vspace{1cm}%
    % Author (#3)
    {\textbf{Author:} #3\par}%
    % Tutor (#4)
    {\textbf{Tutor:} #4\par}%
    \vspace{1cm}%
    % Code QR (#5)
    {This work code can be found here:\par #5\par}%
    \vspace{1cm}%
    % Others (#6)
    {#6\par}
    \vspace{2.5cm}
    
    % Fixed text
    FINAL PROJECT\\[0.5ex]
    (ETSISI)\\[0.5ex]
    \vspace{0.5cm}
    % Date (#7)
    {\textit{#7}\par}% 
    ETSI de Sistemas Informáticos\\[0.5ex]
    Universidad Politécnica de Madrid\par
    
  \end{minipage}%
  \hfill%
  % Right minipage for the license image (40% of page width)
  \begin{minipage}[t][\dimexpr\textheight-20pt\relax][b]{0.4\textwidth}%
    \raggedleft
    \includegraphics[height=2cm]{\licenseImageFile}%
  \end{minipage}%
  \par\vspace{20pt}\par% Extra bottom padding
  \endgroup
  \newpage% End the license page
}{%
  % End-code is already included above
}

% ===============================================
% Tables
% ===============================================
% ─────────────────────────────────────────────────────────────────
% 1) cellfont: defaults to \small but you can call \cellfont[\footnotesize]
% ─────────────────────────────────────────────────────────────────
\newcommand{\cellfont}{\small}               % tamaño base de celdas
\newcommand{\thead}[1]{%
  % Anchura = \linewidth (dentro de la propia celda p/m/b)
  \parbox[c]{\linewidth}{%
    \centering\cellfont\librefranklinlight #1%
  }%
}
\NewDocumentEnvironment{mytable}{O{htbp} m m m o}
  {%
    \begin{table}[#1]
      \centering
      \small
      \captionsetup{width=\linewidth}%
      \rowcolors{2}{rowshade}{white}%
      \begin{tabular}{#2}%
  }
  {%
      \end{tabular}%
      \IfNoValueTF{#5}
        {\caption{#3}}
        {\caption[#5]{#3}}
      \label{#4}%
    \end{table}%
    \rowcolors{2}{}{}%
  }

% ===============================================
% Captions
% ===============================================
\DeclareCaptionFormat{custom}{%
    \fontsize{10}{12}\textbf{#1#2}#3
}
\captionsetup{format=custom, font=footnotesize, width=0.6\columnwidth}

% ===============================================
% References
% ===============================================
% Reference entries format
\renewcommand*{\bibfont}{\fontsize{10pt}{12pt}\selectfont}
\fancypagestyle{bibstyle}{%
  \fancyhf{} 
  \fancyhead{} 
  % --- Footer: restore your custom footer settings ---
    \fancyfoot[L]{% Blue line
      \makebox[0pt][l]{%
        \hspace{\dimexpr -\oddsidemargin - 1in\relax}%
        \textcolor{sectionblue}{\rule{17.5cm}{6pt}}%
      }%
    }
    \fancyfoot[R]{% Page number
      {\librefranklinlight \fontsize{12pt}{14pt}\selectfont \thepage}%
    }
  % Remove header rule
  \renewcommand{\headrulewidth}{0pt}%
  % (Keep footer rule as defined in your main fancy style if desired.)
}

% References title format
\defbibheading{mybigheading}{%
  \clearpage
  \phantomsection % Ensure hyperlink anchors work correctly
  \addcontentsline{toc}{section}{#1} % Add the bibliography title to the TOC
  {\librefranklinlightit \fontsize{30pt}{38pt}\selectfont #1}%
  \thispagestyle{bibstyle}% Use the custom bib style: no header, but preserve footer
}
\endinput
