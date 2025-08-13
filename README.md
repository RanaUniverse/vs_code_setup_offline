## 🧠 VS Code - Offline Installer for Ubuntu (Official Downloads)

<img width="134" height="153" alt="Vs Code Logo Image" src="https://github.com/user-attachments/assets/ecd10b6b-768e-45f7-bc23-8c56d2f9ccc9" />

By running the `./installation_script.sh` it will install the VS Code and install some Extensions and also use my own custom shortcuts and configurations.

---
## ✅ Supported Operating Systems
- **Ubuntu 24.04 LTS**
- **Xubuntu 24.04 LTS**
- Other Ubuntu-based OSes may work, but I haven't tested those.
---


This repo is made to install the **Visual Studio Code** offline on Ubuntu-based systems using a pre-packaged `.deb` archive.

Example of a Version:
> **Version:** `1.103.0`  
> **Last Updated:** `13 August 2025`






## 💻 VS Code Install with My Favourite Settings and Extensions (Offline)

This offline installation will install **VS Code** along with all my favourite extensions and settings — automatically, with no prompts.

### ✅ Extensions Included (Offline)

My Favourite:
    Dragan Color Theme

Python:
    Python Debugger
    Python
    Pylance
    Black Formatter


My Favourite:

  - 🎨 **Dragan Color Theme**  

🐍 Python Relaed:

  - Python
  - Pylance
  - Python Debugger
  - Python Environments (New)
  - Black Formatter 

Note: Installing just `ms-python.python` installs **Python + Pylance + Debugger + Environments**.

### 🗂️ VSIX Files Source
I downloaded the VSIX files manually by right-clicking on the extensions in the VS Code Extensions tab and choosing **Download VSIX**.  

Python - Linux 64
Pylance - All Platforms
Python Debugger - Linux 64
Python Environments - Linux 64

Black Formatter - Direct Download
Dragan Color Theme - All Platforms

These were saved in the repo's `extensions/` folder during the **1 February 2025 Release**.


## 📦 How I Make the Offline Releases

When I want to release a new version:

1. Download the latest `.deb` file from the official VS Code site.
2. Put it in the repo folder.
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
