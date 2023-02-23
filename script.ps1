Remove-Item -Path .\generated\ -Recurse -Force

dotnet new tool-manifest

dotnet tool install --local dotnet-reportgenerator-globaltool

dotnet test --collect:"XPlat Code Coverage" --results-directory ./generated/coverage /p:Exclude="[*]CoverletDemoLibraryTwo*"

dotnet tool run reportgenerator -reports:./generated/coverage/*/coverage.cobertura.xml -targetdir:./generated -reporttypes:HTML

start .\generated\index.html