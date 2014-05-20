#/bin/bash

# download all pictures
cat $1 | grep -o 'src="[^"]*' | cut -c 6-200 | wget -i- 2> /dev/null

# merge pictures into one
convert -append *.jpg out.jpg

# enlarge final picture
convert out.jpg -resize 300% final.jpg

# try to read text from the final picture
tesseract final.jpg final 2> /dev/null

# show result
cat final.txt

# clean up
rm *.jpg final.txt
