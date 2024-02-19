import subprocess
import os

user_home = os.path.expanduser('~') ## 获取当前用户用户根目录
os.chdir(user_home) 
log_path = "/sdcard/A节点"

# 使用双引号包围路径
log_name = subprocess.run(f'adb shell ls "{log_path}"', shell=True, stdout=subprocess.PIPE, text=True)
log_list = log_name.stdout.strip().split('\n')
log_number = len(log_list)

for i in range(log_number):
    print(f"{i+1}: {log_list[i]}")

while True:
    choice = int(input("要导出的log号为: "))  
    if choice in [i+1 for i in range(log_number)]:
        output_log = log_list[choice-1]
        subprocess.run(f'adb pull {log_path}/{output_log} ./desktop', shell=True)
        break  
    else:
        print("请输入正确的log号!\n")
    
    
    
