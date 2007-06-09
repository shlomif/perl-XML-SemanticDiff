use Test;
BEGIN { plan tests => 2 }

use XML::SemanticDiff;

$xml1 = <<'EOX';      
<?xml version="1.0"?>
<root>
<el1 el1attr="good"/>
<el2 el2attr="good">Some Text</el2>
<el3/>
</root>
EOX

$xml2 = <<'EOX';      
<?xml version="1.0"?>
<root>
<el1 el1attr="bad"/>
<el2 bogus="true"/>
<el4>Rogue</el4>
</root>
EOX

my $diff = XML::SemanticDiff->new();

my @results = $diff->compare($xml1, $xml2);

ok(@results == 6);

@results = $diff->compare($xml1, $xml1);

ok(@results == 0);
