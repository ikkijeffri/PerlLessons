
use strict;
use warnings;

#this turns off output buffering, so our print statements gets executed immediately
$|=1;

sub main {

	#array starts with the @ sign
	my @files = (
		'/Users/ikkialjeffri/git/PerlLessons/PerlTut1/poster.png',
		'/Users/ikkialjeffri/git/PerlLessons/PerlTut1/membership.html',
		'/Users/ikkialjeffri/git/PerlLessons/PerlTut1/missing.txt',
	);
	
	foreach my $file (@files) {
		#-f means check if this file exist or not
		if ( -f $file ) {
			print "Found file: $file\n";
		}
		else {
			print "File not found $file\n";
		}
	}
	
}

main();
