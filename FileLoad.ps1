function Load-DataFromFiles([string]$filepath) {

    $files=(Get-ChildItem -Path $filepath -Filter *.txt -File | % { $_.FullName });

    $files;

    $filetable=@{};

    foreach($file in $files){



        $filename=($file | split-path -leaf).Replace(".txt","");

        $filename;

        if ($filecontent -eq $Null){
            $filetable[$filename]=$null;
        } else {
            $filetable[$file]=New-Object System.Collections.ArrayList;

            foreach($line in $filecontent)
            {
                [void] $filetable[$file].Add($line);
            }
        }
    }

    $filetable;

    return $filetable;
}



