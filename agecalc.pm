use strict;

# NEW SCRIPT DEVELOPED FOR CALCULATING AGE
#
##################################################################
# MODULE NAME    : agecalc.pm
#
#  VERSION         : 1
#
#  PURPOSE         : To Calculate Age, Display Current Date
#
#  AUTHOR          : Somanath Wagh
##################################################################


package agecalc;

#To Calculate Age
sub age_cal($){
	my $dob = shift;
	my $time = scalar localtime; #System Date and Time
	my $age;
	my $day; 
	my $month;
	my $date ;
	my $clock;
	my $year ;
	my($ddate,$dmonth,$dyear);
	my($cal_day,$cal_month,$cal_year);
	my %month_d=(Jan=>1,Feb=>2,Mar=>3,Apr=>4,May=>5,Jun=>6,Jul=>7,Aug=>8,Sep=>9,Oct=>10,Nov=>11,Dec=>12);
	
	#For System Date
	if ($time =~ /(\w+)\s(\w+)\s*(\d+)\s(\S+)\s(\d+)/ ) 
	{	  		
				$day = $1;
				$month = $month_d{$2};
				$date = $3;
				$clock = $4;
				$year = $5;
			  	#print "Date is $3 $2 $5($1)\nTime is $4\n";
	}
		#For the DOB of user
		if($dob =~ /(\d+)[\-|\/](\d+)[\-|\/](\d+)/)
		{
				($ddate,$dmonth,$dyear)=($1,$2,$3);
				#print "$1,$2,$3\n";
				
				if($ddate>$date){
					$month--;		#Borrowing a month(i.e. 30 days) from $month
					$date += 30;
				}
				my $cal_day = $date-$ddate;
				
				if($dmonth>$month){
					$year--;		#Borrowing a year(i.e. 12 months) from $year
					$month += 12;
				}
				my $cal_month = $month-$dmonth;
				
				if($dyear>$year){
					#This block executed only if input year is greater than current year
					print  "Are you really calculating your age? Seems you will born in future!\n";	
				}
				my $cal_year = $year-$dyear; 
				#print"OK";
				
				return "$cal_year years $cal_month months $cal_day days\n";
				
		}
		else
		{ return "Enter the date in correct format";}
	
	
}

#Display Current Date
sub timeprint {
	my $time = scalar localtime;

	#my $time = shift;

	$time =~ s{(\w+)\s(\w+)\s(\d+)\s(\S+)\s(\d+)}
			  {
			  	my $day = $1;
			  	my $month = $2;
			  	my $date = $3;
			  	my $clock = $4;
			  	my $year = $5;
			  	
			  	return "Date is $day, $date $month $year\nTime in HH:MM:SS: format- $clock\n";
			  	
			  	#return "Time in HH:MM:SS: format- $clock\n";
			  	
			  }sgixe

}

#Display Current Date
sub tmpr {
	
	my $time = scalar localtime;

	#my $time = shift;

	if ( $time =~ /(\w+)\s(\w+)\s(\d+)\s(\S+)\s(\d+)/ ) {
		
		return "Date is $3 $2 $5($1)\nTime is $4\n";
	}

}

1
