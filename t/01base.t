local $^W = 1;

use Statistics::Shannon;

print "1..2\n";

my $pop = Statistics::Shannon->new(qw(a b b c c c c));

# -((1/7*log(1/7)+2/7*log(2/7)+4/7*log(4/7))/log(2))'
print abs($pop->index(2)    - 1.37878349348618) < 1E-6 ?
  "ok 1\n" : "not ok 1\n";

# -((1/7*log(1/7)+2/7*log(2/7)+4/7*log(4/7))/log(2))/(log(3)/log(2)) ==
# -(1/7*log(1/7)+2/7*log(2/7)+4/7*log(4/7))/log(3)
print $pop->evenness(2) == $pop->evenness() ?
  "ok 2\n" : "not ok 2\n";





