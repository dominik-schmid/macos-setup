# Backup

- Backup dotfiles using rsync. Look at `2-restore-dotfiles.sh` and reverse the process. Currently, there has been no script provided because of the unknown general target location and various source files. Remember to copy all(?) .dotfiles, i.e. `.zshrc`, `.zshprofile`, `.gitgnore`, `.config` folder, etc.

# Restore

## Initial Step - Clone Repository

```
git clone https://github.com/dominik-schmid/macos-setup.git
```

## Perform Setup

Execute one script after the other. Execute the Ansible playbooks for the private and office Mac accordingly.

When opening Neovim for the first time you'll receive a few errors. That is normal and ok. You need to install the plugins with

```
:PlugInstall
```

to install all plugins and get rid of the errors.

## Recurring Tasks

Create a cron job to execute the update script for Homebrew, Rust and pyenv

```
./update-brew-rust-and-pyenv.sh
```

## To Do After Setup

- Copy/move `~/data/` folder to new Mac.
- Copy the Preferences of Alfred to `~/.config/Alfred/` and configure Alfred to use this location.
- Check if my books in the Books App are imported via iCloud

# Why I Chose to Use Ansible Over Only Shell Scripts

- Ansible playbooks are (kinda) idempotent and provide error handling out of the box.
- It's possible to encrypt files with Ansible Vault and store them in a repo, though I'm not doing that at the moment.
- I can create multiple Ansible playbooks and tag the steps, i.e. with "personal" or "work", and let Ansible only execute the necessary steps. It's also possible to easily imported other playbooks and therefore make the management of complex scripts/playbooks easier.
