# 🐟 Modern Development Environment Dotfiles

A complete Fish shell and Neovim development setup for Ubuntu with modern CLI tools, beautiful prompts, and productivity enhancements.

![Fish Shell](https://img.shields.io/badge/Shell-Fish-blue?style=flat-square&logo=gnu-bash)
![Neovim](https://img.shields.io/badge/Editor-Neovim-green?style=flat-square&logo=neovim)
![Ubuntu](https://img.shields.io/badge/OS-Ubuntu-orange?style=flat-square&logo=ubuntu)

## ✨ Features

- 🐟 **Fish Shell** - Smart autocompletions and syntax highlighting
- 🌊 **Tide Prompt** - Beautiful, fast, and informative prompt
- 📝 **Neovim** - Modern Vim with plugins and AI assistance
- 🔍 **Modern CLI Tools** - Fast alternatives to traditional commands
- 🔧 **Developer Tools** - Git, LSP, and productivity enhancers

## 🛠️ Tools Included

### Shell & Prompt

- **Fish Shell** - User-friendly shell with great defaults
- **Fisher** - Plugin manager for Fish
- **Tide** - Asynchronous prompt with Git integration
- **z** - Smart directory jumping

### File & Search Tools

- **ripgrep (rg)** - Ultra-fast text search
- **fd** - Fast file finder
- **fzf** - Interactive fuzzy finder

### Development Tools

- **Neovim** - Modal editor with modern features
- **GitHub Copilot** - AI-powered code completion
- **lazygit** - Terminal UI for Git
- **Tree-sitter** - Syntax highlighting and parsing

## 🚀 Quick Install

### Prerequisites

```bash
# Update system
sudo apt update && sudo apt upgrade -y
```

### 1. Install Fish Shell

```bash
sudo apt update
sudo apt install fish
```

### 2. Install Development Tools

```bash
# Build tools
sudo apt install build-essential cmake pkg-config libssl-dev git curl wget unzip

# Node.js & npm
sudo apt install -y nodejs npm

# Search tools
sudo apt install ripgrep fd-find fzf
```

### 3. Install lazygit

```fish
# Switch to fish shell first
fish

# Install lazygit
set LAZYGIT_VERSION (curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v$LAZYGIT_VERSION/lazygit_{$LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm lazygit lazygit.tar.gz
```

### 4. Install Fish Plugins

```fish
# Install plugins
fisher install IlanCosman/tide@v6        # Tide prompt
fisher install jethrokuan/z              # Directory jumping
fisher install PatrickF1/fzf.fish       # fzf integration
```

## 🔐 Git Setup

### Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
cat ~/.ssh/id_ed25519
```

### Configure Git

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

## 📂 File Structure

```
~/.config/
├── fish/
│   ├── config.fish           # Fish configuration
│   └── functions/            # Custom functions
├── nvim/                     # Neovim configuration
└── ...

```

## 🚀 Usage

### Key Features

**Smart Directory Navigation:**

```bash
z project    # Jump to frequently used directories
repo         # Fuzzy find and cd to git repositories
```

**Enhanced File Listing:**

```bash
ll           # Detailed list with Git status
lg           # List with Git information
```

**Git Workflow:**

```bash
lazygit      # Beautiful Git UI
```

**Search and Find:**

```bash
rg "pattern"        # Fast text search
fd filename         # Fast file find
history | fzf       # Fuzzy search command history
```

## 🛟 Troubleshooting

### Fish Shell Issues

- If colors don't work in Neovim terminal, add terminal color settings to Fish config
- Run `tide configure` if prompt doesn't appear correctly

## 🤝 Contributing

**Made with ❤️ for productive development**
