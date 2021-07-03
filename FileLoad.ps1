function Load-DataFromFile([string]$filepath) {

    $files=(Get-ChildItem -Path $PSScriptRoot -Filter *.txt -File | % { $_.FullName });

    $primaries=@{};

    

    foreach($file in $files){
        $filename=($file | split-pasth -leaf).Replace(".txt","");

    if ($file -eq $Null){
        $primaries[$file]=$null;
    } else {
        $primaries[$file]=New-Object System.Collections.ArrayList;

        foreach($line in $filecontent)
        {
            [void] $primaries[$file].Add($line);
        }
    }
}

$sorted=New-Object System.Collections.ArrayList;
$empty=New-Object System.Collections.ArrayList;


}



