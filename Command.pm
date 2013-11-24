#! /usr/bin/perl
package Command

use strict;

# Global variables and constants.
use vars qw(@_default_commands
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

sub init_cmd{
	%cmd_map ={};
	foreach (@_default_commands) {
		my $require_param = "_${_}_require_param";
		my $require_auth  = "_${_}_require_auth";
		my $execute       = "_${_}_execute";
		my %cmd_handle = ("require_param" =>\&$require_param,
						  "require_auth"  =>\&$require_auth,
						  "execute"       =>\&$execute
			             ); 

		$cmd_map{$_} = cmd_handle;
    }
}
