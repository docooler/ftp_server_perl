#! /usr/bin/perl
package Cmdftp;
require Exporter;

our @ISA = qw (Exporter);
our @EXPORT = qw (init_cmd
				  cmd_handle
				  cmd_handle_table
				  @_default_commands);
our $VERSION = 1.00;


use strict;

# Global variables and constants.
use vars qw(@_default_commands
			%cmd_map
	       );

@_default_commands
  = (
     # Standard commands from RFC 959.
     "USER", "PASS", "ACCT", "CWD", "CDUP", "SMNT",
     "REIN", "QUIT", "PORT", "PASV", "TYPE", "STRU",
     "MODE", "RETR", "STOR", "STOU", "APPE", "ALLO",
     "REST", "RNFR", "RNTO", "ABOR", "DELE", "RMD",
     "MKD", "PWD", "LIST", "NLST", "SITE", "SYST",
     "STAT", "HELP", "NOOP",
     # RFC 1123 section 4.1.3.1 recommends implementing these.
     "XMKD", "XRMD", "XPWD", "XCUP", "XCWD",
     # From RFC 2389.
     "FEAT", "OPTS",
     # From ftpexts Internet Draft.
     "SIZE", "MDTM", "MLST", "MLSD",
     # Mail handling commands from obsolete RFC 765.
     "MLFL", "MAIL", "MSND", "MSOM", "MSAM", "MRSQ",
     "MRCP",
     # I18N support from RFC 2640.
     "LANG",
     # NcFTP sends the CLNT command, I know not from what RFC.
     "CLNT",
     # Experimental IP-less virtual hosting.
     "HOST",
    );

my %cmd_map ={};
sub init_cmd{
	
	foreach (@_default_commands) {
		my $require_param = "_${_}_require_param";
		my $require_auth  = "_${_}_require_auth";
		my $execute       = "_${_}_execute";
	    $cmd_map{$_} = {"require_param" =>\&$require_param,
						  "require_auth"  =>\&$require_auth,
						  "execute"       =>\&$execute
			             }; 
	    
    }
}

sub cmd_handle {
	my($session, $cmd, $param) = @_;
    my($com_obj) = \$cmd_map{$cmd};
    
    if ($cmd_obj{"require_auth"}->()) {
    	# body...TODO
    }

    if ($cmd_obj{"require_param"}->() && $param == undef) {
    	print "error : command ${cmd} need param\n";
    	return false;
    }

    if ($cmd_obj{"execute"}->($session, $param)) {
    	return true;
    } else {
    	return false;
    }
}




###########################################
#start command handler here
###########################################



#start USER command handler
#func: if USER command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _USER_require_parem {
     #TODO
     print "_USER_require_parem is called!";

} 

#func: auth wheather user could execute USER command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _USER_require_auth {
     #TODO
     print "_USER_require_auth is called!";

}

#func: execute USER command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _USER_execute {
     #TODO
     print "_USER_execute is called!" ;

}




#start PASS command handler
#func: if PASS command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _PASS_require_parem {
     #TODO
     print "_PASS_require_parem is called!";

} 

#func: auth wheather user could execute PASS command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _PASS_require_auth {
     #TODO
     print "_PASS_require_auth is called!";

}

#func: execute PASS command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _PASS_execute {
     #TODO
     print "_PASS_execute is called!" ;

}




#start ACCT command handler
#func: if ACCT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _ACCT_require_parem {
     #TODO
     print "_ACCT_require_parem is called!";

} 

#func: auth wheather user could execute ACCT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _ACCT_require_auth {
     #TODO
     print "_ACCT_require_auth is called!";

}

#func: execute ACCT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _ACCT_execute {
     #TODO
     print "_ACCT_execute is called!" ;

}




#start CWD command handler
#func: if CWD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _CWD_require_parem {
     #TODO
     print "_CWD_require_parem is called!";

} 

#func: auth wheather user could execute CWD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _CWD_require_auth {
     #TODO
     print "_CWD_require_auth is called!";

}

#func: execute CWD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _CWD_execute {
     #TODO
     print "_CWD_execute is called!" ;

}




#start CDUP command handler
#func: if CDUP command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _CDUP_require_parem {
     #TODO
     print "_CDUP_require_parem is called!";

} 

#func: auth wheather user could execute CDUP command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _CDUP_require_auth {
     #TODO
     print "_CDUP_require_auth is called!";

}

#func: execute CDUP command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _CDUP_execute {
     #TODO
     print "_CDUP_execute is called!" ;

}




#start SMNT command handler
#func: if SMNT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _SMNT_require_parem {
     #TODO
     print "_SMNT_require_parem is called!";

} 

#func: auth wheather user could execute SMNT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _SMNT_require_auth {
     #TODO
     print "_SMNT_require_auth is called!";

}

#func: execute SMNT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _SMNT_execute {
     #TODO
     print "_SMNT_execute is called!" ;

}




#start REIN command handler
#func: if REIN command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _REIN_require_parem {
     #TODO
     print "_REIN_require_parem is called!";

} 

#func: auth wheather user could execute REIN command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _REIN_require_auth {
     #TODO
     print "_REIN_require_auth is called!";

}

#func: execute REIN command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _REIN_execute {
     #TODO
     print "_REIN_execute is called!" ;

}




#start QUIT command handler
#func: if QUIT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _QUIT_require_parem {
     #TODO
     print "_QUIT_require_parem is called!";

} 

#func: auth wheather user could execute QUIT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _QUIT_require_auth {
     #TODO
     print "_QUIT_require_auth is called!";

}

#func: execute QUIT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _QUIT_execute {
     #TODO
     print "_QUIT_execute is called!" ;

}




#start PORT command handler
#func: if PORT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _PORT_require_parem {
     #TODO
     print "_PORT_require_parem is called!";

} 

#func: auth wheather user could execute PORT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _PORT_require_auth {
     #TODO
     print "_PORT_require_auth is called!";

}

#func: execute PORT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _PORT_execute {
     #TODO
     print "_PORT_execute is called!" ;

}




#start PASV command handler
#func: if PASV command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _PASV_require_parem {
     #TODO
     print "_PASV_require_parem is called!";

} 

#func: auth wheather user could execute PASV command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _PASV_require_auth {
     #TODO
     print "_PASV_require_auth is called!";

}

#func: execute PASV command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _PASV_execute {
     #TODO
     print "_PASV_execute is called!" ;

}




#start TYPE command handler
#func: if TYPE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _TYPE_require_parem {
     #TODO
     print "_TYPE_require_parem is called!";

} 

#func: auth wheather user could execute TYPE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _TYPE_require_auth {
     #TODO
     print "_TYPE_require_auth is called!";

}

#func: execute TYPE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _TYPE_execute {
     #TODO
     print "_TYPE_execute is called!" ;

}




#start STRU command handler
#func: if STRU command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _STRU_require_parem {
     #TODO
     print "_STRU_require_parem is called!";

} 

#func: auth wheather user could execute STRU command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _STRU_require_auth {
     #TODO
     print "_STRU_require_auth is called!";

}

#func: execute STRU command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _STRU_execute {
     #TODO
     print "_STRU_execute is called!" ;

}




#start MODE command handler
#func: if MODE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MODE_require_parem {
     #TODO
     print "_MODE_require_parem is called!";

} 

#func: auth wheather user could execute MODE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MODE_require_auth {
     #TODO
     print "_MODE_require_auth is called!";

}

#func: execute MODE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MODE_execute {
     #TODO
     print "_MODE_execute is called!" ;

}




#start RETR command handler
#func: if RETR command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _RETR_require_parem {
     #TODO
     print "_RETR_require_parem is called!";

} 

#func: auth wheather user could execute RETR command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _RETR_require_auth {
     #TODO
     print "_RETR_require_auth is called!";

}

#func: execute RETR command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _RETR_execute {
     #TODO
     print "_RETR_execute is called!" ;

}




#start STOR command handler
#func: if STOR command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _STOR_require_parem {
     #TODO
     print "_STOR_require_parem is called!";

} 

#func: auth wheather user could execute STOR command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _STOR_require_auth {
     #TODO
     print "_STOR_require_auth is called!";

}

#func: execute STOR command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _STOR_execute {
     #TODO
     print "_STOR_execute is called!" ;

}




#start STOU command handler
#func: if STOU command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _STOU_require_parem {
     #TODO
     print "_STOU_require_parem is called!";

} 

#func: auth wheather user could execute STOU command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _STOU_require_auth {
     #TODO
     print "_STOU_require_auth is called!";

}

#func: execute STOU command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _STOU_execute {
     #TODO
     print "_STOU_execute is called!" ;

}




#start APPE command handler
#func: if APPE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _APPE_require_parem {
     #TODO
     print "_APPE_require_parem is called!";

} 

#func: auth wheather user could execute APPE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _APPE_require_auth {
     #TODO
     print "_APPE_require_auth is called!";

}

#func: execute APPE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _APPE_execute {
     #TODO
     print "_APPE_execute is called!" ;

}




#start ALLO command handler
#func: if ALLO command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _ALLO_require_parem {
     #TODO
     print "_ALLO_require_parem is called!";

} 

#func: auth wheather user could execute ALLO command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _ALLO_require_auth {
     #TODO
     print "_ALLO_require_auth is called!";

}

#func: execute ALLO command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _ALLO_execute {
     #TODO
     print "_ALLO_execute is called!" ;

}




#start REST command handler
#func: if REST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _REST_require_parem {
     #TODO
     print "_REST_require_parem is called!";

} 

#func: auth wheather user could execute REST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _REST_require_auth {
     #TODO
     print "_REST_require_auth is called!";

}

#func: execute REST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _REST_execute {
     #TODO
     print "_REST_execute is called!" ;

}




#start RNFR command handler
#func: if RNFR command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _RNFR_require_parem {
     #TODO
     print "_RNFR_require_parem is called!";

} 

#func: auth wheather user could execute RNFR command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _RNFR_require_auth {
     #TODO
     print "_RNFR_require_auth is called!";

}

#func: execute RNFR command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _RNFR_execute {
     #TODO
     print "_RNFR_execute is called!" ;

}




#start RNTO command handler
#func: if RNTO command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _RNTO_require_parem {
     #TODO
     print "_RNTO_require_parem is called!";

} 

#func: auth wheather user could execute RNTO command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _RNTO_require_auth {
     #TODO
     print "_RNTO_require_auth is called!";

}

#func: execute RNTO command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _RNTO_execute {
     #TODO
     print "_RNTO_execute is called!" ;

}




#start ABOR command handler
#func: if ABOR command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _ABOR_require_parem {
     #TODO
     print "_ABOR_require_parem is called!";

} 

#func: auth wheather user could execute ABOR command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _ABOR_require_auth {
     #TODO
     print "_ABOR_require_auth is called!";

}

#func: execute ABOR command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _ABOR_execute {
     #TODO
     print "_ABOR_execute is called!" ;

}




#start DELE command handler
#func: if DELE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _DELE_require_parem {
     #TODO
     print "_DELE_require_parem is called!";

} 

#func: auth wheather user could execute DELE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _DELE_require_auth {
     #TODO
     print "_DELE_require_auth is called!";

}

#func: execute DELE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _DELE_execute {
     #TODO
     print "_DELE_execute is called!" ;

}




#start RMD command handler
#func: if RMD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _RMD_require_parem {
     #TODO
     print "_RMD_require_parem is called!";

} 

#func: auth wheather user could execute RMD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _RMD_require_auth {
     #TODO
     print "_RMD_require_auth is called!";

}

#func: execute RMD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _RMD_execute {
     #TODO
     print "_RMD_execute is called!" ;

}




#start MKD command handler
#func: if MKD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MKD_require_parem {
     #TODO
     print "_MKD_require_parem is called!";

} 

#func: auth wheather user could execute MKD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MKD_require_auth {
     #TODO
     print "_MKD_require_auth is called!";

}

#func: execute MKD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MKD_execute {
     #TODO
     print "_MKD_execute is called!" ;

}




#start PWD command handler
#func: if PWD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _PWD_require_parem {
     #TODO
     print "_PWD_require_parem is called!";

} 

#func: auth wheather user could execute PWD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _PWD_require_auth {
     #TODO
     print "_PWD_require_auth is called!";

}

#func: execute PWD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _PWD_execute {
     #TODO
     print "_PWD_execute is called!" ;

}




#start LIST command handler
#func: if LIST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _LIST_require_parem {
     #TODO
     print "_LIST_require_parem is called!";

} 

#func: auth wheather user could execute LIST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _LIST_require_auth {
     #TODO
     print "_LIST_require_auth is called!";

}

#func: execute LIST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _LIST_execute {
     #TODO
     print "_LIST_execute is called!" ;

}




#start NLST command handler
#func: if NLST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _NLST_require_parem {
     #TODO
     print "_NLST_require_parem is called!";

} 

#func: auth wheather user could execute NLST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _NLST_require_auth {
     #TODO
     print "_NLST_require_auth is called!";

}

#func: execute NLST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _NLST_execute {
     #TODO
     print "_NLST_execute is called!" ;

}




#start SITE command handler
#func: if SITE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _SITE_require_parem {
     #TODO
     print "_SITE_require_parem is called!";

} 

#func: auth wheather user could execute SITE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _SITE_require_auth {
     #TODO
     print "_SITE_require_auth is called!";

}

#func: execute SITE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _SITE_execute {
     #TODO
     print "_SITE_execute is called!" ;

}




#start SYST command handler
#func: if SYST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _SYST_require_parem {
     #TODO
     print "_SYST_require_parem is called!";

} 

#func: auth wheather user could execute SYST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _SYST_require_auth {
     #TODO
     print "_SYST_require_auth is called!";

}

#func: execute SYST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _SYST_execute {
     #TODO
     print "_SYST_execute is called!" ;

}




#start STAT command handler
#func: if STAT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _STAT_require_parem {
     #TODO
     print "_STAT_require_parem is called!";

} 

#func: auth wheather user could execute STAT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _STAT_require_auth {
     #TODO
     print "_STAT_require_auth is called!";

}

#func: execute STAT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _STAT_execute {
     #TODO
     print "_STAT_execute is called!" ;

}




#start HELP command handler
#func: if HELP command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _HELP_require_parem {
     #TODO
     print "_HELP_require_parem is called!";

} 

#func: auth wheather user could execute HELP command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _HELP_require_auth {
     #TODO
     print "_HELP_require_auth is called!";

}

#func: execute HELP command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _HELP_execute {
     #TODO
     print "_HELP_execute is called!" ;

}




#start NOOP command handler
#func: if NOOP command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _NOOP_require_parem {
     #TODO
     print "_NOOP_require_parem is called!";

} 

#func: auth wheather user could execute NOOP command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _NOOP_require_auth {
     #TODO
     print "_NOOP_require_auth is called!";

}

#func: execute NOOP command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _NOOP_execute {
     #TODO
     print "_NOOP_execute is called!" ;

}




#start XMKD command handler
#func: if XMKD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _XMKD_require_parem {
     #TODO
     print "_XMKD_require_parem is called!";

} 

#func: auth wheather user could execute XMKD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _XMKD_require_auth {
     #TODO
     print "_XMKD_require_auth is called!";

}

#func: execute XMKD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _XMKD_execute {
     #TODO
     print "_XMKD_execute is called!" ;

}




#start XRMD command handler
#func: if XRMD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _XRMD_require_parem {
     #TODO
     print "_XRMD_require_parem is called!";

} 

#func: auth wheather user could execute XRMD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _XRMD_require_auth {
     #TODO
     print "_XRMD_require_auth is called!";

}

#func: execute XRMD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _XRMD_execute {
     #TODO
     print "_XRMD_execute is called!" ;

}




#start XPWD command handler
#func: if XPWD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _XPWD_require_parem {
     #TODO
     print "_XPWD_require_parem is called!";

} 

#func: auth wheather user could execute XPWD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _XPWD_require_auth {
     #TODO
     print "_XPWD_require_auth is called!";

}

#func: execute XPWD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _XPWD_execute {
     #TODO
     print "_XPWD_execute is called!" ;

}




#start XCUP command handler
#func: if XCUP command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _XCUP_require_parem {
     #TODO
     print "_XCUP_require_parem is called!";

} 

#func: auth wheather user could execute XCUP command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _XCUP_require_auth {
     #TODO
     print "_XCUP_require_auth is called!";

}

#func: execute XCUP command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _XCUP_execute {
     #TODO
     print "_XCUP_execute is called!" ;

}




#start XCWD command handler
#func: if XCWD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _XCWD_require_parem {
     #TODO
     print "_XCWD_require_parem is called!";

} 

#func: auth wheather user could execute XCWD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _XCWD_require_auth {
     #TODO
     print "_XCWD_require_auth is called!";

}

#func: execute XCWD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _XCWD_execute {
     #TODO
     print "_XCWD_execute is called!" ;

}




#start FEAT command handler
#func: if FEAT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _FEAT_require_parem {
     #TODO
     print "_FEAT_require_parem is called!";

} 

#func: auth wheather user could execute FEAT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _FEAT_require_auth {
     #TODO
     print "_FEAT_require_auth is called!";

}

#func: execute FEAT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _FEAT_execute {
     #TODO
     print "_FEAT_execute is called!" ;

}




#start OPTS command handler
#func: if OPTS command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _OPTS_require_parem {
     #TODO
     print "_OPTS_require_parem is called!";

} 

#func: auth wheather user could execute OPTS command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _OPTS_require_auth {
     #TODO
     print "_OPTS_require_auth is called!";

}

#func: execute OPTS command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _OPTS_execute {
     #TODO
     print "_OPTS_execute is called!" ;

}




#start SIZE command handler
#func: if SIZE command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _SIZE_require_parem {
     #TODO
     print "_SIZE_require_parem is called!";

} 

#func: auth wheather user could execute SIZE command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _SIZE_require_auth {
     #TODO
     print "_SIZE_require_auth is called!";

}

#func: execute SIZE command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _SIZE_execute {
     #TODO
     print "_SIZE_execute is called!" ;

}




#start MDTM command handler
#func: if MDTM command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MDTM_require_parem {
     #TODO
     print "_MDTM_require_parem is called!";

} 

#func: auth wheather user could execute MDTM command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MDTM_require_auth {
     #TODO
     print "_MDTM_require_auth is called!";

}

#func: execute MDTM command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MDTM_execute {
     #TODO
     print "_MDTM_execute is called!" ;

}




#start MLST command handler
#func: if MLST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MLST_require_parem {
     #TODO
     print "_MLST_require_parem is called!";

} 

#func: auth wheather user could execute MLST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MLST_require_auth {
     #TODO
     print "_MLST_require_auth is called!";

}

#func: execute MLST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MLST_execute {
     #TODO
     print "_MLST_execute is called!" ;

}




#start MLSD command handler
#func: if MLSD command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MLSD_require_parem {
     #TODO
     print "_MLSD_require_parem is called!";

} 

#func: auth wheather user could execute MLSD command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MLSD_require_auth {
     #TODO
     print "_MLSD_require_auth is called!";

}

#func: execute MLSD command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MLSD_execute {
     #TODO
     print "_MLSD_execute is called!" ;

}




#start MLFL command handler
#func: if MLFL command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MLFL_require_parem {
     #TODO
     print "_MLFL_require_parem is called!";

} 

#func: auth wheather user could execute MLFL command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MLFL_require_auth {
     #TODO
     print "_MLFL_require_auth is called!";

}

#func: execute MLFL command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MLFL_execute {
     #TODO
     print "_MLFL_execute is called!" ;

}




#start MAIL command handler
#func: if MAIL command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MAIL_require_parem {
     #TODO
     print "_MAIL_require_parem is called!";

} 

#func: auth wheather user could execute MAIL command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MAIL_require_auth {
     #TODO
     print "_MAIL_require_auth is called!";

}

#func: execute MAIL command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MAIL_execute {
     #TODO
     print "_MAIL_execute is called!" ;

}




#start MSND command handler
#func: if MSND command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MSND_require_parem {
     #TODO
     print "_MSND_require_parem is called!";

} 

#func: auth wheather user could execute MSND command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MSND_require_auth {
     #TODO
     print "_MSND_require_auth is called!";

}

#func: execute MSND command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MSND_execute {
     #TODO
     print "_MSND_execute is called!" ;

}




#start MSOM command handler
#func: if MSOM command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MSOM_require_parem {
     #TODO
     print "_MSOM_require_parem is called!";

} 

#func: auth wheather user could execute MSOM command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MSOM_require_auth {
     #TODO
     print "_MSOM_require_auth is called!";

}

#func: execute MSOM command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MSOM_execute {
     #TODO
     print "_MSOM_execute is called!" ;

}




#start MSAM command handler
#func: if MSAM command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MSAM_require_parem {
     #TODO
     print "_MSAM_require_parem is called!";

} 

#func: auth wheather user could execute MSAM command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MSAM_require_auth {
     #TODO
     print "_MSAM_require_auth is called!";

}

#func: execute MSAM command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MSAM_execute {
     #TODO
     print "_MSAM_execute is called!" ;

}




#start MRSQ command handler
#func: if MRSQ command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MRSQ_require_parem {
     #TODO
     print "_MRSQ_require_parem is called!";

} 

#func: auth wheather user could execute MRSQ command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MRSQ_require_auth {
     #TODO
     print "_MRSQ_require_auth is called!";

}

#func: execute MRSQ command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MRSQ_execute {
     #TODO
     print "_MRSQ_execute is called!" ;

}




#start MRCP command handler
#func: if MRCP command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _MRCP_require_parem {
     #TODO
     print "_MRCP_require_parem is called!";

} 

#func: auth wheather user could execute MRCP command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _MRCP_require_auth {
     #TODO
     print "_MRCP_require_auth is called!";

}

#func: execute MRCP command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _MRCP_execute {
     #TODO
     print "_MRCP_execute is called!" ;

}




#start LANG command handler
#func: if LANG command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _LANG_require_parem {
     #TODO
     print "_LANG_require_parem is called!";

} 

#func: auth wheather user could execute LANG command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _LANG_require_auth {
     #TODO
     print "_LANG_require_auth is called!";

}

#func: execute LANG command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _LANG_execute {
     #TODO
     print "_LANG_execute is called!" ;

}




#start CLNT command handler
#func: if CLNT command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _CLNT_require_parem {
     #TODO
     print "_CLNT_require_parem is called!";

} 

#func: auth wheather user could execute CLNT command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _CLNT_require_auth {
     #TODO
     print "_CLNT_require_auth is called!";

}

#func: execute CLNT command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _CLNT_execute {
     #TODO
     print "_CLNT_execute is called!" ;

}




#start HOST command handler
#func: if HOST command need param
#input: none
#output: 
#        true  :need param
#        false :no need param
sub _HOST_require_parem {
     #TODO
     print "_HOST_require_parem is called!";

} 

#func: auth wheather user could execute HOST command
#input: none
#output:
#        true  :auth pass 
#        false :auth failed
sub _HOST_require_auth {
     #TODO
     print "_HOST_require_auth is called!";

}

#func: execute HOST command
#input: ftp_session 
#       param string 
#output:
#        true  :execute pass 
#        false :execute failed
sub _HOST_execute {
     #TODO
     print "_HOST_execute is called!" ;

}



1;