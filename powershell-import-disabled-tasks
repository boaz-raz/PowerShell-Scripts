$xmlFilesPath = '$some_path'

# Retrieve all XML files from the directory
$xmlFiles = Get-ChildItem -Path $xmlFilesPath -Filter "*.xml"

foreach ($file in $xmlFiles) {
    # Extract the name without extension to use as task name
    $taskName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    
    # Register the task using the XML definition
    Register-ScheduledTask -User '$user_name' -Password '$some_pass' -TaskPath '$some_path' -TaskName $taskName -Xml (Get-Content $file.FullName | Out-String)
}
