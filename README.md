# vps-config


sudo apt update
sudo apt upgrade

sudo apt install -y git cmake build-essential libboost-all-dev

mkdir libs
mkdir github-repos

cd libs
git clone --branch 4.10-release https://github.com/emweb/wt.git wt 
cd wt 
mkdir build 
cd build 
cmake ../
-DENABLE_SQLITE=ON
-DENABLE_POSTGRES=ON
-DBUILD_EXAMPLES=OFF
-DBUILD_TESTS=OFF
-DENABLE_LIBWTTEST=OFF 
make 
sudo make install 
sudo cp /usr/local/lib/libwt*.so.* /usr/lib/ 
cd ../../..

ssh-keygen -t ed25519 -C "croitoriu.alexandru.code@gmail.com"

git@github.com:work-smarter/vps-config.git

git config --global user.name "Alexandru Croitoriu"
git config --global user.email "croitoriu.alexandru.code@gmail.com"