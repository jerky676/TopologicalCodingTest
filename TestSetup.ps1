class TestSetup
{
    [string]$dirname;
    [string] createdirname() {
        return ".$($this.dirname)";
    }
    [Hashtable]$data;
    CreateFiles(){
        [void] New-Item -ItemType Directory -Force -Path $($this.createdirname);

        foreach ($file in $($this.data.GetEnumerator())) {
            $filename="$PSScriptRoot/$($this.createdirname)/$($file.Name).txt"
            $file.value | Out-File $filename;
        }
    }
}