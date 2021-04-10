SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

print_modname() {
sleep 0.4
  ui_print "______________________________________________"
sleep 0.4
  ui_print " Apollon V13 (10/04/21)     "
sleep 0.4
  ui_print "                                                                 
     /\                     | | | |                
    /  \     _ __     ___   | | | |   ___    _ __  
   / /\ \   | '_ \   / _ \  | | | |  / _ \  | '_ \ 
  / ____ \  | |_) | | (_) | | | | | | (_) | | | | |
 /_/    \_\ | .__/   \___/  |_| |_|  \___/  |_| |_|
            | |                                    
            |_|                                            "
sleep 0.4
  ui_print "               "
sleep 0.4
  ui_print "______________________________________________"
sleep 0.4
ui_print "👨‍💻Checking Phone Information👨‍💻"
sleep 1
ui_print " "
ui_print "⚙️Processor : $(getprop ro.product.board)⚙️ "
sleep 1
ui_print " "
ui_print "💻Arm Version : $(getprop ro.product.cpu.abi)💻 "
sleep 1
ui_print " "
ui_print "👾Android Brand : $(getprop ro.product.brand)👾 "
sleep 1
ui_print " "
ui_print "📱Device : $(getprop ro.build.product)📱 "
ui_print " "
sleep 1.3
  ui_print "⬇️Installing⬇️..."
  ui_print "______________________________________________"
sleep 1.0
  }

on_install() {
  ui_print "📁Extracting module files📁"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'vendor/*' -d $MODPATH >&2
  }

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
  set_perm_recursive $MODPATH/system/etc/init.d 0 0 0777 0777
}