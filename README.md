# ⚡ hxConfig – A Fully Setup Helix Configuration 🚀

### **Because configuring an editor shouldn't be harder than using it.**

## 🎯 Overview

**hxConfig** is a **fully setup, runnable** configuration for [Helix](https://helix-editor.com/), the modern, fast, and modal code editor. Instead of spending hours tweaking keybindings and settings, just use hxConfig and start coding immediately.

✅ **Pre-configured with sensible defaults** – So you don’t have to.
✅ **Works out of the box** – No extra setup, just install and go.
✅ **Optimized for speed and efficiency** – Because Helix is fast, and so should you be.

## 🚀 Installation

### Using Nix (Recommended)

Since hxConfig is packaged as a Nix flake, you can run it directly:

```sh
nix shell github:NewDawn0/hxConfig
```

Or install it permanently:

```sh
nix-env -iA nixpkgs.ndhelix
```

### Manual Installation

Clone the repository and copy the config to your Helix config directory:

```sh
git clone https://github.com/NewDawn0/hxConfig.git
mkdir -p ~/.config/helix
cp -r hxConfig/* ~/.config/helix/
```

## 🎛️ Features

- **🔥 Pre-tuned keybindings** – Because muscle memory matters.
- **🎨 Custom theme & UI tweaks** – A beautiful yet functional editing experience.
- **🛠️ Essential plugins pre-configured** – No need to install them manually.

## 🏗️ Usage

After installing, just launch Helix as usual:

```sh
hx
```

Your **fully configured** Helix experience is now ready! 🚀

## 📝 Customization

Want to tweak the config? No problem! Edit the files in the `./config` directory
**Make it yours!**

## 📜 License

MIT – **Because open-source should stay open.**

## 🔗 Links

🌐 **GitHub:** [github.com/NewDawn0/hxConfig](https://github.com/NewDawn0/hxConfig)
