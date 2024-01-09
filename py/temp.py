# -*- coding: utf-8 -*-
#  Created on: 2024/1/9 21:03
# Author: V22026851

import uiautomator2 as u2

device = u2.connect("192.168.1.6")
print(device.device_info)