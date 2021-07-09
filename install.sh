sudo apt-get install -y libx11-dev
sudo apt-get install -y libxtst-dev
sudo apt-get install -y libxt-dev
sudo apt-get install -y libxinerama-dev
sudo apt-get install -y libx11-xcb-dev
sudo apt-get install -y libxkbcommon-dev
sudo apt-get install -y libxkbcommon-x11-dev
sudo apt-get install -y libxkbfile-dev

mkdir -p build && cd build
cmake -S .. -D BUILD_SHARED_LIBS=ON -D BUILD_DEMO=ON -DCMAKE_INSTALL_PREFIX=../dist
cmake --build . --parallel 2 --target install
