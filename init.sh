apt-get update
apt-get install -y libwxgtk3.0-gtk3-dev
apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev -y
mkdir -p android/lineage
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
source .exports
cd android/lineage/
git config --global user.email "wikili2003@yandex.com"
git config --global user.name "Wikimew"
repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
repo sync
source build/envsetup.sh
breakfast jalebi