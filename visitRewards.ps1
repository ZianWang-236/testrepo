$stringList1 = 'powershell','java','python','cmd','chicken','beef','french','microsoft','sql','canada','orange','calculate'
$stringList2 = 'alpha','bravo','charlie','delta','echo','foxtrot','golf','hotel','india', 'juliett', 'kilo', 'lima', 'mike', 'november', 'oscar', 'papa', 'quebec', 'romeo', 'sierra', 'tango', 'uniform', 'victor', 'wiskey', 'xray', 'yankee', 'zulu'
For ($i = 1; $i -lt 31) {
    $num = Get-Random -Minimum 2 -Maximum 3
    $string1 = $stringList1 | Get-Random
    $string2 = $stringList2 | Get-Random
    $url = "https://www.bing.com/search?q=$string1+$string2+$num"
    start microsoft-edge:$url
    Start-Sleep -Seconds $num
    if($i%5 -eq 0)
    {
        taskkill /IM msedge.exe /F /T
    }
    $i++
}