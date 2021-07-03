. ("$PSScriptRoot/vars.ps1")
. ("$PSScriptRoot/FileLoad.ps1")
. ("$PSScriptRoot/KhansAlgorithm.ps1")



$nonemptydata=$(Load-DataFromFiles "$testnonempty");
$circulardata=$(Load-DataFromFiles "$testcircular");
$working1data=$(Load-DataFromFiles "$testworking1");
$working2data=$(Load-DataFromFiles "$testworking2");


# KhansAlgorithm($nonemptydata);
# KhansAlgorithm($circulardata);
# KhansAlgorithm($working1data);
# KhansAlgorithm($working2data);