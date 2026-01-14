.\bin\docfx.exe .\docfx.json
powershell -ExecutionPolicy Bypass -File .\postbuild.ps11
git add .
git commit -m "updated docs"
git push 