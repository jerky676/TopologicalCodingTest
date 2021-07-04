function KhansAlgorithm([Hashtable]$files){
    try {
        $sorted=New-Object System.Collections.ArrayList;
        $nodeps=$files.clone();
        $depfiles=$files.clone();

        @($nodeps.keys) | % { 
            if ($nodeps[$_]) { $nodeps.Remove($_) } 
        };

        $nodeps=[System.Collections.ArrayList]$nodeps.keys;

        @($depfiles.keys) | % { 
            if (-not $depfiles[$_]) { $depfiles.Remove($_) } 
        };
        
        write-host "no deps $($nodeps.Count) $($nodeps.Count -lt 1) $($nodeps.GetType())";
        $nodeps
        write-host "has deps"
        $depfiles
   
        if ($nodeps.Count -lt 1){
            write-host "Circular Reference - No Empty Dependancies";
            throw "Failure";
        }
    
        do{
            $currentnode=$($nodeps[0]);
            [void] $sorted.Add($currentnode);
    
            # if ($depfiles.ContainsKey($currentnode)){
                
            # }
    
            foreach ($file in $depfiles.keys) {
                $currentdeps=$depfiles[$file];
    
                if ($currentdeps.Contains($currentnode))
                { 
                    $currentdeps.remove($currentnode);
                }
    
                if ($currentdeps.count -lt 1){
                    write-host "Added file $file to no deps";
                    [void] $nodeps.Add($file);
                    
                    write-host "removed $file from deps";
                    $depfiles
                }
            }          
    
            $nodeps.Remove($currentnode);
            foreach ($remove in $nodeps) {
                [void] $depfiles.remove($remove);
            }

            write-host "Removed $currentnode from nodeps";
            $nodeps
        } while ($nodeps.Length -gt 0);
    
        if ($depfiles.count -gt 0){
            write-host "Circular Reference";
            throw "Failure";
        }


        return ($sorted-join ',')
        # return $sorted;
    }
    catch {
        Write-Host $_;
    }
}
