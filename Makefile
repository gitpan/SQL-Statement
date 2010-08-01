# This Makefile is for the SQL::Statement extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.5601 (Revision: 65601) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[lib/SQL/Statement.pm]
#     AUTHOR => q[Jeff Zucker <jeff@vpservices.com>, Jens Rehsack <rehsack@cpan.org>]
#     BUILD_REQUIRES => { DBI::DBD::SqlEngine=>q[0.01], Test::Simple=>q[0.90], DBD::File=>q[0.39] }
#     LICENSE => q[perl]
#     META_MERGE => { resources=>{ repository=>q[https://svn.perl.org/modules/SQL-Statement/trunk/], MailingList=>q[mailto:dbi-dev@perl.org], license=>q[http://dev.perl.org/licenses/] } }
#     MIN_PERL_VERSION => q[5.008]
#     NAME => q[SQL::Statement]
#     PREREQ_PM => { Scalar::Util=>q[1.0], DBI::DBD::SqlEngine=>q[0.01], Data::Dumper=>q[0], Test::Simple=>q[0.90], Carp=>q[0], Params::Util=>q[1.00], Clone=>q[0.30], DBD::File=>q[0.39] }
#     VERSION_FROM => q[lib/SQL/Statement.pm]
#     dist => { DIST_DEFAULT=>q[manifest tardist], COMPRESS=>q[gzip -9vf], SUFFIX=>q[.gz] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/local/perl-5.13.3/lib/5.13.3/amd64-netbsd-thread-multi/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS = -DPIC -fPIC 
CCDLFLAGS = -Wl,-E 
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = --whole-archive -shared  -L/usr/pkg/lib -fstack-protector
LDFLAGS =  -Wl,-rpath,/usr/pkg/lib -Wl,-rpath,/usr/local/lib -fstack-protector -L/usr/pkg/lib
LIBC = /lib/libc.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = netbsd
OSVERS = 5.99.38
RANLIB = :
SITELIBEXP = /usr/local/perl-5.13.3/lib/site_perl/5.13.3
SITEARCHEXP = /usr/local/perl-5.13.3/lib/site_perl/5.13.3/amd64-netbsd-thread-multi
SO = so
VENDORARCHEXP = 
VENDORLIBEXP = 


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = SQL::Statement
NAME_SYM = SQL_Statement
VERSION = 1.29
VERSION_MACRO = VERSION
VERSION_SYM = 1_29
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.29
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr/local/perl-5.13.3
SITEPREFIX = /usr/local/perl-5.13.3
VENDORPREFIX = 
INSTALLPRIVLIB = /usr/local/perl-5.13.3/lib/5.13.3
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/local/perl-5.13.3/lib/site_perl/5.13.3
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = 
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/local/perl-5.13.3/lib/5.13.3/amd64-netbsd-thread-multi
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/local/perl-5.13.3/lib/site_perl/5.13.3/amd64-netbsd-thread-multi
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = 
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/local/perl-5.13.3/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/perl-5.13.3/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = 
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/local/perl-5.13.3/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/perl-5.13.3/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = 
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/local/perl-5.13.3/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/perl-5.13.3/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = 
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/local/perl-5.13.3/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/perl-5.13.3/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = 
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/local/perl-5.13.3/lib/5.13.3
PERL_ARCHLIB = /usr/local/perl-5.13.3/lib/5.13.3/amd64-netbsd-thread-multi
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/local/perl-5.13.3/lib/5.13.3/amd64-netbsd-thread-multi/CORE
PERL = /usr/local/perl-5.13.3/bin/perl5.13.3
FULLPERL = /usr/local/perl-5.13.3/bin/perl5.13.3
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/local/perl-5.13.3/lib/5.13.3/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.5601
MM_REVISION = 65601

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = SQL/Statement
BASEEXT = Statement
PARENT_NAME = SQL
DLBASE = $(BASEEXT)
VERSION_FROM = lib/SQL/Statement.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/SQL/Dialects/ANSI.pm \
	lib/SQL/Dialects/AnyData.pm \
	lib/SQL/Dialects/CSV.pm \
	lib/SQL/Dialects/Role.pm \
	lib/SQL/Eval.pm \
	lib/SQL/Parser.pm \
	lib/SQL/Statement.pm \
	lib/SQL/Statement/Embed.pod \
	lib/SQL/Statement/Function.pm \
	lib/SQL/Statement/Functions.pm \
	lib/SQL/Statement/GetInfo.pm \
	lib/SQL/Statement/Operation.pm \
	lib/SQL/Statement/Placeholder.pm \
	lib/SQL/Statement/RAM.pm \
	lib/SQL/Statement/Roadmap.pod \
	lib/SQL/Statement/Structure.pod \
	lib/SQL/Statement/Syntax.pod \
	lib/SQL/Statement/Term.pm \
	lib/SQL/Statement/TermFactory.pm \
	lib/SQL/Statement/Util.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/SQL
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/SQL

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/SQL/Dialects/ANSI.pm \
	lib/SQL/Dialects/AnyData.pm \
	lib/SQL/Dialects/CSV.pm \
	lib/SQL/Dialects/Role.pm \
	lib/SQL/Eval.pm \
	lib/SQL/Parser.pm \
	lib/SQL/Statement.pm \
	lib/SQL/Statement/Embed.pod \
	lib/SQL/Statement/Function.pm \
	lib/SQL/Statement/Functions.pm \
	lib/SQL/Statement/GetInfo.pm \
	lib/SQL/Statement/Operation.pm \
	lib/SQL/Statement/Placeholder.pm \
	lib/SQL/Statement/RAM.pm \
	lib/SQL/Statement/Roadmap.pod \
	lib/SQL/Statement/Structure.pod \
	lib/SQL/Statement/Syntax.pod \
	lib/SQL/Statement/Term.pm \
	lib/SQL/Statement/TermFactory.pm \
	lib/SQL/Statement/Util.pm

PM_TO_BLIB = lib/SQL/Dialects/ANSI.pm \
	blib/lib/SQL/Dialects/ANSI.pm \
	lib/SQL/Statement/TermFactory.pm \
	blib/lib/SQL/Statement/TermFactory.pm \
	lib/SQL/Parser.pm \
	blib/lib/SQL/Parser.pm \
	lib/SQL/Statement/Util.pm \
	blib/lib/SQL/Statement/Util.pm \
	lib/SQL/Statement/GetInfo.pm \
	blib/lib/SQL/Statement/GetInfo.pm \
	lib/SQL/Statement/Structure.pod \
	blib/lib/SQL/Statement/Structure.pod \
	lib/SQL/Statement/Term.pm \
	blib/lib/SQL/Statement/Term.pm \
	lib/SQL/Statement/Syntax.pod \
	blib/lib/SQL/Statement/Syntax.pod \
	lib/SQL/Dialects/Role.pm \
	blib/lib/SQL/Dialects/Role.pm \
	lib/SQL/Dialects/AnyData.pm \
	blib/lib/SQL/Dialects/AnyData.pm \
	lib/SQL/Statement/RAM.pm \
	blib/lib/SQL/Statement/RAM.pm \
	lib/SQL/Statement/Embed.pod \
	blib/lib/SQL/Statement/Embed.pod \
	lib/SQL/Statement/Placeholder.pm \
	blib/lib/SQL/Statement/Placeholder.pm \
	lib/SQL/Statement.pm \
	blib/lib/SQL/Statement.pm \
	lib/SQL/Dialects/CSV.pm \
	blib/lib/SQL/Dialects/CSV.pm \
	lib/SQL/Statement/Operation.pm \
	blib/lib/SQL/Statement/Operation.pm \
	lib/SQL/Eval.pm \
	blib/lib/SQL/Eval.pm \
	lib/SQL/Statement/Roadmap.pod \
	blib/lib/SQL/Statement/Roadmap.pod \
	lib/SQL/Statement/Functions.pm \
	blib/lib/SQL/Statement/Functions.pm \
	lib/SQL/Statement/Function.pm \
	blib/lib/SQL/Statement/Function.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.5601
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip -9vf
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = manifest tardist
DISTNAME = SQL-Statement
DISTVNAME = SQL-Statement-1.29


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/SQL/Dialects/ANSI.pm \
	lib/SQL/Statement/TermFactory.pm \
	lib/SQL/Parser.pm \
	lib/SQL/Statement/Util.pm \
	lib/SQL/Statement/GetInfo.pm \
	lib/SQL/Statement/Structure.pod \
	lib/SQL/Statement/Term.pm \
	lib/SQL/Statement/Syntax.pod \
	lib/SQL/Dialects/Role.pm \
	lib/SQL/Dialects/AnyData.pm \
	lib/SQL/Statement/RAM.pm \
	lib/SQL/Statement/Embed.pod \
	lib/SQL/Statement/Placeholder.pm \
	lib/SQL/Statement.pm \
	lib/SQL/Dialects/CSV.pm \
	lib/SQL/Statement/Operation.pm \
	lib/SQL/Eval.pm \
	lib/SQL/Statement/Roadmap.pod \
	lib/SQL/Statement/Functions.pm \
	lib/SQL/Statement/Function.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/SQL/Dialects/ANSI.pm $(INST_MAN3DIR)/SQL::Dialects::ANSI.$(MAN3EXT) \
	  lib/SQL/Statement/TermFactory.pm $(INST_MAN3DIR)/SQL::Statement::TermFactory.$(MAN3EXT) \
	  lib/SQL/Parser.pm $(INST_MAN3DIR)/SQL::Parser.$(MAN3EXT) \
	  lib/SQL/Statement/Util.pm $(INST_MAN3DIR)/SQL::Statement::Util.$(MAN3EXT) \
	  lib/SQL/Statement/GetInfo.pm $(INST_MAN3DIR)/SQL::Statement::GetInfo.$(MAN3EXT) \
	  lib/SQL/Statement/Structure.pod $(INST_MAN3DIR)/SQL::Statement::Structure.$(MAN3EXT) \
	  lib/SQL/Statement/Term.pm $(INST_MAN3DIR)/SQL::Statement::Term.$(MAN3EXT) \
	  lib/SQL/Statement/Syntax.pod $(INST_MAN3DIR)/SQL::Statement::Syntax.$(MAN3EXT) \
	  lib/SQL/Dialects/Role.pm $(INST_MAN3DIR)/SQL::Dialects::Role.$(MAN3EXT) \
	  lib/SQL/Dialects/AnyData.pm $(INST_MAN3DIR)/SQL::Dialects::AnyData.$(MAN3EXT) \
	  lib/SQL/Statement/RAM.pm $(INST_MAN3DIR)/SQL::Statement::RAM.$(MAN3EXT) \
	  lib/SQL/Statement/Embed.pod $(INST_MAN3DIR)/SQL::Statement::Embed.$(MAN3EXT) \
	  lib/SQL/Statement/Placeholder.pm $(INST_MAN3DIR)/SQL::Statement::Placeholder.$(MAN3EXT) \
	  lib/SQL/Statement.pm $(INST_MAN3DIR)/SQL::Statement.$(MAN3EXT) \
	  lib/SQL/Dialects/CSV.pm $(INST_MAN3DIR)/SQL::Dialects::CSV.$(MAN3EXT) \
	  lib/SQL/Statement/Operation.pm $(INST_MAN3DIR)/SQL::Statement::Operation.$(MAN3EXT) \
	  lib/SQL/Eval.pm $(INST_MAN3DIR)/SQL::Eval.$(MAN3EXT) \
	  lib/SQL/Statement/Roadmap.pod $(INST_MAN3DIR)/SQL::Statement::Roadmap.$(MAN3EXT) \
	  lib/SQL/Statement/Functions.pm $(INST_MAN3DIR)/SQL::Statement::Functions.$(MAN3EXT) \
	  lib/SQL/Statement/Function.pm $(INST_MAN3DIR)/SQL::Statement::Function.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  perl $(BASEEXT).def \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '--- #YAML:1.0' > META_new.yml
	$(NOECHO) $(ECHO) 'name:               SQL-Statement' >> META_new.yml
	$(NOECHO) $(ECHO) 'version:            1.29' >> META_new.yml
	$(NOECHO) $(ECHO) 'abstract:           SQL parsing and processing engine' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - Jeff Zucker <jeff@vpservices.com>, Jens Rehsack <rehsack@cpan.org>' >> META_new.yml
	$(NOECHO) $(ECHO) 'license:            perl' >> META_new.yml
	$(NOECHO) $(ECHO) 'distribution_type:  module' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    ExtUtils::MakeMaker:  0' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    DBD::File:            0.39' >> META_new.yml
	$(NOECHO) $(ECHO) '    DBI::DBD::SqlEngine:  0.01' >> META_new.yml
	$(NOECHO) $(ECHO) '    Test::Simple:         0.90' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    Carp:          0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Clone:         0.30' >> META_new.yml
	$(NOECHO) $(ECHO) '    Data::Dumper:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Params::Util:  1.00' >> META_new.yml
	$(NOECHO) $(ECHO) '    perl:          5.008' >> META_new.yml
	$(NOECHO) $(ECHO) '    Scalar::Util:  1.0' >> META_new.yml
	$(NOECHO) $(ECHO) 'resources:' >> META_new.yml
	$(NOECHO) $(ECHO) '    license:      http://dev.perl.org/licenses/' >> META_new.yml
	$(NOECHO) $(ECHO) '    MailingList:  mailto:dbi-dev@perl.org' >> META_new.yml
	$(NOECHO) $(ECHO) '    repository:   https://svn.perl.org/modules/SQL-Statement/trunk/' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '    directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '        - t' >> META_new.yml
	$(NOECHO) $(ECHO) '        - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by:       ExtUtils::MakeMaker version 6.5601' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '    url:      http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '    version:  1.4' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/local/perl-5.13.3/bin/perl5.13.3

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="1.29">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>SQL parsing and processing engine</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Jeff Zucker &lt;jeff@vpservices.com&gt;, Jens Rehsack &lt;rehsack@cpan.org&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,008,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Carp::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Clone::" VERSION="0.3" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Data::Dumper" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Params::Util" VERSION="1" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Scalar::Util" VERSION="1" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="amd64-netbsd-thread-multi-5.13" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/SQL/Dialects/ANSI.pm blib/lib/SQL/Dialects/ANSI.pm \
	  lib/SQL/Statement/TermFactory.pm blib/lib/SQL/Statement/TermFactory.pm \
	  lib/SQL/Parser.pm blib/lib/SQL/Parser.pm \
	  lib/SQL/Statement/Util.pm blib/lib/SQL/Statement/Util.pm \
	  lib/SQL/Statement/GetInfo.pm blib/lib/SQL/Statement/GetInfo.pm \
	  lib/SQL/Statement/Structure.pod blib/lib/SQL/Statement/Structure.pod \
	  lib/SQL/Statement/Term.pm blib/lib/SQL/Statement/Term.pm \
	  lib/SQL/Statement/Syntax.pod blib/lib/SQL/Statement/Syntax.pod \
	  lib/SQL/Dialects/Role.pm blib/lib/SQL/Dialects/Role.pm \
	  lib/SQL/Dialects/AnyData.pm blib/lib/SQL/Dialects/AnyData.pm \
	  lib/SQL/Statement/RAM.pm blib/lib/SQL/Statement/RAM.pm \
	  lib/SQL/Statement/Embed.pod blib/lib/SQL/Statement/Embed.pod \
	  lib/SQL/Statement/Placeholder.pm blib/lib/SQL/Statement/Placeholder.pm \
	  lib/SQL/Statement.pm blib/lib/SQL/Statement.pm \
	  lib/SQL/Dialects/CSV.pm blib/lib/SQL/Dialects/CSV.pm \
	  lib/SQL/Statement/Operation.pm blib/lib/SQL/Statement/Operation.pm \
	  lib/SQL/Eval.pm blib/lib/SQL/Eval.pm \
	  lib/SQL/Statement/Roadmap.pod blib/lib/SQL/Statement/Roadmap.pod \
	  lib/SQL/Statement/Functions.pm blib/lib/SQL/Statement/Functions.pm \
	  lib/SQL/Statement/Function.pm blib/lib/SQL/Statement/Function.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.