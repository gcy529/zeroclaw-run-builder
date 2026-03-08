$env:HOME = "d:\temp"
$token = Get-Content "d:\Trae CN\github_token.txt" -Raw
& 'd:\Trae CN\wenjian\PortableGit\bin\git.exe' -c http.sslVerify=false push https://${token}@github.com/gcy529/zeroclaw-run-builder.git main --force
