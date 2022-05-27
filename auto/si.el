(TeX-add-style-hook
 "si"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("achemso" "manuscript=cmatex")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "usenames" "dvipsnames") ("babel" "USenglish") ("cleveref" "nameinlink" "noabbrev" "capitalize") ("subfig" "labelformat=simple") ("caption" "labelfont=bf")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "achemso"
    "achemso10"
    "xcolor"
    "listings"
    "makecell"
    "xr"
    "appendix"
    "upgreek"
    "chemmacros"
    "siunitx"
    "textcomp"
    "natmove"
    "babel"
    "graphicx"
    "array"
    "tabularx"
    "mathtools"
    "amsmath"
    "multirow"
    "longtable"
    "float"
    "hyperref"
    "cleveref"
    "subfig"
    "caption")
   (TeX-add-symbols
    "ignorespacesafterend"
    "thereaction")
   (LaTeX-add-labels
    "fig:autotrain"
    "fig:o4"
    "fig:subset")
   (LaTeX-add-environments
    "subreactions")
   (LaTeX-add-bibliographies
    "ref")
   (LaTeX-add-xcolor-definecolors
    "mygreen"
    "mygray"
    "mymauve"))
 :latex)

