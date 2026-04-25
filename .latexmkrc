# 1. Force XeLaTeX for everything
$pdf_mode = 5; 

# 2. Configure the XeLaTeX command
$xelatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';

# 3. Handle the "Subdirectory Garbage" problem
# This tells latexmk to look for .aux files in subdirectories
$cleanup_includes_generated = 1;
$cleanup_includes_cusdep_generated = 1;

# 4. Add extra extensions for the 'clean' command
# This covers the .thm, .bbl, and other files your template generates
push @generated_exts, 'thm', 'bbl', 'blg', 'run.xml', 'bcf', 'xdv';
