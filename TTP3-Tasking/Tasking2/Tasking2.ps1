$Trigger = New-ScheduledTaskTrigger -Once -At "6:00 am"
$Action = New-ScheduledTaskAction -Execute "calc.exe"
Register-ScheduledTask -TaskName "Advanced Task" -Trigger $Trigger -Action $Action 