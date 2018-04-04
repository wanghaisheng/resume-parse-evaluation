#! /bin/bash

prefix="resume-samples/"
jpg_prefix="resume-samples/"
pdf_suffix=".pdf"
jpg_suffix=".jpg"
html_suffix=".html"
doc_suffix=".doc"
docx_suffix=".docx"
txt_suffix=".txt"
eml_suffix=".eml"
excel_suffix=".xls"


for d in contracts/* ; do
	pdf_name=${d#$prefix}
	file_name=${pdf_name%$pdf_suffix}
	mkdir contracts/${file_name}
	mkdir tess-out-html/${file_name}
	mkdir tess-out-txt/${file_name}

	# convert to png
	convert -transparent white -fuzz 10% $d contracts/${file_name}/${file_name}.png
	
	# tesseract
	for file in contracts/${file_name}/* ; do
		tess_file_name=${file#$png_prefix}
		tess_file_name=${tess_file_name#${file_name}/}
		tess_file_name=${tess_file_name%$png_suffix}
		
		# tesseract text invocation
		tesseract contracts/${file_name}/${tess_file_name}.png tess-out-txt/${file_name}/${tess_file_name}

		# tesseract html invocation
		tesseract contracts/${file_name}/${tess_file_name}.png tess-out-html/${file_name}/${tess_file_name} hocr
	done
	
	# ABBYY
	# txt
	python ABBYY/process.py contracts/${pdf_name} abbyy-out/txt/${file_name}.txt -txt
	# docx
	python ABBYY/process.py contracts/${pdf_name} abbyy-out/docx/${file_name}.txt -docx
	# xml
	python ABBYY/process.py contracts/${pdf_name} abbyy-out/xml/${file_name}.txt -xml

    
done


