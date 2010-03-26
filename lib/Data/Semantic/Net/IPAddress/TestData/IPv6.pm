use 5.008;
use strict;
use warnings;

package Data::Semantic::Net::IPAddress::TestData::IPv6;
our $VERSION = '1.100850';
# ABSTRACT: Test data class for the IPv4 address semantic data class
use constant TESTDATA => (
    {   args  => {},
        valid => [
            qw(
              2001:0db8:0000:0000:0000:0000:1428:57ab
              2001:0db8:0000:0000:0000::1428:57ab
              2001:0db8:0:0:0:0:1428:57ab
              2001:0db8:0:0::1428:57ab
              2001:0db8::1428:57ab
              2001:db8::1428:57ab
              ::1
              )
        ],
        invalid => [
            qw(
              127.0.0.1
              127.0
              131.130.249.31
              127.0.0.1
              10.0.1.3
              192.168.1.3
              )
        ],
    },
);
1;


__END__
=pod

=head1 NAME

Data::Semantic::Net::IPAddress::TestData::IPv6 - Test data class for the IPv4 address semantic data class

=head1 VERSION

version 1.100850

=head1 DESCRIPTION

Defines test data for L<Data::Semantic::Net::IPAddress::IPv6_TEST>, but it is
also used in the corresponding value and domain classes, i.e.,
L<Class::Value::Net::IPAddress::IPv6_TEST> and
L<Data::Domain::Net::IPAddress::IPv6_TEST>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Data-Semantic-Net>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Data-Semantic-Net/>.

The development version lives at
L<http://github.com/hanekomu/Data-Semantic-Net/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

