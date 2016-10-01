use strict;
use warnings;

use LWP::Simple;

sub main {
	
	print "Downloading ... \n";
	# print get("http://utja.sa.utoronto.ca/membership/");
	
	#Download the html page and save as membership.html
	getstore("http://utja.sa.utoronto.ca/membership/", "membership.html");
	
	#Single quotes treat the link as a string don't try to interpret any special characters
	my $code = getstore('http://utja.sa.utoronto.ca/files/2016/02/happy-new-year1-724x1024.png',"poster.png");
	
	#Checks return value of getstore, 200 means file is successfully downloaded
	if($code == 200){
		print "Success\n";
	}
	else{
		print "Failed\n";
	}
	print "Finished\n";
}

main();