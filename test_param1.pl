
use strict;

print "-" x 60;
print "\nstart func_test_case_1\n";
my %opt =(ratType => 1,
          deviceId => 2);

sub func_test_case_1 {
	my $param = shift(@_);
	my $msg    = shift(@_);
	
	print "call func\n";

	foreach (keys %$param) {
		print $_." is ". $$param{$_}."\n";
	} 
    print "\n";
	print $msg."\n";
}

func_test_case_1(\%opt, "hello case1");
func_test_case_1(1, "bad test 1");
print "\nEnd func_test_case_1\n";
print "-" x 60;

print "-" x 60;
print "\nstart func_test_case_2\n";
my %opt =(ratType => 1,
          deviceId => 2);

sub func_test_case_2 {
	my $param = shift(@_);
	my $msg    = shift(@_);
	
	print "call func\n";
    if (defined $$param{"ratType"}) {
    	print "ratType is " .$$param{"ratType"}. "\n";
    }

    if (defined $$param{"deviceId"}) {
    	print "deviceId is " .$$param{"deviceId"}."\n";
    }


    print "\n";
	print $msg."\n";
}

func_test_case_2(\%opt, "hello case2");
func_test_case_2(1, "bad test2");
print "\nEnd func_test_case_2\n";
print "-" x 60;
