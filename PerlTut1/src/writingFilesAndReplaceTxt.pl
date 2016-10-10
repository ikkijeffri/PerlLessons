use strict;
use warnings;

$|=1;

sub main(){
	
	my $input = '/Users/ikkialjeffri/git/PerlLessons/PerlTut1/resources/mymanjeeves.txt';
	open(INPUT, $input) or die ("Input file $input not found.\n");
	
	my $output = '>/Users/ikkialjeffri/git/PerlLessons/PerlTut1/resources/output.txt';
	
	#'>'.$output -> the . is how you tell perl to concatenate strings
	open(OUTPUT, '>'.$output) or die "Can't create $output.\n";
	
	while(my $line = <INPUT>){
		
		
		#\b -> word boundary
		if($line =~ /\begg\b/) {
			#The following line replaces every instance of you with YOU
			$line =~ s/hen/dinosaur/ig;
			
			#Print the resulting line to an output file
			print OUTPUT $line;
		}
		
	}
	
	close(INPUT);
	close(OUTPUT)
}

main();