. ("$PSScriptRoot/TestSetup.ps1")
Write-Debug "Loaded TestSetup.ps1"

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
    c = @("e")
    d = @("c","e")
    e = @("")
};

[void]$testsetups.add($testworking1);

$testworking2=New-Object TestSetup;
$testworking2.dirname="WorkingDataSet2";
$testworking2.data=@{
    "a" = @("c","e")
    "b" = @("e", "c", "f")
    "c" = @("d","e")
    "d" = @("e", "f")
    "e" = @()
    "f" = @()
};

[void]$testsetups.add($testworking2);

$testworking3=New-Object TestSetup;
$testworking3.dirname="WorkingDataSet3";
$testworking3.data=@{
    "a" = @("f")
    "b" = @("a")
    "c" = @("a")
    "d" = @("b", "c")
    "e" = @("b","d", "g")
    "f" = @()
    "g" = @("a")
};

[void]$testsetups.add($testworking3);

$testworking4=New-Object TestSetup;
$testworking4.dirname="WorkingDataSet4";
$testworking4.data=@{
    "0" = @()
    "1" = @("0")
    "2" = @("1")
    "3" = @("2")
};

[void]$testsetups.add($testworking4);