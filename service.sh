MODDIR=${0%/*}

cp -f /system/etc/security/cacerts/* $MODDIR/system/etc/security/cacerts/
cp -f /data/misc/user/0/cacerts-added/* $MODDIR/system/etc/security/cacerts/

setfattr -n trusted.overlay.opaque -v y $MODDIR/system/etc/security/cacerts