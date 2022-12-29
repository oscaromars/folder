<?php

//cn

function cedula($cedula) {
    $sum = 0;
    $sumi = 0;
    $long = strlen($cedula);
    if (($long < 10) or ($long > 13) or ($long == 11) or ($long == 12)) {
      return 0;
    } else {
      $cedula = substr($cedula, 0, 10);
      for ($i = 0; $i < strlen($cedula) - 2; $i++) {
        if ($i % 2 == 0) {
            $sum += substr($cedula, $i + 1, 1);
        }
      }
      $j = 0;
      while ($j < strlen($cedula) - 1) {
        $b = substr($cedula, $j, 1);
        $b = $b * 2;
        if ($b > 9) {
            $b = $b - 9;
        }
        $sumi += $b;
        $j = $j + 2;
      }
      $t = $sum + $sumi;
      $res = 10 - $t % 10;
      $aux = substr($cedula, 9, 9);
      if ($res == $aux) {
        return 1;
      } else {
        return 0;
      }
    }
}

$e = "0909366031";
$d = "1002205980";
$f = "0909366031";

echo "VALOR " + cedula($e) . '<br>';
echo "VALOR " + cedula($d) . '<br>';
echo "VALOR " + cedula($f) . '<br>';

?>
