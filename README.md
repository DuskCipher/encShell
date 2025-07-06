
# DuskCipher Encrypt/Decrypt Tools 🔐

[![Version](https://img.shields.io/badge/version-2.0-blue.svg)](https://github.com/uch-2009/encrypt-tools)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Bash](https://img.shields.io/badge/bash-4.0%2B-orange.svg)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/python-3.6%2B-yellow.svg)](https://www.python.org/)

> Professional bash script encryption/decryption tools with advanced obfuscation capabilities

## 🚀 Features

- ✨ **Advanced Encryption**: Uses bash-obfuscate for secure script protection
- 🛡️ **Secure Decryption**: Safely decrypt previously encrypted scripts
- 🎨 **User-Friendly Interface**: Colorful CLI with intuitive navigation
- 🔧 **Auto Setup**: Automatic dependency installation and environment setup
- 📝 **Built-in Editor**: Integrated nano editor for script creation
- 🔍 **File Detection**: Automatic detection of available script files
- 🏗️ **Professional Structure**: Clean, organized codebase

## 📋 Requirements

- **Bash**: 4.0 or higher
- **Python**: 3.6 or higher
- **Node.js**: For bash-obfuscate package
- **nano**: Text editor (usually pre-installed)

## 🔧 Installation

1. **Quick Start**:
   ```bash
   bash index.sh
   ```

2. **Manual Setup**:
   ```bash
   bash install.sh
   ```

## 📖 Usage

### Getting Started

1. **Launch the application**:
   ```bash
   bash index.sh
   ```

2. **Create a new script** (if you don't have one):
   - Choose option `[1] BUAT SCRIPT BARU`
   - Enter filename (e.g., `myscript.sh`)
   - Write your bash script in nano editor
   - Save with `Ctrl+O` and exit with `Ctrl+X`

3. **Encrypt your script**:
   - Choose option `[2] LANGSUNG KE TOOLS`
   - Select `[1] Encrypt`
   - Enter source filename
   - Enter output filename
   - Your script will be encrypted!

4. **Decrypt a script**:
   - Select `[2] Decrypt`
   - Enter encrypted filename
   - Enter output filename
   - Your script will be decrypted!

### Example Workflow

```bash
# 1. Start the application
bash index.sh

# 2. Create script: myscript.sh
nano myscript.sh

# 3. Encrypt the script
# Input: myscript.sh → Output: myscript_encrypted.sh

# 4. Decrypt when needed
# Input: myscript_encrypted.sh → Output: myscript_decrypted.sh
```

## 📁 Project Structure

```
UCH-2009-Tools/
├── 📄 README.md           # Documentation
├── 🏠 index.sh            # Main entry point
├── ⚙️ install.sh          # Setup and installer
├── 🐍 main.py             # Core encryption/decryption logic
├── 📦 package.json        # Node.js dependencies
├── 🔧 .replit             # Replit configuration
├── 🧪 coba.sh             # Sample test script
├── 🎨 config/             # Configuration files
│   └── colors.sh          # Color definitions
└── 📚 docs/              # Documentation
    ├── CHANGELOG.md       # Version history
    └── GUIDE.md          # User guide
```

## 🎯 Key Components

### 🏠 `index.sh` - Main Interface
- Welcome screen with usage instructions
- Script creation wizard
- File management options
- Professional navigation menu

### ⚙️ `install.sh` - Setup Manager
- Automatic dependency installation
- Environment verification
- Sample script generation
- Colorful progress indicators

### 🐍 `main.py` - Core Engine
- Advanced encryption algorithms
- Secure decryption processes
- File validation and error handling
- Professional CLI interface

## 🔒 Security Features

- **Bash Obfuscation**: Uses industry-standard bash-obfuscate
- **Input Validation**: Comprehensive file and input checking
- **Error Handling**: Graceful error management
- **Safe Operations**: Backup and verification processes

## 🎨 Interface Features

- **Colorful CLI**: Professional color scheme
- **ASCII Art**: Beautiful banners and logos
- **Progress Indicators**: Real-time operation status
- **Interactive Menus**: User-friendly navigation
- **Help System**: Built-in guidance and tips

## 🧪 Testing

Sample scripts are included for testing:

- `coba.sh`: Basic functionality test
- `test_function.sh`: Function encryption test
- `test_loop.sh`: Loop structure test

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**UCH-2009**
- 🌟 Professional Tool Developer
- 🔐 Security & Encryption Specialist
- 📧 Contact: [Your Contact Information]

## 🙏 Acknowledgments

- bash-obfuscate community
- Open source contributors
- Security research community

---

### 💡 Pro Tips

- Always backup your original scripts before encryption
- Test encrypted scripts in a safe environment
- Use descriptive filenames for better organization
- Keep your tools updated for latest security features

**⭐ If you find this tool useful, please give it a star!**
