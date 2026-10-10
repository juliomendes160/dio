export JAVA_HOME="C:\Users\Julio\Meu Drive (juliomendesdev@gmail.com)\dev\java\jdk-8u281-windows-x64\jdk1.8.0_281"
export MAVEN_HOME="C:\Users\Julio\Meu Drive (juliomendesdev@gmail.com)\dev\maven\apache-maven-3.8.2-bin\apache-maven-3.8.2"
export PATH=$(/bin/cygpath -p -u "$JAVA_HOME\bin;$MAVEN_HOME\bin;$PATH;")

setx JAVA_HOME "$JAVA_HOME"
setx MAVEN_HOME "$MAVEN_HOME"
setx Path "$JAVA_HOME\bin;$MAVEN_HOME\bin;"