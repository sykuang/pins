function md5sum ([string]$filename) {
  certutil -hashfile $filename MD5
}
function cat ([string]$filename) {
  pygmentize.bat $filename
}
function which ([string]$filename) {
  Get-Command ($filename)
}
function open ([string]$filename) {
  Invoke-Item($filename)
}
function time {
  param (
    [string]$command
  )

  $start = Get-Date
  Invoke-Expression $command
  $end = Get-Date

  Write-Host "Time taken: $(($end - $start).TotalSeconds) seconds"
}
function wget {
  param (
    [string]$url,
    [string]$output
  )

  Invoke-WebRequest -Uri $url -OutFile $output
}
Export-ModuleMember -Function cat
Export-ModuleMember -Function md5sum
Export-ModuleMember -Function which
Export-ModuleMember -Function open
Export-ModuleMember -Function time
Export-ModuleMember -Function wget
