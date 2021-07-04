. ("$PSScriptRoot/vars.ps1")
Write-Debug "Loaded vars.ps1"

function CreateFiles([TestSetup]$testsetup){
    $createdirname="$($testsetup.CreateDirName())"
    Remove-Item -Recurse -Force -Path "$createdirname" | Out-Null;
    New-Item -ItemType Directory -Force -Path "$createdirname"| Out-Null;

    foreach ($file in $($testsetup.GetEnumerator())) {
        $filename="$createdirname/$($file.Name).txt";
        $file.value | Out-File $filename;
    }
}

foreach ($testsetup in $testsetups) {
    #$testetup;
    CreateFiles $testsetup;
}


