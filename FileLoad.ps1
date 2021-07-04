function Load-DataFromFiles([string]$filepath) {
    $files=(Get-ChildItem -Path $filepath -Filter *.txt -File | % { $_.FullName });   
    $table=New-Object System.Collections.Hashtable;

    foreach($file in $files){     
        $filename=($file | split-path -leaf).Replace(".txt","");
        $filecontent=$(Get-Content -Path $file);
        $lines=New-Object System.Collections.ArrayList;

        if ($filecontent -ne ""){
            foreach($line in $filecontent)
            {
                if ($line -ne ""){
                    [void]$lines.Add("$line");
                }
            }
        }
        $table.add($filename,$lines);
    }

    return $table;
}



