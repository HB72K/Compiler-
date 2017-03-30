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

 make clean && make clobber


#Compilacion
. build/envsetup.sh && brunch hwY635
 
