.\bin\docfx.exe .\docfx.json
powershell -ExecutionPolicy Bypass -File .\postbuild.ps1
git add .
git commit -m "updated docs"
git push 