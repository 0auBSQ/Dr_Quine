<?php //a
//b
function printe($s){printf($s,10,10,10,39,$s,39,10);}
$s = '<?php //a%c//b%cfunction printe($s){printf($s,10,10,10,39,$s,39,10);}%c$s = %c%s%c;%cprinte($s);';
printe($s);