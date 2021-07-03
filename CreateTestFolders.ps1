. ("$PSScriptRoot/vars.ps1")


foreach ($testsetup in $testsetups) {
    New-Item -ItemType Directory -Force -Path $testsetup.dirname;
    
    foreach ($file in $testsetup.data) {
        $filename="$PSScriptRoot/$file.txt"

        $file.values 


        # $file.values | Out-File $filename 

        # foreach ($lines in $file.values) {
            
        # }
        
    }

}