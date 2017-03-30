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
cd aosgp

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

repo sync -j16 -f --force-sync --no-clone-bundle


#Compilacion
. build/envsetup.sh && brunch hwY635
 
