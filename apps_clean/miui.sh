#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR
systemdir=$1
rm -rf $1/data-app/*
rm -rf $1/priv-app/MIUIAod
rm -rf $1/priv-app/MIUIBrowser
rm -rf $1/priv-app/MIUIContentExtension
rm -rf $1/priv-app/MIUIMusic
rm -rf $1/priv-app/Mirror
rm -rf $1/priv-app/MIService
rm -rf $1/priv-app/Traceur
rm -rf $1/priv-app/Tag
rm -rf $1/priv-app/Voice*
rm -rf $1/priv-app/MiuiCamera
rm -rf $1/priv-app/MIUIShare
rm -rf $1/priv-app/MIUIYellowPage
rm -rf $1/app/MIPay
rm -rf $1/app/mab
rm -rf $1/app/*FileExplorer*
rm -rf $1/app/*Biometric*
rm -rf $1/app/*daemon*
rm -rf $1/app/MIUICalculato*
rm -rf $1/app/*Bug*
rm -rf $1/app/MIUISuperMarket 
rm -rf $1/product/data-app/*
rm -rf $1/product/app/TrichromeLibrary
rm -rf $1/*app/*eibo*
# Nuke MIUI useless system apks
rm -rf $1/app/MIUINotes
rm -rf $1/app/WMService
rm -rf $1/app/MIRadioGlobalBuiltin
rm -rf $1/app/PaymentService
rm -rf $1/app/VoiceAssist
rm -rf $1/app/NextPay
rm -rf $1/app/com.miui.qr
rm -rf $1/app/MiuiBugReport
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/BasicDreams
rm -rf $1/app/BugReport
rm -rf $1/app/HybridAccessory
rm -rf $1/app/HybridPlatform
rm -rf $1/app/MSA-Global
rm -rf $1/app/Music2
rm -rf $1/app/Photos
rm -rf $1/app/TranslationService
rm -rf $1/app/Videos
rm -rf $1/app/YouDaoEngine
rm -rf $1/app/facebook-appmanager
rm -rf $1/app/Lens
rm -rf $1/app/CatchLog
rm -rf $1/app/Joyose
rm -rf $1/app/GuardProvider
rm -rf $1/app/Zman
rm -rf $1/app/mi_connect_service
rm -rf $1/app/CtsShimPrebuilt
rm -rf $1/app/FM
rm -rf $1/app/FileExplorer_old
rm -rf $1/app/Netflix_activation
rm -rf $1/app/IdMipay
rm -rf $1/app/IFAAService
rm -rf $1/app/KeyChain
rm -rf $1/app/OTrPBroker
rm -rf $1/app/SoterService
rm -rf $1/app/Lens
rm -rf $1/app/MiuiContentCatcher
rm -rf $1/app/PacProcessor
rm -rf $1/app/Email
rm -rf $1/app/FidoAuthen
rm -rf $1/app/MiuiFrequentPhrase
rm -rf $1/app/FidoClient
rm -rf $1/app/MiDrive
rm -rf $1/app/Traceur
rm -rf $1/app/wps-lite
rm -rf $1/app/CatcherPatch
rm -rf $1/app/Protips
rm -rf $1/app/XMSFKeeper
rm -rf $1/app/Health
rm -rf $1/app/AiAsstVision
rm -rf $1/app/TSMClient
rm -rf $1/app/XMCloudEngine
rm -rf $1/app/AutoTest
rm -rf $1/app/FM_TEST
rm -rf $1/app/MSA
rm -rf $1/app/Qmmi
rm -rf $1/app/cit
rm -rf $1/app/MiuiSuperMarket
rm -rf $1/app/VoiceTrigger
rm -rf $1/app/GFTest
rm -rf $1/app/ModemLog
rm -rf $1/app/SensorTestTool
rm -rf $1/app/CameraTest
rm -rf $1/priv-app/Backup
rm -rf $1/priv-app/Browser
rm -rf $1/priv-app/PersonalAssistant
rm -rf $1/priv-app/MiService
rm -rf $1/priv-app/Provision
rm -rf $1/priv-app/GameCenterGlobal
rm -rf $1/priv-app/GlobalUserGuide
rm -rf $1/priv-app/MiDrop
rm -rf $1/priv-app/MiuiBrowserGlobal
rm -rf $1/priv-app/PersonalAssistantGlobal
rm -rf $1/priv-app/YellowPage
rm -rf $1/priv-app/facebook-installer
rm -rf $1/priv-app/facebook-services
rm -rf $1/priv-app/MiBrowserGlobal
rm -rf $1/priv-app/Music
rm -rf $1/priv-app/ONS
rm -rf $1/priv-app/StatementService
rm -rf $1/priv-app/CtsShimPrivPrebuilt
rm -rf $1/priv-app/LocalTransport
rm -rf $1/priv-app/MiMover
rm -rf $1/priv-app/QuickSearchBox
rm -rf $1/priv-app/CleanMaster
rm -rf $1/priv-app/FusedLocation
rm -rf $1/priv-app/MiGameCenterSDKService
rm -rf $1/priv-app/MiRcs
rm -rf $1/priv-app/NewHome

app_list="InMIpay MIDrop Cit MIUIHealthGlobal MIUIMiPicks MIUITouchAssistantGlobal XMSFKeepekAll MIShare* MIUIMusic* MIUIYellowPage* DeviceInfo dpmserviceapp EmergencyInfo GoogleFeedback seccamservice WfdService MiuiAod MiRecycle MiPics MiPay"
for app in $app_list; do
rm -rf $1/*app/$app
rm -rf $1/*/*app/$app
done
