#!C:\Perl\bin\perl.exe -w 
#---------------------------------------------------
#
# PROGRAM	: age.pl
#
# AUTHOR	: Somanath Wagh
#---------------------------------------------------
# DESCRIPTION	: To Calculate the age of the person
#               or experience of employee
#___________________________________________________
#


use strict;
use agecalc; 

print "Experience Calculator\n";
print "Enter your Date Of Joining: \n";

my $in = <>;
my $duration = agecalc::age_cal($in);  

print "You have experience of $duration\n";

sleep 6;

print "\nThanks for using Experience Calculator!\n"

