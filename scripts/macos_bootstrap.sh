brew_tools=(zsh neovim ctags mosh go git python node)
brew_taps=(homebrew/cask-fonts)
brew_casks=(iterm2 dropbox 1password google-chrome the-unarchiver sketch spotify slack visual-studio-code postman alfred font-input intellij-idea-ce)

# Install homebrew
echo "[homebrew] installing homebrew..."
if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "[homebrew] exists. Skipping installation."
fi

# Configure taps
echo "[homebrew] configuring taps..."
for t in ${brew_taps[@]}; do
    brew tap $t
done

# Install CLI tools and Casks via homebrew
echo "[homebrew] installing CLI tools..."
for t in ${brew_tools[@]}; do
    brew list $t || brew install $t
done
echo "[homebrew] installing casks..."
for c in ${brew_casks[@]}; do
    brew cask list $c || brew cask install $c
done

echo "[misc] installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "[misc] installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "[misc] installing vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "[misc] installing SDKMan..."
curl -s "https://get.sdkman.io" | bash
