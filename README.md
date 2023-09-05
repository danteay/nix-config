# My personal Nix configuration

## Install

1. Install nix packages.

   ```bash
   curl -L https://nixos.org/nix/install | sh
   ```

2. Enable flakes.

   ```bash
   # ~/.config/nix/nix.conf
   experimental-features = nix-command flakes
   ```

3. Install home-manager.

   ```bash
   nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
   nix-channel --update
   nix-shell '<home-manager>' -A install
   ```

4. Clone this repo to `~/.config/home-manager`

   ```bash
   git clone https://github.com/danteay/nix-config.git ~/.config/home-manager
   ```

### Configure ZSH

1. Add to `/etc/shells` file

   ```bash
   $HOME/.nix-profile/bin/zsh
   ```

2. Change the default shell

   ```bash
   chsh -s $HOME/.nix-profile/bin/zsh
   ```
