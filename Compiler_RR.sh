#
##################################
# Gr2_srk  <gr2.stark@gmail.com> #	
# Script Basico para compilar RR #
##################################
#

#!/bin/bash
echo ' ' 
echo ' '
echo ' Entrando al directorio'
echo ' ' 
echo ' '
cd RR 

rm -rf ~/.jack*
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server
rm -rvf ../.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G

echo ' ' 
echo ' '
echo ' Iniciando compilación'
echo ' ' 
echo ' '
echo ' Estableciendo tiempo de apagado en 4 horas'
sudo shutdown -h +240

repo sync -j16 -f --force-sync --no-clone-bundle

#LocalManifest
git clone https://github.com/gr2007/Local_manifest -b master .repo/local_manifests
repo sync --force-sync --force-broken

#Compilacion
. build/envsetup.sh && brunch hwY635
 
