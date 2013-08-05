use strict;
use warnings;
use utf8;
use Test::More tests => 1;
use Text::Markdown::Discount;

is(
    strip(Text::Markdown::Discount::markdown("<section>foo</section>", undef, {with_html5 => 1})),
    strip("<section>foo</section>"));

sub strip {
    my $str = shift;
    $str =~ s/\s*//g;
    return $str;
}
