# Backup

- Backup dotfiles using rsync. Look at `2-restore-dotfiles.sh` and reverse the process. Currently, there has been no script provided because of the unknown general target location and various source files. Remember to copy all(?) .dotfiles, i.e. `.zshrc`, `.zshprofile`, `.gitgnore`, `.config` folder, etc.

# Restore

## Initial Step - Clone Repository

```
git clone https://github.com/dominik-schmid/macos-setup.git
```

## Perform Setup

Execute one script after the other. Execute the Ansible playbooks for the private and office Mac accordingly.

## Recurring Tasks

Create a cron job to execute the update script for Homebrew, Rust and pyenv

```
./update-brew-rust-and-pyenv.sh
```

## To Do After Setup

- Copy/move `~/data/` folder to new Mac.
- Copy the Preferences of Alfred to `~/.config/Alfred/`
- Check if my books in the Books App are imported via iCloud
