# -*- coding: utf-8 -*-
#  Created on: 2024/1/9 21:03
# Author: V22026851

import uiautomator2 as u2
import time as t

d = u2.connect()
d.unlock()
t.sleep(1)
d.swipe_points([(250, 1270), (555, 1570), (850, 1890), (865, 1570), (535, 1300), (260, 1565), (265, 1870), (850, 1275)], 0.1)