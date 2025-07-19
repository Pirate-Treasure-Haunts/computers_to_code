# Adjust to your VPS IP
$server = "http://161.35.248.233:9000"

Write-Host "🔍 Checking server status..."
try {
    $response = Invoke-WebRequest -Uri "$server" -UseBasicParsing -TimeoutSec 5
    Write-Host "✅ Server Reachable: $($response.StatusCode)"
} catch {
    Write-Host "❌ Server not reachable"
}

Write-Host "👤 Simulating customer creation..."
Invoke-RestMethod -Uri "$server/admin/create_customer" -Method Post -Body '{"name":"Test User","email":"test@example.com"}' -ContentType "application/json"

Write-Host "📨 Sending customer email..."
Invoke-RestMethod -Uri "$server/admin/send_email" -Method Post -Body '{"to":"test@example.com","subject":"Welcome!","body":"Test message"}' -ContentType "application/json"

