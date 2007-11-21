package Data::Semantic::Net::IPAddress::TestData::IPv6;

use strict;
use warnings;


our $VERSION = '0.01';


use constant TESTDATA => (
    {
        args => {},
        valid => [ qw(
            2001:0db8:0000:0000:0000:0000:1428:57ab
            2001:0db8:0000:0000:0000::1428:57ab
            2001:0db8:0:0:0:0:1428:57ab
            2001:0db8:0:0::1428:57ab
            2001:0db8::1428:57ab
            2001:db8::1428:57ab
            ::1
        ) ],
        invalid => [ qw(
            127.0.0.1
            127.0
            131.130.249.31
            127.0.0.1
            10.0.1.3
            192.168.1.3
        ) ],
    },
);


1;


__END__


=head1 NAME

Data::Semantic::Net::IPAddress::TestData::IPv6 - Testdata classes

=head1 SYNOPSIS

None.

=head1 DESCRIPTION

Defines test data for L<Data::Semantic::Net::IPAddress::IPv6_TEST>, 
but it is also used in the corresponding value and domain classes,
i.e., L<Class::Value::Net::IPAddress::IPv6_TEST> and
L<Data::Domain::Net::IPAddress::IPv6_TEST>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticnet> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::Net::IPAddress::TestData::IPv6>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-semantic-net@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut


