#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR

systemdir=$1
# Remove stock apks
rm -rf $1/app/AIEngine
rm -rf $1/app/APrintSpooler
rm -rf $1/app/ARCoreStub0
rm -rf $1/app/BBKCrontab
rm -rf $1/app/BBKFMRadio
rm -rf $1/app/BBKLOG
rm -rf $1/app/BBKPhoneInstructions
rm -rf $1/app/BSPTest
rm -rf $1/app/CustomTool
rm -rf $1/app/EngineerCamera
rm -rf $1/app/EPM
rm -rf $1/app/EWarranty
rm -rf $1/app/Feedback
rm -rf $1/app/FingerprintEngineer
rm -rf $1/app/FloatingCloud
rm -rf $1/app/Ft*36
rm -rf $1/app/GlobalSearch
rm -rf $1/app/GmailProvider
rm -rf $1/app/NetworkImprove
rm -rf $1/app/Nvt*81
rm -rf $1/app/Plant
rm -rf $1/app/LogSystem
rm -rf $1/app/PlayAutoInstallStub
rm -rf $1/app/VLife_vivo
rm -rf $1/app/VivoAssistant
rm -rf $1/app/VivoSmartNip
rm -rf $1/app/VivoTips
rm -rf $1/app/VivoTws
rm -rf $1/app/VivoUnionPayEx
rm -rf $1/app/VivoWebsite
rm -rf $1/app/vivoDemoVideo
rm -rf $1/app/vivoEngineerMode
rm -rf $1/app/WifiEngineerMode
rm -rf $1/app/YandexActive
rm -rf $1/priv-app/LocalTransport
rm -rf $1/priv-app/ONS
rm -rf $1/priv-app/Omacp
rm -rf $1/priv-app/VivoBrowser
rm -rf $1/priv-app/VivoOffice
rm -rf $1/product/priv-app/SearchSelector

# Remove facebook apks
rm -rf $1/app/facebook-appmanager
rm -rf $1/priv-app/facebook-installer
rm -rf $1/priv-app/facebook-services

# Remove GApps apks
rm -rf $1/app/GoogleLens
rm -rf $1/app/GoogleLensTier
rm -rf $1/product/app/CalendarGoogle
rm -rf $1/product/app/GoogleContacts
rm -rf $1/product/app/Chrome
rm -rf $1/product/app/Duo
rm -rf $1/product/app/Gmail2
rm -rf $1/product/app/GoogleAssistant
rm -rf $1/product/app/GooglePay
rm -rf $1/product/app/GoogleTTS
rm -rf $1/product/app/Keep
rm -rf $1/product/app/Maps
rm -rf $1/product/app/Photos
rm -rf $1/product/app/YTMusic
rm -rf $1/product/app/YouTube
rm -rf $1/product/app/talkback
rm -rf $1/product/priv-app/AndroidAutoStub
rm -rf $1/product/priv-app/Velvet
rm -rf $1/product/priv-app/Wellbeing
rm -rf $1/product/data-app/*
rm -rf $1/product/app/TrichromeLibrary

# Remove useless folder
rm -rf $1/data

# Google gms精简需要的prop属性
sed -i '/ro.com.google.gmsversion/d' $systemdir/product/build.prop
