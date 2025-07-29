# Polypass
A simple, secure, and easy to use password manager written with Dart, Flutter, and Rust.

<img width="1332" height="819" alt="image" src="https://github.com/user-attachments/assets/febe8188-0630-4388-9db7-3cadd60f9568" />

Currently supports Windows, Linux, and Android. Install from [Flathub](https://flathub.org/apps/io.github.polypixeldev.Polypass) or the [latest release](https://github.com/polypixeldev/polypass/releases).

## Features
- Basic password management: create, search, view, update, and delete items with a name, username, password, and optional note
- Secure AES-256 encryption and Argon2 hashing
- Optionally, group items together and nest groups
- Remote file support via FTP, with local caching
- Built-in random password generator

## Development

### Windows installer
To compile the Windows installer, build the app for Windows in release mode and copy the contents of build/windows/runner/Release to windows-install. Copy setup-script-template.iss to setup-script.iss and change the RepoPath variable to the absolute path of this cloned repository. Compile the installer with Inno Setup, when it is finished the installer executable will be in the Output directory.
