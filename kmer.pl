#!/usr/bin/perl
sub convert {
    my $c=$_[0];
    if ($c eq 'A') {return "C"}
    if ($c eq 'C') {return "G"}
    if ($c eq 'G') {return "T"}
    if ($c eq 'T') {return "A"}
}

%C=('A'=>'C','C'=>'G','G'=>'T','T'=>'A');
print "Start";

$opt = "ACGT";
@opt_ar=split("",$opt);
@s = ("A","A","A","A","A","A","A","A","A","A","A","A");
@s_last = ("T","T","T","T","T","T","T","T","T","T","T","T");
$last=join("",@s_last);
$len_str = 11;
$pos = 0;
$counter = 1;
LOOP: while (join("",@s) ne $last) {
    ++$counter;
    $change_next = 1;
    for ($i=0;$i<=$len_str;++$i) {
        if ($change_next==1) {
            if ($s[$i] eq $opt_ar[$#opt_ar]) {
                #$s[$i]=convert($s[$i]);
                $s[$i]=$C{$s[$i]};
                $change_next = 1;                
            } else {
                #$s[$i] = convert($s[$i]);
                $s[$i]=$C{$s[$i]};
                next LOOP;
            }
        }
    }
}
print "Number of generated k-mers:  $counter\n";
print "finished.";