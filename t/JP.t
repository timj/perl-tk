use Test::More (tests => 294);
use Tk;
use Tk::widgets qw(Text);
my $mw   = MainWindow->new;
#my $font = 'Times';
my $font = 'fixed';
$font = shift(@ARGV) if @ARGV;
my $t    = $mw->Scrolled(Text => -font => [$font => 12, 'normal'])->pack( -fill => 'both', -expand => 1);
my $file = __FILE__;
$file =~ s/\.t$/.dat/;
open(my $fh,"<:utf8",$file) || die "Cannot open $file:$!";
while (<$fh>)
 {
  # s/[^ -~\s]/?/g;
  $t->insert('end',$_);
  $t->see('end');
  $mw->update;
  ok(1);
 }
close($fh);
$mw->after(2000,[ destroy => $mw ]);
MainLoop;
