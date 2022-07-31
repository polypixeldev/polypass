# polypass
A password manager written in Dart/Flutter

## Windows installer
To compile the Windows installer, build the app for Windows in release mode and copy the contents of build/windows/runner/Release to windows-install. Copy setup-script-template.iss to setup-script.iss and change the RepoPath variable to the absolute path of this cloned repository. Compile the installer with Inno Setup, when it is finished the installer executable will be in the Output directory.