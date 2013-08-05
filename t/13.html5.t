use strict;
use warnings;
use utf8;
use Test::More tests => 6;
use Text::Markdown::Discount;

is(
    strip(Text::Markdown::Discount::markdown("<section>foo</section>", undef, {with_html5 => 0})),
    "<p><section>foo</section></p>");

is(
    strip(Text::Markdown::Discount::markdown("<section>foo</section>", undef, {with_html5 => 1})),
    "<section>foo</section>");

is(
    strip(Text::Markdown::Discount::markdown("<section>foo</section>", undef, {with_html5 => 0})),
    "<p><section>foo</section></p>");

is(
    strip(Text::Markdown::Discount->new()->markdown("<section>foo</section>", undef, {with_html5 => 0})),
    "<p><section>foo</section></p>");

is(
    strip(Text::Markdown::Discount->new()->markdown("<section>foo</section>", undef, {with_html5 => 1})),
    "<section>foo</section>");

is(
    strip(Text::Markdown::Discount->new()->markdown("<section>foo</section>", undef, {with_html5 => 0})),
    "<p><section>foo</section></p>");

sub strip {
    my $str = shift;
    $str =~ s/\s*//g;
    return $str;
}
