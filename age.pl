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


#use strict;
use agecalc; 

#print "Age Calculator\n";
#print "Enter your Date Of Birth: \n";

print "Experience Calculator\n";
print "Enter your Date Of Joining: \n";

my $in = <>;
my $duration = agecalc::age_cal($in);  

print "You have experience of $duration\n";

#print "Your age is $duration\n";


sleep 6;

print "\nThanks for using Experience Calculator!\n"
#print "\nThanks for using Age Calculator!\n"
#my $no = 2.431;
#print int($no);