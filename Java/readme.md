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
jstack -l JAVA_PID > jstack.out
```
```
./jstack.sh <PID> <# > <TIME IN SEC>
./jstack.sh 1998 2 4
```

[Java Thread Dumps](https://access.redhat.com/solutions/18178)


```
jhsdb jstack --pid <PID> > jstack.out
```