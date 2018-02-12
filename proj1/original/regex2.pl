ne if it contains a relative time expression expressed in any combination 
# of minutes, hours, days, and years.
#
# Note: 1 of any unit should not use the plural form of the unit.
# 	The combination of units should be in logical order
#
# For example:
#
#     "5 years ago" matches
#     "5 minutes from now" matches
#     "1 day 5 minutes ago" matches
#     "5 minutes 1 day ago" does not match
#     "from now 5 minutes" does not match
#     "10 seconds ago" does not match
#     "a day ago" does not match
#

while (<>) {
  print if /REGEX/;
}
