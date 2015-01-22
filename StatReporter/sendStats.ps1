Param([string]$url)

$r = [System.Net.WebRequest]::Create($url)
$resp = $r.GetResponse()
$reqstream = $resp.GetResponseStream()

$sr = new-object System.IO.StreamReader $reqstream
$result = $sr.ReadToEnd()
write-host $url