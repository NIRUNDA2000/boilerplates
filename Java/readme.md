#### Install Java

[Oracle Java JDK](https://www.oracle.com/java/technologies/downloads/)

```
vi ~/.bashrc
```
```
#Set the JAVA_HOME
export JAVA_HOME=/usr/local/jdk-22
#Add the JAVA_HOME to the PATH
export PATH="$JAVA_HOME/bin:$PATH"
```

```
./jstack.sh <PID> <# > <TIME IN SEC>

./jstack.sh 1998 2 4
```