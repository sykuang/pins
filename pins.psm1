function md5sum ([string]$filename) {
  certutil -hashfile $filename MD5
}
function cat ([string]$filename) {
  pygmentize.bat $filename
}
function which ([string]$filename) {
  Get-Command ($filename)
}
Export-ModuleMember -Function cat
Export-ModuleMember -Function md5sum
Export-ModuleMember -Function which
