@echo off
setlocal
:: Double-check the JDK 21 installation directory, as it might differ.
:: Adjust the JAVA_HOME path if JDK 21 is installed in a different location.
set "JAVA_HOME=C:\Program Files\Java\jdk-21"

:: Check if the java.exe exists in the specified JDK 21 directory.
if not exist "%JAVA_HOME%\bin\java.exe" (
    echo Failure: Java JDK 21 is not found at %JAVA_HOME%. Please check the installation path and try again.
    goto end
)

:: If java.exe exists, proceed to set the environment variables.
set "Path=%JAVA_HOME%\bin;%Path%"
echo Success: Java JDK 21 activated.

:end
endlocal
