#!/bin/bash

MAIN_FILE="main.tex"
DEFAULT_OUTPUT="main.pdf"

# Get the current date in YYYY_MM_DD format
CURRENT_DATE=$(date +"%d_%m_%Y")
OUTPUT_PDF="Alexandros_Antonov_CV_$CURRENT_DATE.pdf"

# Compile LaTeX to PDF
pdflatex $MAIN_FILE

# Clean up auxiliary files
rm -f *.aux *.log *.out *.toc *.xmpi

# Move the generated PDF to the main project folder
mv $DEFAULT_OUTPUT $OUTPUT_PDF

echo "PDF generated: $OUTPUT_PDF"