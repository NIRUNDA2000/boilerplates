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

```
jps -h
jps -l
jps -m
jps -v
```

```
jstack -l PID
```
```
jstack -e PID
```
jstack -e PID > jstack1.out
```

```
[perf@rhel9 ~]$ jps -v
3237 webapp-runner-8.0.33.4.jar -Xmx2g -DlogDir=. -DuploadDir=.
3429 Jps -Dapplication.home=/usr/local/jdk-22 -Xms8m -Djdk.module.main=jdk.jcmd
```
```
[perf@rhel9 ~]$ jinfo -flags 3237
VM Flags:
-XX:CICompilerCount=2 -XX:ConcGCThreads=1 -XX:G1ConcRefinementThreads=2 -XX:G1EagerReclaimRemSetThreshold=12 -XX:G1HeapRegionSize=1048576 -XX:G1RemSetArrayOfCardsEntries=12 -XX:G1RemSetHowlMaxNumBuckets=8 -XX:G1RemSetHowlNumBuckets=4 -XX:InitialHeapSize=60817408 -XX:MarkStackSize=4194304 -XX:MaxHeapSize=2147483648 -XX:MaxNewSize=1287651328 -XX:MinHeapDeltaBytes=1048576 -XX:MinHeapSize=8388608 -XX:NonNMethodCodeHeapSize=5826188 -XX:NonProfiledCodeHeapSize=122916026 -XX:ProfiledCodeHeapSize=122916026 -XX:ReservedCodeCacheSize=251658240 -XX:+SegmentedCodeCache -XX:SoftMaxHeapSize=2147483648 -XX:+UseCompressedOops -XX:+UseFastUnorderedTimeStamps -XX:+UseG1GC
```
```
[perf@rhel9 ~]$ jinfo -sysprops 3237
Java System Properties:
#Sun Apr 07 10:54:48 EDT 2024
catalina.base=/home/perf/buggyapp/target/tomcat.9010
catalina.home=/home/perf/buggyapp/target/tomcat.9010
catalina.useNaming=false
file.encoding=UTF-8
file.separator=/
java.class.path=webapp-runner-8.0.33.4.jar
java.class.version=66.0
java.home=/usr/local/jdk-22
java.io.tmpdir=/tmp
java.library.path=/usr/java/packages/lib\:/usr/lib64\:/lib64\:/lib\:/usr/lib
java.runtime.name=Java(TM) SE Runtime Environment
java.runtime.version=22+36-2370
java.specification.name=Java Platform API Specification
java.specification.vendor=Oracle Corporation
java.specification.version=22
java.vendor=Oracle Corporation
java.vendor.url=https\://java.oracle.com/
java.vendor.url.bug=https\://bugreport.java.com/bugreport/
java.version=22
java.version.date=2024-03-19
java.vm.compressedOopsMode=32-bit
java.vm.info=mixed mode, sharing
java.vm.name=Java HotSpot(TM) 64-Bit Server VM
java.vm.specification.name=Java Virtual Machine Specification
java.vm.specification.vendor=Oracle Corporation
java.vm.specification.version=22
java.vm.vendor=Oracle Corporation
java.vm.version=22+36-2370
jdk.debug=release
line.separator=\n
logDir=.
native.encoding=UTF-8
os.arch=amd64
os.name=Linux
os.version=5.14.0-362.24.2.el9_3.x86_64
path.separator=\:
stderr.encoding=UTF-8
stdout.encoding=UTF-8
sun.arch.data.model=64
sun.boot.library.path=/usr/local/jdk-22/lib
sun.cpu.endian=little
sun.io.unicode.encoding=UnicodeLittle
sun.java.command=webapp-runner-8.0.33.4.jar --port 9010 buggyapp.war
sun.java.launcher=SUN_STANDARD
sun.jnu.encoding=UTF-8
sun.management.compiler=HotSpot 64-Bit Tiered Compilers
uploadDir=.
user.country=US
user.dir=/home/perf/buggyapp
user.home=/home/perf
user.language=en
user.name=perf
user.timezone=America/New_York

```