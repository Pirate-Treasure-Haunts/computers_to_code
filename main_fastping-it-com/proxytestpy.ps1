Clear-Host
$URL = "http://127.0.0.1:9000"

Write-Host "[INFO] Testing GET /login"
try {
    $response = Invoke-WebRequest -Uri "$URL/login" -Method GET -ErrorAction Stop
    Write-Host "HTTP" $response.StatusCode
} catch {
    Write-Host "[FAIL] Server unreachable"
}

Write-Host "`n[INFO] Testing POST /admin/create_customer"
try {
    $payload = @{
        name = "LoadTest"
        email = "load@test.com"
    } | ConvertTo-Json

    $response = Invoke-WebRequest -Uri "$URL/admin/create_customer" -Method POST -Body $payload -ContentType "application/json" -ErrorAction Stop
    Write-Host "HTTP" $response.StatusCode
} catch {
    Write-Host "[FAIL] POST failed"
}
