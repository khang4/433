#!/usr/bin/perl

# Convert each line in the CSV into an JSON-like structure as shown below:
#
# {
#         name: "STATE_NAME",
#         year_joined: "YEAR",
#         area: "AREA",
#         governor: "GOVERNOR_NAME"
# }
#
# For example, the following line...
#
#     'Maryland,04/28/1788,MD,Annpolis,-76.7,39.0,Larry Hogan, 32133, 2--752,America/New York,https://www.maryland.gov,Henrietta Maria of France'
#
# ...would be reported as...
#
#     '{[NEWLINE][TAB]name: "Maryland",[NEWLINE][TAB],year_joined: "1788",[NEWLINE][TAB]area: "32133",[NEWLINE][TAB]governor: "Larry Hogan"[NEWLINE]}'
#
# ...where [NEWLINE] is literally a newline character and [TAB] is literally a
# tab character.

while(<>) {
  print if s/REGEX/REPLACE/;
}
