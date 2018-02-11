#!/usr/bin/perl

# Match foods that are sold in the United States, contain over 1 unit  of vitamin C, and
# whose information was updated in 2016 or 2017
#
# For example:
#  'Tomato Paste    03/09/2017      US      33 g (2 Tbsp)   6.1     6.06    21.21   12.12   363.6   14.5    0.0     0.0     45.0    61.0' matches
# 'Reese minis     12/23/2016      Canada  0.0     0.0     0.0     0.0     0.0     0.0     0.0     0.0     0.0     0.0     0.0' does not match
# 'Tootie Fruities 03/09/2017      United States   1 cup (32g)     3.12    6.25    87.5    46.9    469.0   18.7    12.5    0.0     469.0   312.0' matches
# '100% pure orange juice with calcium &amp; vitamin D 08/09/2015      United States   8 fl. oz (240 mL)       0.0     0.833   10.8    9.17    0.0     30.0    4.17    0.0     188.0   146.0' does not match

#

while(<>) {
  print if /(2016|2017)\t(US|United States)(\t[^\t]+){7}[^0]/;
}

