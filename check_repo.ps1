$r = Invoke-WebRequest -UseBasicParsing -Uri 'https://api.github.com/repos/Omii2510/deva-wellness-family' -Headers @{ 'User-Agent'='Mozilla/5.0' }
$j = $r.Content | ConvertFrom-Json
Write-Host "private: $($j.private)"
Write-Host "html_url: $($j.html_url)"
Write-Host "pages: $($j.has_pages)"
Write-Host "pages_url: $($j.html_url)/"