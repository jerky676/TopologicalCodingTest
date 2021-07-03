. ("$PSScriptRoot/vars.ps1")


function CreateFiles([TestSetup]$testsetup){
    [voice] New-Item -ItemType Directory -Force -Path "$PSScriptRoot/$($testsetup.createdirname)";

    foreach ($file in $($this.GetEnumerator())) {
        $filename="$PSScriptRoot/$($testsetup.createdirname)/$($file.Name).txt";
        $file.value | Out-File $filename;
    }
}

foreach ($testsetup in $testsetups) {
   CreateFiles $testsetup;
}


