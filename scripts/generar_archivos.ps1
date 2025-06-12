$folder = "generated"
New-Item -ItemType Directory -Force -Path $folder

for ($i = 1; $i -le 10; $i++) {
    $date = Get-Date -Format "yyyyMMddHHmmss"
    $filePath = "$folder\file_$i.txt"
    "Archivo $i generado a las $date" | Out-File -FilePath $filePath
}

Get-Content "$folder\*.txt"
