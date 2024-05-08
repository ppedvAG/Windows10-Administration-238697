# Pfade definieren
$quellePfad = ""
$zielPfad = ""

# Überprüfen, ob der Quellpfad existiert
if (-not (Test-Path -Path $quellePfad)) {
    Write-Host Quellpfad existiert nicht $quellePfad
    exit
}

# Überprüfen, ob der Zielpfad existiert, falls nicht, erstelle ihn
if (-not (Test-Path -Path $zielPfad)) {
    New-Item -Path $zielPfad -ItemType Directory -Force
}

# Alle Dateien und Unterverzeichnisse von der Quelle zum Ziel kopieren
Copy-Item -Path $quellePfad -Destination $zielPfad -Recurse -Force -Verbose