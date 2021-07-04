. ("$PSScriptRoot/vars.ps1")
write-host "loaded vars";
. ("$PSScriptRoot/FileLoad.ps1")
write-host "loaded fileload";
. ("$PSScriptRoot/KhansAlgorithm.ps1")
write-host "loaded Algorithm";


$nonemptydata=$(Load-DataFromFiles "$($testnonempty.CreateDirName())");
$circulardata=$(Load-DataFromFiles "$($testcircular.CreateDirName())");
$working1data=$(Load-DataFromFiles "$($testworking1.CreateDirName())");
$working2data=$(Load-DataFromFiles "$($testworking2.CreateDirName())");


KhansAlgorithm($nonemptydata);
KhansAlgorithm($circulardata);
KhansAlgorithm($working1data);
KhansAlgorithm($working2data);