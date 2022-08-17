#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR
source $LOCALDIR/../../../bin.sh

systemdir="$TARGETDIR/system/system"
configdir="$TARGETDIR/config"

<<<<<<< HEAD
# Skip Setup Wizard for Pixel 
echo "" >> $systemdir/build.prop
echo "# Skip Setup Wizard" >> $systemdir/build.prop
echo "ro.setupwizard.mode=DISABLED" >> $systemdir/build.prop

echo "" >> $systemdir/product/etc/build.prop
echo "# Skip Setup Wizard" >> $systemdir/product/build.prop
echo "ro.setupwizard.mode=DISABLED" >> $systemdir/product/build.prop

echo "" >> $systemdir/system_ext/etc/build.prop
echo "# Skip Setup Wizard" >> $systemdir/system_ext/build.prop
echo "ro.setupwizard.mode=DISABLED" >> $systemdir/system_ext/build.prop

# 清空pixel无用的上下文导致的启动至rec
if [ -e $systemdir/product/etc/selinux/mapping ];then
  true > $systemdir/product/etc/selinux/product_property_contexts
fi
=======
init_environ_patch() {
  # Fix init.environ
  if ! (cat $systemdir/../init.environ.rc | grep -qo "BOOTCLASSPATH") ;then
    cat $LOCALDIR/init.environ_BOOTCLASSPATH.patch >> $systemdir/../init.environ.rc
  fi

  if ! (cat $systemdir/../init.environ.rc | grep -qo "DEX2OATBOOTCLASSPATH") ;then
    cat $LOCALDIR/init.environ_DEX2OATBOOTCLASSPATH.patch >> $systemdir/../init.environ.rc
  fi

  if ! (cat $systemdir/../init.environ.rc | grep -qo "SYSTEMSERVERCLASSPATH") ;then
    cat $LOCALDIR/init.environ_SYSTEMSERVERCLASSPATH.patch >> $systemdir/../init.environ.rc
  fi

  sed -i '/^\s*$/d' $systemdir/../init.environ.rc
}
if [ $(cat $systemdir/build.prop | grep "ro.build.version.codename" | head -n 1 | cut -d "=" -f 2) = "S" ];then
  init_environ_patch
fi

if [ $(cat $systemdir/build.prop | grep "ro.build.version.sdk" | head -n 1 | cut -d "=" -f 2) = "31" ];then
  cp -frp $LOCALDIR/system/* $systemdir/
fi

# Merge monet props stuff
sed -i "/persist.sysui.monet/d" $systemdir/product/etc/build.prop
sed -i "/ro.boot.vendor.overlay.theme/d" $systemdir/product/etc/build.prop
echo "" >> $1/product/etc/build.prop
echo "# Monet fix (Not fully)" >> $systemdir/product/etc/build.prop
echo "persist.sysui.monet=true" >> $systemdir/product/etc/build.prop
echo "ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay" >> $systemdir/product/etc/build.prop
>>>>>>> 3660812 (Update make.sh)
