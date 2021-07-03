class TestSetup
{
    [string]$dirname;

    [string] createdirname() {
        return ".$($this.dirname)";
    }

    [Hashtable]$data;

    [System.Collections.IDictionaryEnumerator]GetEnumerator(){
        return $this.data.GetEnumerator();
    }
}