# kossy dotfiles
My dotfiles. Including configs for i3, polybar, rofi, tmux, git, bash. Managed using GNU stow.

## Installing
Clone repository into home directory `~/`

Install `stow` is required. This can be found with most package managers.

Once stow is installed run `./load_dotfiles.sh` to load all the dotfiles in.

If not all dotfiles are required, then `stow [name]` can be used to load in a particular set of configs. e.g `stow git`

### i3
Config uses `light` or `light-git` arch package to control screen brightness.


## Git
All personal information should be stored in ` ~/.gitconfig.local` and not in
`.gitconfig`.

Example ` ~/.gitconfig.local`:
```
[user]
	email = example@example.com
	name = FirstName SecondName (Username)
	signingkey = KEY

```
