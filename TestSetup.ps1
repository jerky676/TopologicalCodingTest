class TestSetup
{
    [string]$dirname;
    [string] createdirname() {
        ".$dirname";
    }
    [Hashtable]$data;
    [void] CreateFiles(){
        [void] New-Item -ItemType Directory -Force -Path this.createdirname;

        foreach ($file in $this.data.GetEnumerator()) {
            $filename="$PSScriptRoot/$(this.createdirname)/$($file.Name).txt"
            $file.value | Out-File $filename;
        }
    }
}