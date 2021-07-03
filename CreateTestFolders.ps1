. ("$PSScriptRoot/vars.ps1")


foreach ($testsetup in $testsetups) {
    New-Item -ItemType Directory -Force -Path $testsetup.dirname;
    
    foreach ($file in $testsetup.data) {
        $filename="$PSScriptRoot/$file.txt"

        Add-Content $filename $file.values

        # foreach ($lines in $file.values) {
            
        # }
        
    }

}