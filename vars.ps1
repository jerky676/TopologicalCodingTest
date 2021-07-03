. ("$PSScriptRoot/TestSetup.ps1")

$testnonempty=New-Object TestSetup;
$testnonempty.dirname="NonEmptyFilesDataSet";
$testnonempty.data=@{
    a = @("c","e")
    b = @("e", "c")
    c = @("d","e")
    d = @("c","e")
    e = @("c")
};

$testnonempty.dirname;
$testnonempty.data;

# $testcircular=New-Object TestSetup;
# $testcircular.dirname="$PSScriptRoot/CircularDataSet";
# $testcircular.data=@{
#     "a" = @("c","e"),
#     "b" = @("e", "c"),
#     "c" = @("d","e", "a"),
#     "d" = @("c","e"),
#     "e" = @()
# };

# $testworking1=New-Object TestSetup;
# $testworking1.dirname="$PSScriptRoot/WorkingDataSet1";
# $testworking1.data=@{
#     "a" = @("c","e"),
#     "b" = @("e", "c"),
#     "c" = @("d","e"),
#     "d" = @("c","e"),
#     "e" = @("c")
# };

# $testworking2=New-Object TestSetup;
# $testworking2.dirname="$PSScriptRoot/WorkingDataSet2";
# $testworking2.data=@{
#     "a" = @("c","e"),
#     "b" = @("e", "c", "f"),
#     "c" = @("d","e"),
#     "d" = @("c","e", "f"),
#     "e" = @(),
#     "f" = @()
# };





# $testnonempty="$PSScriptRoot/NonEmptyDataSet";
# $testcircular="$PSScriptRoot/CircularDataSet";
# $testworking1="$PSScriptRoot/WorkingDataSet1";
# $testworking2="$PSScriptRoot/WorkingDataSet2";

$testsetups=@($testnonempty);


# $testsetups=@($testnonempty,$testcircular,$testworking1,$testworking2);
write-host "arrayr setups";
$testsetups