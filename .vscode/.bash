BASH="C:\Program Files\Git\bin"
CMD="C:\WINDOWS\system32"
POWERSHELL="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
CODE="C:\Program Files\Microsoft VS Code\bin"
GIT="C:\Program Files\Git\cmd"
JAVA="C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\java\jdk-21.0.2_windows-x64_bin\jdk-21.0.2\bin"
JAVA="C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\java\jdk-21.0.6_windows-x64_bin\jdk-21.0.6\bin"
MVN="C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\maven\apache-maven-3.9.9-bin\apache-maven-3.9.9\bin"
GRADLE="C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\gradle\gradle-8.13-bin\gradle-8.13\bin"
PATH=$(/bin/cygpath -p "$BASH;$CMD;$POWERSHELL;$CODE;$GIT;$JAVA;$MVN;$GRADLE;")

return
setx JAVA_HOME "C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\java\jdk-21.0.2_windows-x64_bin\jdk-21.0.2" > null
setx JAVA_HOME "C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\java\jdk-21.0.6_windows-x64_bin\jdk-21.0.6" > null
setx MAVEN_HOME "C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\maven\apache-maven-3.9.9-bin\apache-maven-3.9.9" > null
setx GRADLE_HOME "C:\Users\julio\Meu Drive (juliomendesdev@gmail.com)\dev\gradle\gradle-8.13-bin\gradle-8.13" > null
setx Path "%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%GRADLE_HOME%\bin;" > null