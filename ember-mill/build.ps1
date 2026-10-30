param(
    [string]$Source = (Join-Path $PSScriptRoot 'src'),
    [string]$Output = (Join-Path $PSScriptRoot 'demo.zip')
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

if (-not (Test-Path $Source)) { throw "Module source not found: $Source" }
if (Test-Path $Output) { Remove-Item $Output -Force }

$zip = [System.IO.Compression.ZipFile]::Open(
    $Output, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    $files = Get-ChildItem $Source -Recurse -File | Sort-Object FullName
    foreach ($file in $files) {
        $relative = $file.FullName.Substring($Source.Length + 1).Replace('\', '/')
        [void][System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $zip, $file.FullName, $relative,
            [System.IO.Compression.CompressionLevel]::Optimal)
    }
}
finally {
    $zip.Dispose()
}

$count = (Get-ChildItem $Source -Recurse -File).Count
Write-Host "Built $Output from $count files."
