
# Copy config form the system to this repository

cd $(dirname $0)/..

cp -r .config ~/
cp .bashrc.d ~/
cp .bashrc ~/
cp .clang-format ~/
cp .gitconfig ~/
cp .inputrc ~/
cp .tmux.conf ~/

