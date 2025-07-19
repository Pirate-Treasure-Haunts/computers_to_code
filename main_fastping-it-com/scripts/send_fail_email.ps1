# --- Config ---
$smtpServer = "smtp.gmail.com"
$smtpPort = 587
$smtpUser = "w.o.f.l.0.w.o.f.l@gmail.com"
$smtpPass = "isys rjfx hdoo kpus"
$to = "got.girl.camera@gmail.com"
$subject = "FASTPING BACKUP FAILURE"
$body = "Warning: FastPing.It database backup failed on $(Get-Date). Please investigate."

# Send Email
Send-MailMessage -SmtpServer $smtpServer -Port $smtpPort -UseSsl `
    -Credential (New-Object PSCredential $smtpUser, (ConvertTo-SecureString $smtpPass -AsPlainText -Force)) `
    -From $smtpUser -To $to -Subject $subject -Body $body
