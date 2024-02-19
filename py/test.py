import uiautomator2 as u2
import random
import time
#import os

# 华为系
def unlock():
    info = d.info
    if info.get('screenOn') and info.get('currentPackageName') != 'com.android.systemui':
        # 屏幕已点亮且当前包名不是系统UI（意味着已经在主屏幕或者应用内）
        pass
    else:
        # 屏幕未点亮
        d.screen_on()
        d.press('recent')
        # 模拟解锁手势
        d.swipe_points([(250, 1270), (555, 1570), (850, 1890), (865, 1570), (535, 1300), (260, 1565), (265, 1870), (850, 1275)], 0.1)
        time.sleep(0.1)
        d.click(0.9, 0.5)
        
if __name__ == '__main__':
    #os.system("adb shell /data/data/com.android.shell/atx-agent server -d")
    d = u2.connect()
    #d.uiautomator.start()
    #print(d.uiautomator.running())
    unlock()
