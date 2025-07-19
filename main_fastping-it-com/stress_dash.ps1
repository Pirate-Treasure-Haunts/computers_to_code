$hey = "D:\code\fastping-it-com\tools\hey.exe"
$server = "http://161.35.248.233:9000"

Write-Host "🚀 Running load test (500 requests, 50 concurrent)..."
& $hey -n 500 -c 50 -m POST -H "Content-Type: application/json" -d '{"name":"LoadTest","email":"load@test.com"}' "$server/admin/create_customer"
