param ($fix="KB4601055")

$result = "False"

Write-Output $fix

$result = (&{If(Get-HotFix |?{$_.HotFixID -match $fix }) {"True"} Else {"False"}})

return $result
