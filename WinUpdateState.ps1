$result = "False"

$result = (&{If(Get-HotFix |?{$_.InstalledOn -gt ((Get-Date).AddDays(-30))}) {"True"} Else {"False"}})

return $result
