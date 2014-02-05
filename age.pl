#!C:\Perl\bin\perl.exe -w 
#---------------------------------------------------
#
# PROGRAM	: age.pl
#
# AUTHOR	: Somanath Wagh
#---------------------------------------------------
# DESCRIPTION	: To Calculate the age of the person
#___________________________________________________
#


use strict;
use agecalc; 

print "Enter your Date Of Birth: \n";
my $in = <>;
my $cal_age = agecalc::age_cal($in);  

print $cal_age;



sleep 6;

print "\nThanks for using Age Calculator!\n"
#my $no = 2.431;
#print int($no);