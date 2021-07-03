. ("$PSScriptRoot/TestSetup.ps1")


$testsetups=@();

$testnonempty=New-Object TestSetup;
$testnonempty.dirname="NonEmptyFilesDataSet";
$testnonempty.data=@{
    a = @("c","e")
    b = @("e", "c")
    c = @("d","e")
    d = @("c","e")
    e = @("c")
};

$testsetups.add($testnonempty);

# $testcircular=New-Object TestSetup;
# $testcircular.dirname="$PSScriptRoot/CircularDataSet";
# $testcircular.data=@{
#     a = @("c","e")
#     b = @("e", "c")
#     c = @("d","e", "a")
#     d = @("c","e")
#     e = @()
# };

# $testsetups.add($testcircular);

# $testworking1=New-Object TestSetup;
# $testworking1.dirname="$PSScriptRoot/WorkingDataSet1";
# $testworking1.data=@{
#     a = @("c","e")
#     b = @("e", "c")
#     c = @("d","e")
#     d = @("c","e")
#     e = @("c")
# };

# $testsetups.add($testworking1);

# $testworking2=New-Object TestSetup;
# $testworking2.dirname="$PSScriptRoot/WorkingDataSet2";
# $testworking2.data=@{
#     "a" = @("c","e")
#     "b" = @("e", "c", "f")
#     "c" = @("d","e")
#     "d" = @("c","e", "f")
#     "e" = @()
#     "f" = @()
# };

# $testsetups.add($testworking2);