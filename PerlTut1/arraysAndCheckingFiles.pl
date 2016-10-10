
use strict;
use warnings;

sub main{
	#-f means check if this file exist or not
	if(-f 'C:\tutorial\perl\projects\logo.png'){
		print "Found file\n";
	}
	else{
		print "File not found\n";
	}
}

main();