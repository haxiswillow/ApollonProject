# Apollon Project
# Dev. Mainteiner : Haxis
#!/system/bin/sh
MODDIR=${0%/*}

rm /data/cache/*
rm /data/local/*.apk
rm /cache/*
rm /data/log/*.log
rm /data/local/tmp/*.apk
rm /cache/recovery/*
rm /data/*.log
rm /data/backup/pending/*.tmp
rm /data/tombstones/*
rm /sdcard/LOST.DIR/*

echo "3" > /proc/sys/vm/drop_caches;
exit 0;

