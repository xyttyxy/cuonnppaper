(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("achemso" "manuscript=cmatex")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "usenames" "dvipsnames") ("babel" "USenglish") ("cleveref" "nameinlink" "noabbrev" "capitalize") ("subfig" "labelformat=simple") ("caption" "labelfont=bf")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "achemso"
    "achemso10"
    "xcolor"
    "makecell"
    "xr-hyper"
    "hyperref"
    "hypcap"
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
    "cleveref"
    "subfig"
    "caption")
   (TeX-add-symbols
    "ignorespacesafterend"
    "thereaction")
   (LaTeX-add-labels
    "sec:intro"
    "fig:scheme"
    "fig:subset"
    "fig:val_ads"
    "fig:val_close"
    "fig:md_setup"
    "fig:traj"
    "fig:thickness"
    "fig:spikes"
    "fig:cuo_id"
    "fig:boo_slab"
    "fig:10x353K10n2i_comp"
    "tab:cluster_com"
    "fig:thicknumo_111"
    "fig:traj111")
   (LaTeX-add-environments
    "subreactions")
   (LaTeX-add-bibliographies
    "ref"))
 :latex)

