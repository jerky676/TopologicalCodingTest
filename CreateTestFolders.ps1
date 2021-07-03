. ("$PSScriptRoot/vars.ps1")






foreach ($testdirectory in $testdirectories) {
    New-Item -ItemType Directory -Force -Path $testdirectory   
}