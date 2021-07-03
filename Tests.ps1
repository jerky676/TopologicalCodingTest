. ("$PSScriptRoot/vars.ps1")
. ("$PSScriptRoot/FileLoad.ps1")
. ("$PSScriptRoot/KhansAlgorithm.ps1")



$nonemptydata=$(Load-DataFromFiles "$($testnonempty.CreateDirName())");
$circulardata=$(Load-DataFromFiles "$($testcircular.CreateDirName())");
$working1data=$(Load-DataFromFiles "$($testworking1.CreateDirName())");
$working2data=$(Load-DataFromFiles "$($testworking2.CreateDirName())");


# KhansAlgorithm($nonemptydata);
# KhansAlgorithm($circulardata);
# KhansAlgorithm($working1data);
# KhansAlgorithm($working2data);