#!/usr/bin/perl

# Match lines of git log --stat --pretty=oneline that indicate files with only additions or only deletions
#
# The lines you are interested in have the format:
#
#     FileName | NUM_LINES CHANGE_TYPES
#
# Where...
#
# CHANGE_TYPES is entirely +'s or entierly -'s
#
# For example:
# 'data/airports.tsv | 1284 +++++++++++++++++++++++++++++++++++++++++++++++++++++' matches
# 'binder/postBuild | 1 -' matches
# 'Lecture02.ipynb | 1208 ++++++++++++++++++++++---------------------------------' does not match
# '008f60c4d3b904d37bdcaf49d654656cb2fab6bf Making sure airport data is there' does not match
# '1 file changed, 2 insertions(+)' does not match'

while(<>) {
  # print if /\| [0-9]+ \+\s?$/;
  print if /\| [0-9]+ ((\++\s*$)|(-+\s*$))/;
}
