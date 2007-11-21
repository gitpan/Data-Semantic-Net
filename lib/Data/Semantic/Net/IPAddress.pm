package Data::Semantic::Net::IPAddress;

use strict;
use warnings;


our $VERSION = '0.01';


use base qw(Data::Semantic::Net);


__PACKAGE__
    ->mk_abstract_accessors(qw(is_internal))
    ->mk_boolean_accessors(qw(forbid_internal));


sub is_valid_normalized_value {
    my ($self, $value) = @_;
    return unless $self->SUPER::is_valid_normalized_value($value);
    $self->forbid_internal ? !$self->is_internal($value) : 1;
}


1;


__END__



=head1 NAME

Data::Semantic::Net::IPAddress - Base class for IP address semantic data classes

=head1 SYNOPSIS

    Data::Semantic::Net::IPAddress->new;

=head1 DESCRIPTION

This class is a base class for semantic data objects representing IP addresses
- IPv4 and IPv6.

Data::Semantic::Net::IPAddress inherits from L<Data::Semantic::Net>.

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

=item clear_forbid_internal

    $obj->clear_forbid_internal;

Clears the boolean value by setting it to 0.

=item forbid_internal

    $obj->forbid_internal($value);
    my $value = $obj->forbid_internal;

If called without an argument, returns the boolean value (0 or 1). If called
with an argument, it normalizes it to the boolean value. That is, the values
0, undef and the empty string become 0; everything else becomes 1.

=item forbid_internal_clear

    $obj->forbid_internal_clear;

Clears the boolean value by setting it to 0.

=item forbid_internal_set

    $obj->forbid_internal_set;

Sets the boolean value to 1.

=item set_forbid_internal

    $obj->set_forbid_internal;

Sets the boolean value to 1.

=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticnet> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::Net::IPAddress>.

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

