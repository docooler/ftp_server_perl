#! /usr/bin/perl
#auto create command handler func.
use strict;
package main;

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

sub create_require_param_func {
     my($cmd_file) = shift;
     my($cmd) = @_;

     print $cmd_file "\n\n\n";
     print $cmd_file "#start ${cmd} command handler\n";
     print $cmd_file "sub _${cmd}_require_parem {
     #TODO
} \n\n"
}

sub create_require_auth_func {
     my($cmd_file) = shift;
     my($cmd) = @_;
     print $cmd_file "sub _${cmd}_require_auth {
     #TODO
}\n\n"
}

sub create_execute_func {
     my($cmd_file) = shift;
     my($cmd) = @_;
     print $cmd_file "sub _${cmd}_execute {
     #TODO
}\n\n"
}

sub create_cmd {
     create_require_param_func(@_);
     create_require_auth_func(@_);
     create_execute_func(@_);
}

sub main {
     open(CMD_FILE, ">:utf8", "command_init.pl");
     print CMD_FILE "#this is file is auto create by cmd_file_create.pl
#at first we have a lot of command need to support 
#but all the funcs looks like same. so we could create
#it by a perl scretp\n";

     my($file_hd) = \*CMD_FILE;

     foreach (@_default_commands) {
          create_cmd($file_hd, $_);
     }
     close(CMD_FILE);
}

main();
  