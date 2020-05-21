# maven-ibmjava

Maven on IBM JDK with snapshot repository configured in the "allow-snapshots" optional profile.

There is also a helper script to mount both current folder (as a working directory) and "~/.m2" as maven local repo.

Usage example:

```sh
./mvn.sh -Pallow-snapshots clean package
```
