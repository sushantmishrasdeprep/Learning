# Java Setup Guide

## Installing Java on macOS

### Option 1: Using Homebrew (Recommended)
```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Java JDK
brew install openjdk@17

# Link it so it's available system-wide
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk

# Add to PATH (add this to your ~/.zshrc)
echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Option 2: Using SDKMAN (Recommended for managing multiple Java versions)
```bash
# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java
sdk install java 17.0.2-open
```

### Option 3: Direct Download
1. Visit [Oracle JDK](https://www.oracle.com/java/technologies/downloads/) or [OpenJDK](https://adoptium.net/)
2. Download the macOS installer
3. Follow the installation wizard

## Verify Installation

After installing, verify Java is installed:
```bash
java -version
javac -version
```

You should see output showing the Java version.

## Project Structure

```
java/
├── basics 1/
│   └── help.java
├── SETUP.md
├── compile.sh
└── run.sh
```

## Compiling and Running Java Files

### Manual Method
```bash
# Compile
javac "basics 1/help.java"

# Run
java -cp "basics 1" help
```

### Using the Scripts
```bash
# Compile all Java files
./compile.sh

# Run a specific class
./run.sh help
```

## IDE Setup

### VS Code
1. Install the "Extension Pack for Java" extension
2. VS Code will automatically detect Java and prompt you to install required extensions

### IntelliJ IDEA
1. Download and install IntelliJ IDEA Community Edition (free)
2. Open the `java` folder as a project
3. IntelliJ will automatically configure Java
