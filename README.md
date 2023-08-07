# Termux Development Setup

This repository provides a script to set up a development environment in the Termux app for Android. 
It updates and upgrades packages and installs various useful tools and dependencies.

## Table of Contents
- [What is Termux](#what-is-termux)
- [Why Termux](#why-termux)
- [What Can I Do With This](#what-can-you-do-with-this)
- [Requirements](#requirements)
- [Quick Setup](#quick-setup)
- [Manual Setup](#manual-setup)
- [Remote Access](#remote-access)
- [Contributing](#contributing)
- [License](#license)

## What is Termux
Termux is an Android terminal emulator and Linux environment application that works directly with no rooting or setup required. A minimal base system is installed automatically, additional packages are available using the package manager. 

## Why Termux
Termux provides:
* **Portability**: Termux allows you to carry a powerful and customizable Linux environment wherever you go. You can use your Android device as a portable development platform without the need for a separate computer.
* **Command Line Interface**: Termux provides a full-fledged command line interface, giving you access to a wide range of command-line tools, utilities, and programming languages. This allows you to perform tasks and run scripts efficiently, similar to working on a traditional Linux system.
* **Educational and Learning Tool**: Termux serves as an excellent educational resource for learning about Linux, command line tools, and programming. It allows beginners to get hands-on experience with a Linux environment and helps advanced users explore new possibilities and experiment with different technologies.

I learned basic Go programming in Termux.

Whether you are a beginner learning to code or an experienced developer, Termux offers a flexible and convenient platform to explore, experiment, and write code on your Android device.

## What Can You Do With This
By running the setup script in this repository, you can set up the following development environment in Termux:
- Python
- Clang
- Node.js
- Rust
- Golang
- Ruby
- SQLite
- Perl
- Java

## Requirements
- An Android device with the Termux app installed. You can download Termux from the [Google Play Store](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/packages/com.termux/). F-Droid version is recommended
- Internet connectivity to download packages and dependencies during the setup process.

## Quick Setup
To quickly set up the development environment, just copy and paste it to your Termux app:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jothi-prasath/termux-dev-setup/master/setup.sh)"
```
This command downloads the setup.sh script from this repository and executes it using bash.

## Manual Setup
1. Open Termux and install curl
  ```bash
  pkg install git
  ```
2. Run the following command to clone this repository:
  ```bash
  git clone https://github.com/jothi-prasath/termux-dev-setup.git
  ```
3. Navigate to the cloned repository:
  ```bash
  cd termux-dev-setup
  ```
4. Make the setup script executable:
  ```bash
  chmod +x setup.sh
  ```
5. Run the setup script to set up the development environment:
  ```bash
  ./setup.sh
  ```
The script will update and upgrade packages, clean up unnecessary files, and install the required packages and dependencies.

6. After the script completes, you will have a fully set up development environment in Termux. You can now start using the installed tools and packages for your development tasks.

## Remote Access
If you want to remotely access your Termux environment from a Desktop/Laptop, you can follow these steps:

1. Make sure your Termux app is running and your Android device is connected to the same network.

2. Set a password for the SSH server by running the following command in Termux:
  ```bash
  passwd
  ```
2. Note down the IP address of your Android device. You can find it by running the following command.
  ```bash
  ifconfig
  ```
3. Note down the Username of your Android device.
You can find it by running the following command.
  ```bash
  whoami
  ```
4. On your Desktop, open terminal or command prompt.
5. Replace `termux-ip` with the IP address and `termux-username` with the Username:
  ```bash
  ssh termux-username@termux-ip -p 8022
  ```

## Contributing
Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License
This repository is licensed under the MIT License. You are free to modify, distribute, and use the scripts in this repository in accordance with the terms of the license.