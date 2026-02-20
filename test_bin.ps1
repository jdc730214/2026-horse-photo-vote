[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$key = '$2a$10$ur0s4agA3aj1yPIbtmVBLesp8BAJe6PchSL.PnZjZE8suEZiYbhae'
$url = 'https://api.jsonbin.io/v3/b/6997f7d6d0ea881f40c8bd39/latest'
try {
    $r = Invoke-RestMethod -Uri $url -Headers @{ 'X-Master-Key' = $key }
    Write-Host "連線成功！目前資料："
    $r.record | ConvertTo-Json
} catch {
    $msg = $_.Exception.Message
    Write-Host "失敗：$msg"
}
