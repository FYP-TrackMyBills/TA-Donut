@echo off
echo ========================================
echo LaTeX Chicago Style Compilation Script
echo ========================================

cd src

echo Step 1: Cleaning old files...
del /Q *.aux *.bbl *.blg *.bcf *.run.xml *.fdb_latexmk *.fls *.log *.out *.toc *.lof *.lot *.atoc *.wrt 2>nul

echo Step 2: First LaTeX pass...
pdflatex -interaction=nonstopmode thesis.tex
if errorlevel 1 (
    echo ERROR: LaTeX compilation failed!
    echo Check the output above for errors.
    pause
    exit /b 1
)

echo Step 3: Running Biber for Chicago style bibliography...
biber thesis
if errorlevel 1 (
    echo ERROR: Biber failed!
    echo Make sure all citations exist in references.thesis.bib
    pause
    exit /b 1
)

echo Step 4: Second LaTeX pass (resolve references)...
pdflatex -interaction=nonstopmode thesis.tex

echo Step 5: Final LaTeX pass (finalize formatting)...
pdflatex -interaction=nonstopmode thesis.tex

echo Step 6: Moving output files...
if exist thesis.pdf (
    if not exist ..\build mkdir ..\build
    if not exist ..\output mkdir ..\output
    copy thesis.pdf ..\build\
    copy thesis.pdf ..\output\
    echo ========================================
    echo SUCCESS! PDF created successfully.
    echo Location: build\thesis.pdf
    echo ========================================
) else (
    echo ERROR: PDF was not created!
    echo Check the compilation log for errors.
)

pause