. ("$PSScriptRoot/TestSetup.ps1")
write-host "loaded testsetup"

$testsetups=New-Object System.Collections.ArrayList;

$testnonempty=New-Object TestSetup;
$testnonempty.dirname="NonEmptyFilesDataSet";
$testnonempty.data=@{
    a = @("c","e")
    b = @("e", "c")
    c = @("d","e")
    d = @("c","e")
    e = @("c")
};

[void]$testsetups.add($testnonempty);

$testcircular=New-Object TestSetup;
$testcircular.dirname="CircularDataSet";
$testcircular.data=@{
    a = @("c","e")
    b = @("e", "c")
    c = @("d","e", "a")
    d = @("c","e")
    e = @()
};

[void]$testsetups.add($testcircular);

$testworking1=New-Object TestSetup;
$testworking1.dirname="WorkingDataSet1";
$testworking1.data=@{
    a = @("c","e")
    b = @("e", "c")
    c = @("d","e")
    d = @("c","e")
    e = @("c")
};

[void]$testsetups.add($testworking1);

$testworking2=New-Object TestSetup;
$testworking2.dirname="WorkingDataSet2";
$testworking2.data=@{
    "a" = @("c","e")
    "b" = @("e", "c", "f")
    "c" = @("d","e")
    "d" = @("c","e", "f")
    "e" = @()
    "f" = @()
};

[void]$testsetups.add($testworking2);