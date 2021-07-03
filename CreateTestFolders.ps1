. ("$PSScriptRoot/vars.ps1")


foreach ($testsetup in $testsetups) {
   $testsetup.CreateFile;
}