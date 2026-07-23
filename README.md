# Homebrew CLIProxyAPI

Homebrew tap for CLIProxyAPI, providing all versions from 7.2.47 onwards.

## Installation

```bash
brew tap wanthigh/cliproxyapi
brew install wanthigh/cliproxyapi/cliproxyapi
```

## Setup Alias (Optional)

To avoid typing the full tap name every time, add this alias to your shell profile (`~/.zshrc` or `~/.bashrc`):

```bash
alias cliproxyapi='brew install wanthigh/cliproxyapi/cliproxyapi'
```

Then reload your shell:

```bash
source ~/.zshrc  # or source ~/.bashrc
```

Now you can simply use:

```bash
cliproxyapi      # Install latest version
cliproxyapi@7.2.90  # Install specific version
```

## Usage

After installation, you can use cliproxyapi as usual:

```bash
cliproxyapi version
cliproxyapi -config /path/to/config.yaml
```

To start as a service:

```bash
brew services start wanthigh/cliproxyapi/cliproxyapi
brew services stop wanthigh/cliproxyapi/cliproxyapi
brew services restart wanthigh/cliproxyapi/cliproxyapi
```

## Install Specific Version

```bash
brew install wanthigh/cliproxyapi/cliproxyapi@7.2.90
brew install wanthigh/cliproxyapi/cliproxyapi@7.2.95
```

## Uninstall

```bash
brew uninstall wanthigh/cliproxyapi/cliproxyapi
brew untap wanthigh/cliproxyapi
```

## Updates

This tap automatically updates every 15 minutes with the latest CLIProxyAPI releases from [CLIProxyAPI GitHub](https://github.com/router-for-me/CLIProxyAPI).
