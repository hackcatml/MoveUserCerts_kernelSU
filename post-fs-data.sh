MODDIR=${0%/*}

rm -rf $MODDIR/system/etc/security/cacerts/*

cp /system/etc/security/cacerts/* $MODDIR/system/etc/security/cacerts/
cp /data/misc/user/0/cacerts-added/* $MODDIR/system/etc/security/cacerts/

setfattr -n trusted.overlay.opaque -v y $MODDIR/system/etc/security/cacerts