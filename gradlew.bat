@echo off
set DIR=%~dp0
if "%DIR%"=="" set DIR=.
set APP_HOME=%DIR%
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
if not exist "%CLASSPATH%" (
  echo ERROR: Gradle wrapper JAR is missing: %CLASSPATH%
  exit /b 1
)
java %JAVA_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
