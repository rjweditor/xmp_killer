# Get all .prlock files in the current directory and all subdirectories
$prlockFiles = Get-ChildItem -Path "." -Filter "*.prlock" -Recurse

# Delete all .prlock files
foreach ($prlockFile in $prlockFiles) {
    Remove-Item -Path $prlockFile -Force
}
