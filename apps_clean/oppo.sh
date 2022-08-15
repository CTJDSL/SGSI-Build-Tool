#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR

systemdir=$1
rm -rf $1/../my_heytap/app/*
rm -rf $1/../my_heytap/priv-app/*Google*
rm -rf $1/../my_heytap/priv-app/*Velvet*
rm -rf $1/../my_heytap/priv-app/*Setup*
rm -rf $1/../my_heytap/priv-app/*Auto*
rm -rf $1/../my_preload/app/*
rm -rf $1/../my_preload/del-app/*
rm -rf $1/../my_region/*app/*
rm -rf $1/../my_stock/app/*KeKe*
rm -rf $1/../my_stock/app/*Karaoke*
rm -rf $1/../my_stock/app/*Pay*
rm -rf $1/../my_stock/app/*Health*
rm -rf $1/../my_stock/app/*realmeMovie*
rm -rf $1/../my_stock/del-app/*
rm -rf $1/../my_stock/priv-app/*KeKe*
rm -rf $1/../my_stock/priv-app/*Cast*
rm -rf $1/../my_stock/priv-app/*OShare*
rm -rf $1/../my_stock/priv-app/*SOS*
rm -rf $1/fonts/NotoSans*
rm -rf $1/fonts/NotoSerif*
rm -rf $1/*/*app/*Health*
rm -rf $1/*/*app/*OTA*
rm -rf $1/system_ext/media/notifications/*

rm -rf $1/preload/*
rm -rf $1/app/BackupRestore*
rm -rf $1/app/BTtestmode
rm -rf $1/app/Calculator2
rm -rf $1/app/ChildrenSpace
rm -rf $1/app/EmailPartnerProvider
rm -rf $1/app/FindMyPhoneClient
rm -rf $1/app/Oshare
rm -rf $1/app/OV*
rm -rf $1/app/com.*
rm -rf $1/app/OTA*
rm -rf $1/app/Health*
rm -rf $1/app/ModemTestMode
rm -rf $1/app/talkback
rm -rf $1/*app/*FM*
rm -rf $1/*app/*Recorder*
rm -rf $1/app/OppoDCS
rm -rf $1/app/Youtube
rm -rf $1/priv-app/BlackList
rm -rf $1/priv-app/BlackListApp
rm -rf $1/priv-app/*Browser*
rm -rf $1/priv-app/com.*
rm -rf $1/priv-app/sg.*
rm -rf $1/priv-app/Tag*
rm -rf $1/priv-app/SOS*
rm -rf $1/priv-app/deezer*
rm -rf $1/priv-app/TestApp5G
rm -rf $1/priv-app/com.facebook.system
rm -rf $1/priv-app/SmartDrive
rm -rf $1/priv-app/Velvet
rm -rf $1/reserve
rm -rf $1/app/com.amazon.appmanager
rm -rf $1/*app/*facebook*
rm -rf $1/app/KeKeMarket
rm -rf $1/app/KeKePay
rm -rf $1/app/KeKeUserCenter
rm -rf $1/priv-app/KeKeMarket
rm -rf $1/priv-app/KeKePay
rm -rf $1/priv-app/KeKeUserCenter
rm -rf $1/app/NXPNfcNci
rm -rf $1/app/OcrScanner
rm -rf $1/app/OcrService
rm -rf $1/media/audio/ringtones/ringtone_01*
rm -rf $1/media/audio/ringtones/ringtone_02*
rm -rf $1/media/audio/notifications/notification_01*
rm -rf $1/fonts/D*
rm -rf $1/fonts/Source*
