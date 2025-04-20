#!/bin/bash
# brew tap oncletom/cpdf
# brew install cpdf

# Name of the source PDF file
input_pdf="statement.pdf"

# Set output PDF filenames
OUTPUT1=abstract+proposal+wajih.pdf
OUTPUT2=description+proposal+wajih.pdf
# OUTPUT3=references+proposal+wajih.pdf


# Split the PDF into three parts
cpdf "$input_pdf" 1 -o $OUTPUT1
cpdf "$input_pdf" 2-end -o $OUTPUT2
# cpdf "$input_pdf" 17-end -o $OUTPUT3