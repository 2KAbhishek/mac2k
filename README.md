<div align = "center">

<h1><a href="https://github.com/2kabhishek/mac2k">mac2k</a></h1>

<a href="https://github.com/2KAbhishek/mac2k/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/mac2k?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/mac2k/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/mac2k?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/mac2k/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/mac2k?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/mac2k/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/mac2k?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/mac2k/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/mac2k?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/mac2k/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/mac2k?style=flat&color=e06c75&label="> </a>

<h3>Ultimate Dev Setup for Mac OS 🚀🍎</h3>

<figure>
  <img src="images/screenshot.jpg" alt="mac2k in action">
  <br/>
  <figcaption>mac2k in action</figcaption>
</figure>

</div>

mac2k is a set of handcrafted configs for setting up a complete dev environment on Mac OS.

It makes developing on Mac much more pleasant for CLI lovers.

## ✨ Features

- Sets up a complete dev environment within minutes
- Sets up brew and installs essential packages with Brewfile
- Configures optimal settings for developers
- All the power and tools provider by [dots2k](https://github.com/2kabhishek/dots2k)
- Powerful personalized editing with [nvim2k](https://github.com/2kabhishek/nvim2k)
- Keyboard driven browsing support with [qute2k](https://github.com/2kabhishek/qute2k)
- Tiling window management with [Aerospace](https://github.com/nikitabobko/AeroSpace)
- More!!

## Setup

### 🚀 Installation

```bash
git clone https://github.com/2kabhishek/mac2k
cd mac2k

./setup.sh
```

This will install all necessary packages, symlinks and setup symlinks for you.

To manually run steps from [dots2k setup](https://github.com/2kabhishek/dots2k/tree/main/setup.sh) you can run `https://github.com/2kabhishek/dots2k/tree/main/setup.sh`

### 💻 Usage

#### Keybindings

I also set up some keybindings manually, you can find them in the following docs.

> Hint: Cmd = ⌘/Command/Windows, Opt = ⌥/Option/Alt, Ctrl = ⌃/Control, fn = Function

- [MacOS](./docs/macos.md)
- [Raycast](./docs/raycast.md)
- [Aerospace](./docs/aerospace.md)
- [Arc Browser](./docs/arc.md)
  - [Uses vimium from dots2k](https://github.com/2kabhishek/dots2k/tree/main/docs/vimium.md)
- [Alacritty from dots2k](https://github.com/2kabhishek/dots2k/tree/main/docs/alacritty.md)
- [Tmux from tmux-tilit](https://github.com/2kabhishek/tmux-tilit)
- [Neovim from nvim2k](https://github.com/2kabhishek/nvim2k)
- [Qutebrowser from qute2k](https://github.com/2kabhishek/qute2k)

#### Aliases

This also comes with a bunch of mac aliases in [dots2k shell/aliases.sh](https://github.com/2kabhishek/dots2k/tree/main/config/shell/aliases.sh) to make your life easier.

- `aerr`, `aert`, `aerc` for aeropace reload config, toggle and editing config
- `bri`, `brr`, `brc`, `brs`, `bru` to brew install, uninstall, cleanup, search, update respectively
- `macdis` to disable mac's internal display, useful when using external display, needs restart to re-enable

#### Other Configs

For most tools I'm symlinking configs over from [dots2k](https://github.com/2kabhishek/dots2k).

##### Setting up iTerm

> I use Alacritty as my default terminal now

Run iTerm and open "Preferences", Go to "Profiles" tab and click on "Other Actions" and then click on "Import JSON Profiles"

Select the [./configs/iterm/preofile.json](./configs/profile.json) file and import it.

You can also use the [helper script](./config/iterm/iterm) to open iterm from terminal by symlinking it to your path and running `iterm`.

##### Tiling Window Management

> I use [Aerospace](./config/aerospace/aerospace.toml) as my tiling window manager now

`yabai` and `skhd` together provide a tiling window management system for MacOS.

```bash
# Symlink yabai and skhd configs
ln -sfn "$PWD/config/.yabairc" "$HOME/"
ln -sfn "$PWD/config/.skhdrc" "$HOME/"

# Start yabai and skhd
yabai --start-service
skhd --start-service

# Add alias to restart yabai and skhd
alias macres="yabai --restart-service && skhd --restart-service"
```

## Behind The Code

### 🌈 Inspiration

I am a big fan of CLI and Tiling WMs, MacOS by default doesn't provide a good solution for those, so I decided to configure my own.

### 💡 Challenges/Learnings

- Some hiccups with brew and services
- Learned and implemented recursive git submodules

### 🧰 Tooling

- [dots2k](https://github.com/2kabhishek/dots2k) — Personalized Dev Environment
- [nvim2k](https://github.com/2kabhishek/nvim2k) — Personalized Editor

<hr>

<div align="center">

<strong>⭐ hit the star button if you found this useful ⭐</strong><br>

<a href="https://github.com/2KAbhishek/mac2k">Source</a>
| <a href="https://2kabhishek.github.io/blog" target="_blank">Blog </a>
| <a href="https://twitter.com/2kabhishek" target="_blank">Twitter </a>
| <a href="https://linkedin.com/in/2kabhishek" target="_blank">LinkedIn </a>
| <a href="https://2kabhishek.github.io/links" target="_blank">More Links </a>
| <a href="https://2kabhishek.github.io/projects" target="_blank">Other Projects </a>

</div>
