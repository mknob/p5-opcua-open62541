# This file has been generated by
# script/constant-define.pl WRITEMASK constants

package OPCUA::Open62541::WRITEMASK;

use 5.015004;
use strict;
use warnings;
use Carp;

our $VERSION = '0.006';

BEGIN {
    my $class = 'WRITEMASK';

    # Even if we declare more than 10k constants, this is a fast way to do it.
    my $consts = <<'EOCONST';
ACCESSLEVEL 1
ARRRAYDIMENSIONS 2
BROWSENAME 4
CONTAINSNOLOOPS 8
DATATYPE 16
DESCRIPTION 32
DISPLAYNAME 64
EVENTNOTIFIER 128
EXECUTABLE 256
HISTORIZING 512
INVERSENAME 1024
ISABSTRACT 2048
MINIMUMSAMPLINGINTERVAL 4096
NODECLASS 8192
NODEID 16384
SYMMETRIC 32768
USERACCESSLEVEL 65536
USEREXECUTABLE 131072
USERWRITEMASK 262144
VALUERANK 524288
WRITEMASK 1048576
VALUEFORVARIABLETYPE 2097152
EOCONST

    open(my $fh, '<', \$consts) or croak "open consts: $!";

    local $_;
    my (%hash, $str, $num);
    while (<$fh>) {
	chomp;
	($str, $num) = split;
	$hash{"${class}_${str}"} = $num;
    }

    close($fh) or croak "close consts: $!";

    # This is how "use constant ..." creates constants.  constant.pm checks
    # constant names and non-existance internally.  We know our names are OK
    # and we only declare constants in our own namespace where they don't yet
    # exist.  Therefore we can skip the checks and make this module load
    # faster.
    no strict 'refs';    ## no critic (ProhibitNoStrict)
    my $symtab = \%{"OPCUA::Open62541::"};
    use strict;

    while (my ($name, $scalar) = each %hash) {
	Internals::SvREADONLY($scalar, 1);
	$symtab->{$name} = \$scalar;
    }
    mro::method_changed_in("OPCUA::Open62541");

    require Exporter;
    @OPCUA::Open62541::ISA = qw(Exporter);
    @OPCUA::Open62541::EXPORT_OK = keys %hash;
    %OPCUA::Open62541::EXPORT_TAGS = (all => [keys %hash]);
    sub import {
	OPCUA::Open62541->export_to_level(1, @_);
    }
}

1;

__END__

=head1 NAME

OPCUA::Open62541::WRITEMASK - import WRITEMASK defines from constants.h

=head1 SYNOPSIS

  use OPCUA::Open62541::WRITEMASK;

  use OPCUA::Open62541::WRITEMASK qw(WRITEMASK_ACCESSLEVEL ...);

  use OPCUA::Open62541::WRITEMASK ':all';

=head1 DESCRIPTION

This module provides all WRITEMASK defines as Perl constants.
They have been extracted from the constants.h C source file.

=head2 EXPORT

=over 4

=item WRITEMASK_ACCESSLEVEL ...

Export specific WRITEMASK constants into the OPCUA::Open64541 name
space.

=item :all

Exports all WRITEMASK constants into the OPCUA::Open64541 name space.
You might want to import only the ones you need.

=back

=head1 SEE ALSO

OPCUA::Open62541

=head1 AUTHORS

Alexander Bluhm,
Arne Becker

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2020 Alexander Bluhm
Copyright (c) 2020 Arne Becker

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

Thanks to genua GmbH, https://www.genua.de/ for sponsoring this work.

=cut
