<?php $i = 5;
if (empty(getopt("f"))){$i++;}
$b = "Sully_".($i-1).".php";if($i < 1){return;}
$s = '<?php $i = %d;%cif (empty(getopt("f"))){$i++;}%c$b = "Sully_".($i-1).".php";if($i < 1){return;}%c$s = %c%s%c;%cfprintf(fopen($b, "w"),$s,$i-1,10,10,10,39,$s,39,10,10);%csystem("php $b -f1");';
fprintf(fopen($b, "w"),$s,$i-1,10,10,10,39,$s,39,10,10);
system("php $b -f1");