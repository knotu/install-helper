#!/usr/bin/env bash

# done real quick. not final in any way. 

echo "terminator &" >> ~/.xinitrc
echo "exec jwm" >> ~/.xinitrc 

rkvm() {
git clone https://github.com/htrefil/rkvm.git

cd rkvm || exit

cargo build --release
sudo cp target/release/rkvm-client /usr/bin/
sudo cp target/release/rkvm-server /usr/bin/
sudo cp target/release/rkvm-certificate-gen /usr/bin/ # Optional
sudo cp systemd/rkvm-client.service /usr/lib/systemd/system/
sudo cp systemd/rkvm-server.service /usr/lib/systemd/system/
}

install-packages() {
sudo apt install build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev curl gcc make dmenu clang libevdev-dev xorg chromium micro terminator jwm
}

install-rust(){
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

#enable services
ssh-on(){

sudo systemctl enable sshd
sudo systemctl start sshd
}

"$@"
