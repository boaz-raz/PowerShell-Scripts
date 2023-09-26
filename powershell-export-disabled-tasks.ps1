Get-ScheduledTask -TaskPath "$some_path" | Where-Object state -eq 'Disabled' | foreach {
Export-ScheduledTask -TaskName $_.TaskName -TaskPath $_.TaskPath |
Out-File  "$($_.TaskName).xml" -WhatIf
}
