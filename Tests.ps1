. ("$PSScriptRoot/FileLoad.ps1")
. ("$PSScriptRoot/KhansAlgorithm.ps1")

$testnonempty="$PSScriptRoot/NonEmptyDataSet";
$testcircular="$PSScriptRoot/CircularDataSet";
$testworking1="$PSScriptRoot/WorkingDataSet1";
$testworking2="$PSScriptRoot/WorkingDataSet2";

$nonemptydata=$(Load-DataFromFiles "$testnonempty");
$circulardata=$(Load-DataFromFiles "$testcircular");
$working1data=$(Load-DataFromFiles "$testworking1");
$working2data=$(Load-DataFromFiles "$testworking2");


# KhansAlgorithm($nonemptydata);
# KhansAlgorithm($circulardata);
# KhansAlgorithm($working1data);
# KhansAlgorithm($working2data);