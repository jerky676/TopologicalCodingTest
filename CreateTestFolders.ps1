. ("$PSScriptRoot/vars.ps1")


foreach ($testdirectory in $testdirectories) {
    New-Item -ItemType Directory -Force -Path $testdirectory.dirname;
    
    foreach ($file in $testdirectory.data) {
        $filename="$PSScriptRoot/$file.txt"

        Add-Content $filename $file.values

        # foreach ($lines in $file.values) {
            
        # }
        
    }

}