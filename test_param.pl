
#use strict;

my %opt =(ratType => 1,
          deviceId => 2);


foreach (sort keys%opt) {
	print $_." ";
} 
print "\n" ;

sub function_name {
	my ($param, $msg) = @_;
	
	print "call func\n";

	foreach (keys %$param) {
		print $_." ";
	} 
    print "\nmsg is :\n";
	print $msg."\n";
}

function_name(%opt, "hello");