# Assuming 'fortran' is your Conda environment name
# Activate the Conda environment
conda activate fortran
# Set the project directory path
$PROJECT_DIR="D:\AritrA\Computational_Physics_With_fortran\FortranBasics"
# Change directory to the project directory
Set-Location -Path $PROJECT_DIR
# Run the make command with the argument $1 (if provided)
& make $args[0]


if ($LastExitCode -eq 0) {
    # Run the compiled executable
    Write-Host "Running build\bin\main.exe ..............."
    Write-Host ""
    & .\build\bin\main.exe
} else {
    Write-Host "Make failed. Check the build output for errors."
}