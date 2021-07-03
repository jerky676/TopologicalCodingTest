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
   
        if ($nodeps.Count -lt 1){
            write-host "Circular Reference - No Empty Dependancies";
            throw "Failure";
        }
    
        do{
            $currentnode=$($nodeps[0]);
            [void] $sorted.Add($currentnode);
    
            if ($depfiles.ContainsKey($currentnode)){
                $depfiles.remove($currentnode);
            }
    
            foreach ($file in $depfiles.keys) {
                $currentdeps=$depfiles[$file];
    
                if ($currentdeps.Contains($currentnode))
                {
                    $currentdeps.remove($currentnode);
                }
    
                if ($currentdeps.count -lt 1){
                    [void] $nodeps.Add($file);
                }
            }
    
            $nodeps.Remove($currentnode);
        } while ($nodeps.Length -gt 0);
    
        if ($depfiles.count -gt 0){
            write-host "Circular Reference";
            throw "Failure";
        }
    
        return $sorted;
    }
    catch {
        Write-Host $_;
    }
}
