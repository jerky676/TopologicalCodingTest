. ("$PSScriptRoot/vars.ps1")


foreach ($testsetup in $testsetups) {
   $testsetup.CreateFile 
}
    
    # foreach ($file in $testsetup.data.GetEnumerator()) {
    #     $filename="$PSScriptRoot/$($testsetup.dirname)/$($file.Name).txt"

    #     # write-host "Name: $($file.Name)";

    #     # write-host "Value: $($file.Value)";

    #     # write-host "$($file.key)";

    #     # $file | Get-Member;


        

    #     # foreach ($lines in $file.values) {
            
    #     # }
        
#     }

# }