## 🧠 VS Code - Offline Installer for Ubuntu (Official Downloads)

<img width="134" height="153" alt="Vs Code Logo Image" src="https://github.com/user-attachments/assets/ecd10b6b-768e-45f7-bc23-8c56d2f9ccc9" />

By running the `./installation_script.sh` it will install the VS Code and install some Extensions and also use my own custom shortcuts and configurations.

---
## ✅ Supported Operating Systems
- **Ubuntu 24.04 LTS**
- **Xubuntu 24.04 LTS**
- **Others DEB Based Linux Os Should Work (I didn't Check all)**
---


This repo is made to install the **Visual Studio Code** offline on Ubuntu-based systems using a pre-packaged `.deb` archive.



## [Release Page to Download](https://github.com/RanaUniverse/vs_code_setup_offline/releases)
[Click This Link To Open The Page](https://github.com/RanaUniverse/vs_code_setup_offline/releases)

## 💻 VS Code Install with My Favourite Settings and Extensions (Offline)

This offline installation will install **VS Code** along with all my favourite extensions and settings — automatically, with no extra prompts.

### ✅ Extensions Included (Offline)


My Favourite:

  - 🎨 **Dragan Color Theme**  

🐍 Python Relaed:

  - Python
  - Pylance
  - Python Debugger
  - Python Environments (New)
  - Black Formatter 

Note: Installing just `ms-python.python` installs **Python + Pylance + Debugger + Environments**.

### 🗂️ VSIX Files Sources
I downloaded the VSIX files manually by right-clicking on the extensions in the VS Code Extensions tab and choosing **Download VSIX**.  

- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - Linux 64 bit

- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) - All Platforms

- [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy) - Linux 64 bit

- [Python Environments](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-python-envs) - Linux 64 bit

- [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) - Direct Download

- [Dragan Color Theme](https://marketplace.visualstudio.com/items?itemName=Miladfathy.dragan-color-theme) - All Platforms
(This Dragan Extensions i will download old version 2.0.8 new verison has color problem with python.)


## Important Before Cloning
This has a lot of files and history so if i do normal clone it will take a lot of resource, so i if need to use and work on this repo i need to only download the current files and setup so i need to use the below command:
```
git clone --depth 1 https://github.com/RanaUniverse/vs_code_setup_offline
```


## 📦 How I Make the Offline Releases

When I want to release a new version:

1. Download the latest `.deb` file from the official VS Code site.
2. Put it in the repo folder. (Due to .gitignore this deb file is not tracked by git.)
3. Update the version number and other information in the release script:
   - `./making_release_zip.sh`
4. Run the script to generate the final offline zip package.

---

## 🔧 Special Notes

- This setup is **specifically for my Ubuntu laptop**.
- It installs VS Code from `.deb`, sets up my favourite theme and Python tools, and configures the necessary settings.
- Extensions are **installed offline** using `.vsix` files.

---

## 🌐 Online Setup Repo (When Internet is Available)

To install everything (latest version and extensions) online, I use this repo:

👉 [Online VS Code Setup](https://github.com/RanaUniverse/vs_code_setup_by_rana_universe/)

```bash
git clone https://github.com/RanaUniverse/vs_code_setup_by_rana_universe/
```

### 📜 Example: Online Extensions Install Commands (Used Before)
```
code --install-extension ms-python.python
code --install-extension miladfathy.dragan-color-theme
code --install-extension ms-python.black-formatter
```
Only First one will install the total 4 python related extensions.

---



### ```git clone https://github.com/RanaUniverse/v2```
This can be done like this.



To download and isntall latest everything i need to use this repo, [Online VS Code Setup](https://github.com/RanaUniverse/vs_code_setup_by_rana_universe/)

```git clone https://github.com/RanaUniverse/vs_code_setup_by_rana_universe/```
