
# Copy config form the system to this repository

cd $(dirname $0)/..

cp -r config/.bashrc.d ~/
cp -r config/.config ~/
cp config/.bashrc ~/
cp config/.clang-format ~/
cp config/.gitconfig ~/
cp config/.inputrc ~/
cp config/.tmux.conf ~/

