#!/usr/bin/perl

# Convert markdown formatting into the corresponding HTML tag.
# The markdown to be converted are ** and *.
# Print the line regardless of substitution.
#
# For example, the following lines...
#
#     "**this is bolded**"
#     "*this is italic*"
#     "*this has both italic* and **bold text**"
#
# ...would get converted to...
#
#     "<strong>this is bolded</strong>"
#     "<em>this is italic</em>"
#     "<em>this has both italic</em> and <strong>bold text</strong>"
#
# The following should be left unconverted
# 	* A string with no closing asterisk
# 	A string with no opening asterisk**
#

while (<>) {
   s/SEARCH/REPLACE/;
   s/SEARCH2/REPLACE2/;
   print;
}
	
