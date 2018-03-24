#!/bin/bash  
################################################################################  
#  
# Scrip Created by http://CryptoLions.io  
#  
# Change PATH_TO_ARCH to place where you woud like to store archives
# Change networkName to your blockchain network name
###############################################################################  

PATH_TO_ARCH="/var/www/html/blocks"
BLOCKCHAIN_NAME="networkName"
DATE=`date -d "now" +'%Y_%m_%d-%H_%M'`

echo "Archiving Blocks $BLOCKCHAIN_NAME [$DATE]"

./stop.sh
tar -pcvzf $PATH_TO_ARCH/blocks-$BLOCKCHAIN_NAME-$DATE.tar.gz blocks  
ln -sf $PATH_TO_ARCH/blocks-$BLOCKCHAIN_NAME-$DATE.tar.gz $PATH_TO_ARCH/blocks.tar.gz  
./start.sh
