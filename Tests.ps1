. ("$PSScriptRoot/vars.ps1")
write-debug "loaded vars.ps1";
. ("$PSScriptRoot/FileLoad.ps1")
write-debug "loaded FileLoad.ps1";
. ("$PSScriptRoot/KhansAlgorithm.ps1")
write-debug "loaded KhansAlgorithm.ps1";

. "$PSScriptRoot/CreatedTestData.ps1"


$nonemptydata=$(Load-DataFromFiles "$($testnonempty.CreateDirName())");
$circulardata=$(Load-DataFromFiles "$($testcircular.CreateDirName())");
$working1data=$(Load-DataFromFiles "$($testworking1.CreateDirName())");
$working2data=$(Load-DataFromFiles "$($testworking2.CreateDirName())");
$working3data=$(Load-DataFromFiles "$($testworking3.CreateDirName())");
$working4data=$(Load-DataFromFiles "$($testworking4.CreateDirName())");
$working5data=$(Load-DataFromFiles "$($testworking5.CreateDirName())");



# KhansAlgorithm($nonemptydata);
# KhansAlgorithm($circulardata);
# KhansAlgorithm($working1data);
# KhansAlgorithm($working2data);
# KhansAlgorithm($working3data);
# KhansAlgorithm($working4data);
KhansAlgorithm($working5data);