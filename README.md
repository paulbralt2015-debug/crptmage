# cryptimage

Cryptimage is an open source software under the license GNU GPL v3 which purpose is to reproduce old analog TV encryption systems.

Systems simulated are : 

- discret 11 (used between 1984 and 1995 by french TV network "canal plus") 

- discret 12 (6 frames mode, audience 7)

- nagravision syster (used between 1995 and 2010) 

- videocrypt (used by Sky TV and by several other broadcasters on astra satellites)

- MAC-Eurocrypt

This software allows to encrypt a video file (image and sound) , and allows also a decryption of an encrypted file, by meeting the standard discret11, nagravision syster, videocrypt and MAC-Eurocrypt.
Besides the ability to reproduce in a digital way these encryption systems, its second use is to allow the re-use of hardware descramblers by injecting to them an encrypted video file produced by cryptimage.

Official web site :
http://cryptimage.vot.pl

Dependencies needed to compile the source code : 

- slf4j : https://mvnrepository.com/artifact/org.slf4j/slf4j-api/1.7.7 https://mvnrepository.com/artifact/org.slf4j/slf4j-simple/1.7.7
- xuggle-xuggler 5.4 : https://mvnrepository.com/artifact/xuggle/xuggle-xuggler/5.4


## Windows 10 / Windows 11 (modernized build)

The desktop application uses Java Swing. The startup now creates the interface on Swing's Event Dispatch Thread and selects the operating system look and feel through the public Swing API. The original analog scrambling/descrambling algorithms are intentionally left unchanged.

### Requirements

- 64-bit Windows 10 or Windows 11
- Java 8 runtime (recommended for this legacy Xuggle-based codebase)
- Maven 3.8+ only if building locally

### Build

From the repository root, run:

```powershell
mvn clean package
```

The executable assembly is generated in `target/` with the name `cryptimage-1.9.1-SNAPSHOT_universal-jar-with-dependencies.jar`. Launch it with `java -jar` or use `Lancer-CryptImage.bat`.

### GitHub Actions

The workflow `.github/workflows/windows-build.yml` builds the project on a Windows runner with Java 8 and publishes the runnable JAR as the `CryptImage-Windows-JAR` workflow artifact. Open the **Actions** tab, select a successful run, then download the artifact at the bottom of the run page.

### Compatibility note

This first modernization pass improves Windows startup, Swing threading, platform integration and repeatable Windows packaging. The project still depends on the legacy Xuggle 5.4 media stack; actual video codec/native-library compatibility must be validated on a Windows 10/11 machine with representative input files before claiming full media compatibility.
