#! perl -wT

use Test::More;

use String::Snip;

is( String::Snip::snip('Some short string') , 'Some short string');
is( String::Snip::snip('OneVeryLongString' x 200 ) , "OneVeryLongStringOneVeryLongStringOneVe ..[SNIP 3300chars].. tringOneVeryLongStringOneVeryLongString");
is( String::Snip::snip('A Short one and '.( 'OneVeryLongString' x 200 ).' followed by normal length one' ),
    "A Short one and OneVeryLongStringOneVeryLongStringOneVe ..[SNIP 3300chars].. tringOneVeryLongStringOneVeryLongString followed by normal length one");
is( String::Snip::snip('A Short one and '.( 'OneVeryLongString' x 200 ).' followed by normal length one and '.( 'anotherverylong' x 200 ) ),
    "A Short one and OneVeryLongStringOneVeryLongStringOneVe ..[SNIP 3300chars].. tringOneVeryLongStringOneVeryLongString followed by normal length one and anotherverylonganotherverylonganotherve ..[SNIP 2900chars].. rverylonganotherverylonganotherverylong");

done_testing();
