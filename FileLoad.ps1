function Load-DataFromFiles([string]$filepath) {
    $files=(Get-ChildItem -Path $filepath -Filter *.txt -File | % { $_.FullName });   
    $hashtable=@{};

    foreach($file in $files){
       
        $filename=($file | split-path -leaf).Replace(".txt","");
        $filecontent=$(Get-Content -Path $file);
        $lines=New-Object System.Collections.ArrayList;

        write-host "content $filecontent";

        if ($filecontent -ne ""){
            foreach($line in $filecontent)
            {
                if ($line -ne ""){
                    $lines.Add($line);
                    write-host "line $line"
                }
            }
        }
        write-host "lines $lines"
        $hashtable.Add($filename,$lines);
        write-host "table $file ";
    }

   
    write-host "type $($hashtable.GetType())";

    $hashtable.keys;

    return $hashtable;
}



