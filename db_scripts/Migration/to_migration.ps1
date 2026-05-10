#pegar o diretorio atual

$ScriptDirectory = Split-Path -path $MyInvocation.MyCommand.Definition -Parent

#arquivo de saida 
$OutputFile = Join-Path -Path $ScriptDirectory -ChildPath "migration.sql"

#verificar se o arquivo de saida existe, se sim, deletar
if (Test-Path -Path $OutputFile) {
    Remove-Item -Path $OutputFile
}

#pegar todos os arquivos sql do diretorio
$SqlFiles = Get-ChildItem -Path $ScriptDirectory -Filter "*.sql" | Sort-Object Name

#ler cada arquivo sql e concatenar o conteudo no arquivo de saida
foreach ($SqlFile in $SqlFiles) {
    Get-Content $SqlFile.FullName | Out-file -Append -FilePath $OutputFile
    "GO" | Out-file -Append -FilePath $OutputFile
}

Write-Host "Migration file created at: $OutputFile"