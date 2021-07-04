class TestSetup
{
    [string]$dirname;

    [string]CreateDirName() {
        return "$PSScriptRoot/.$($this.dirname)";
    }

    [Hashtable]$data;

    [System.Collections.IDictionaryEnumerator]GetEnumerator(){
        return $this.data.GetEnumerator();
    }
}