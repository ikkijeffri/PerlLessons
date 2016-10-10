use strict;
use warnings;

$|=1;

sub main {
		my $file = '/Users/ikkialjeffri/git/PerlLessons/PerlTut1/resources/mymanjeeves.txt';
		
		#Convention: File handle is typed in UPPERCASE
		#If you run die without a newline,it tells you which line in the program it dies
		#The following line is a boolean login, second statement gets evaluated if the first is false
		open(INPUT, $file) or die ("Input file $file not found.\n");
		
		#Read one line of a file and return it into line
		#While loop makes this run until there is not line to be read
		while(my $line = <INPUT>){
			if($line =~ / egg /) {
				print $line;
			}
			
		}
				
		close(INPUT);
}

main();