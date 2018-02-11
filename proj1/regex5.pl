#!/usr/bin/perl

# Convert any lines containing markdown for a link to HTML fo ra link
# markdown links are formatted as follows:
#
# '['
#     All links start out with a single opening square bracket. Make sure that
#     the '[' is not proceeded by a '!' character, as that indicates an image.
#
# 'link_text'
#     Next there is the text of the link. This is what will appear in the
#     rendered HTML page
#
# ']('
#     The link text is closed with a square bracket. Immediately following
#     this a parenetheses, which indicates the start of the hyperlink
#
# 'hyperlink'
#     This is the URL of the link. For this purposes of this assignment
#     all links will start with either 'http://' or 'https://'.
#     The actualy rules regarding URLs are much more complex
#
#  ')'
#     Finally, the hyperlink is closed using a right parentheses
#
# For example, the following markdown links...
#
#     [Schedule](https://www.csee.umbc.edu/~bwilk1/433/index.html#schedule)
#     [UMBC's Homepage](http://umbc.edu)
#
# ...would get converted to the following HTML links
#
#     <a href="https://www.csee.umbc.edu/~bwilk1/433/index.html#schedule">Schedule</a>
#     <a href="http://umbc.edu">UMBC's Homepage</a>
#
#     The following should not be converted
#     ![A picture of UMBC](https://umbc.edu/picture.png)
#


while(<>) {
  s/(?<!\!)(\[(.*)]\((.*)\))/<a href="\3">\2<\/a>/;
  print;
}
