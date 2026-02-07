# terminal-configs

Personal terminal configuration files for a productive DevOps workflow.

## What's inside

```
.zshrc                  # Main zsh configuration
.zsh/aliases.zsh        # Shell aliases
.zsh/functions.zsh      # Custom shell functions
.configs/starship.toml  # Starship prompt configuration
```

## Tools

- **Zsh** — Shell
- **[Starship](https://starship.rs/)** — Cross-shell prompt
- Custom aliases and functions for daily DevOps/SRE tasks

## Usage

Clone and symlink the files to your home directory, or use as reference for your own setup.

```bash
git clone https://github.com/andersondario/terminal-configs.git
ln -sf terminal-configs/.zshrc ~/.zshrc
ln -sf terminal-configs/.zsh ~/.zsh
ln -sf terminal-configs/.configs/starship.toml ~/.config/starship.toml
```

## License

MIT
