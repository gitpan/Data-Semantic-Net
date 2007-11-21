package Data::Semantic::Net::IPAddress::IPv4_TEST;

use strict;
use warnings;


our $VERSION = '0.01';


use base qw(
    Data::Semantic::Test
    Data::Semantic::Net::IPAddress::TestData::IPv4
);


1;


__END__


=head1 NAME

Data::Semantic::Net::IPAddress::IPv4_TEST - Test companion class

=head1 SYNOPSIS

    perl t/01_companion_classes.t

=head1 DESCRIPTION

Test companion class for L<Data::Semantic::Net::IPAddress::IPv4>. Gets its
test data from L<Data::Semantic::Net::IPAddress::TestData::IPv4>.

Data::Semantic::Net::IPAddress::IPv4_TEST inherits from
L<Data::Semantic::Test> and
L<Data::Semantic::Net::IPAddress::TestData::IPv4>.

The superclass L<Data::Semantic::Test> defines these methods and functions:

    BAIL_OUT(), PLAN(), can_ok(), cmp_ok(), diag(), eq_array(), eq_hash(),
    eq_set(), fail(), is(), is_deeply(), isa_ok(), isnt(), like(),
    munge_args(), ok(), pass(), plan(), require_ok(), run(), skip(),
    test_is_invalid(), test_is_valid(), todo(), todo_skip(), unlike(),
    use_ok()

The superclass L<Test::CompanionClasses::Base> defines these methods and
functions:

    new(), clear_package(), make_real_object(), package(), package_clear(),
    planned_test_count()

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

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

The superclass L<Data::Semantic::Net::IPAddress::TestData::IPv4> defines
these methods and functions:

    TESTDATA()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datasemanticnet> tag.

=head1 VERSION 
                   
This document describes version 0.01 of L<Data::Semantic::Net::IPAddress::IPv4_TEST>.

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


