                                                                                           _   _ _             ____        _   _____ _ _           
                                                                                          | \ | (_)_   _____  |  _ \  ___ | |_|  ___(_) | ___  ___ 
                                                                                          |  \| | \ \ / / _ \ | | | |/ _ \| __| |_  | | |/ _ \/ __|
                                                                                          | |\  | |\ V /  __/ | |_| | (_) | |_|  _| | | |  __/\__ \
                                                                                          |_| \_|_| \_/ \___| |____/ \___/ \__|_|   |_|_|\___||___/


## ----------
### Install chezmoi

sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init --apply https://github.com/niv280/dotfiles.git

### Run install script
sudo sh ~/.local/share/chezmoi/dot_local/share/install.sh

## Update
chezmoi Update

                                                                                                                                                   
