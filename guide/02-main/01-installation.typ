#pagebreak()
= Installation

== With `cargo`

If you use already the `rust` programming language then you can use rust to install the latest toolchain.

```bash
# install rust and cargo
curl https://sh.rustup.rs -sSf | sh

# install typst
cargo install --git https://github.com/typst/typst
```

== MacOS

On MacOS you can use `homebrew`

```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install typst
brew install typst
```

== Linux

In Linux you can use the commonly available package manager

```bash
brew install typst
pacman -S typst
xbps-install typst
sudo apt-get install typst
```

== Windows

On Windows you can use `chocolatey`. See: https://chocolatey.org/install

```bash
# install chocolatey
# ensure to use a administrative powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install typst
choco install typst
```