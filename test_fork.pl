use strict;
use IPC::SysV qw(IPC_PRIVATE S_IRUSR S_IWUSR IPC_CREAT IPC_EXCL SEM_UNDO);  
use IPC::Semaphore;  

my $sem;  
if ($sem=IPC::Semaphore->new("CONFIG_SEM",1,  
            S_IRUSR | S_IWUSR | IPC_CREAT | IPC_EXCL)) {  # 能创建，说明‘1234’是第一次创建  
    $sem->setall(0);                             # 初始化所有信号灯为1  
} else {                                                  # 不能创建，说明‘1234’已存在  
    $sem=IPC::Semaphore->new("CONFIG_SEM",1,                     # 获得‘1234’信号灯集  
            S_IRUSR | S_IWUSR | IPC_CREAT);  
}  

#查看所有信号灯的值  
my $semnum=$sem->getall;  

print $semnum;
print "\n";



sub notify_start_lmc {
	# V操作  
	$sem->op(0, 1, SEM_UNDO,
		);  
}
sub wait_lmc_start {
	# body...
	# P操作  
	$sem->op(  
    0, -1, SEM_UNDO,
	);  
}

sub load_lmc_prcoess {
	#init load_lmc
	print "init load lmc\n";
	#start loading
	sleep(2);
	print "start loading\n";
	notify_start_lmc();
	sleep(3);
    #end loading
    print "end load lmc\n";
}

sub config_carrier_process {
	# init config radio
	sleep(1);
	print "init config radio\n";
	#wait for load lmc start msg
    wait_lmc_start();
	#start config
	print "start config radio\n";
	sleep(1);
	print "end config radio\n";
}

sub test_case {
	my $pid = fork();

	if ($pid) {
		# this is parent process
		config_carrier_process();

	}else{
		load_lmc_prcoess();
		exit();
	}

	waitpid($pid,0);
	$sem->remove;  
    print "test_case end\n";
}

test_case();

