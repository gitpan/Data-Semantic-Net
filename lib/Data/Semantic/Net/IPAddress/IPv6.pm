package Data::Semantic::Net::IPAddress::IPv6;

use strict;
use warnings;
use Net::IP qw/ip_is_ipv6 ip_iptype/;


our $VERSION = '0.02';


use base qw(Data::Semantic::Net::IPAddress);


sub is_valid_normalized_value {
    my ($self, $value) = @_;
    $self->SUPER::is_valid_normalized_value($value) && ip_is_ipv6($value);
}

    
sub is_internal {
    my ($self, $value) = @_;
    return unless defined $value;
    (ip_iptype($value, 6) || '') eq 'GLOBAL-UNICAST';
}   


1;


__END__



=head1 NAME

Data::Semantic::Net::IPAddress::IPv6 - semantic data class for IPv6 addresses

=head1 SYNOPSIS

    my $obj = Data::Semantic::Net::IPAddress::IPv6->new;
    if ($obj->is_valid($value)) { ... }

=head1 DESCRIPTION

This class can tell whether a value is an IPv6 address. The C<valid()> methd
will respect the inherited C<forbid_internal> boolean attribute.

Data::Semantic::Net::IPAddress::IPv6 inherits from
L<Data::Semantic::Net::IPAddress>.

The superclass L<Data::Semantic::Net::IPAddress> defines these methods and
functions:

    clear_forbid_internal(), forbid_internal(), forbid_internal_clear(),
    forbid_internal_set(), set_forbid_internal()

The superclass L<Data::Semantic> defines these methods and functions:

    new(), is_valid(), normalize()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    carp(), cluck(), croak(), flatten(), mk_abstract_accessors(),
    mk_array_accessors(), mk_boolean_accessors(),
    mk_class_array_accessors(), mk_class_hash_accessors(),
    mk_class_scalar_accessors(), mk_concat_accessors(),
    mk_forward_accessors(), mk_hash_accessors(), mk_integer_accessors(),
    mk_new(), mk_object_accessors(), mk_scalar_accessors(),
    mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

=head1 METHODS

=over 4



=item is_internal

Takes a value and returns true if the indicated IPv4 address is an internal
address.

=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticnet> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Semantic::Net::IPAddress::IPv6>.

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

