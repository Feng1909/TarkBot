## *********************************************************
##
## File autogenerated for the astra_camera package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'rgb_preferred', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Preferred camera stream', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'RGB', 'type': 'bool', 'value': True, 'srcline': 40, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': 'RGB video stream preferred', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'IR', 'type': 'bool', 'value': False, 'srcline': 41, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': 'IR video stream preferred', 'ctype': 'bool', 'cconsttype': 'const bool'}], 'enum_description': 'preferred video stream mode'}", 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'ir_mode', 'type': 'int', 'default': 7, 'level': 0, 'description': 'Video mode for IR camera', 'min': 1, 'max': 28, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'SXGA_30Hz', 'type': 'int', 'value': 1, 'srcline': 10, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'SXGA_15Hz', 'type': 'int', 'value': 2, 'srcline': 11, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_30Hz', 'type': 'int', 'value': 3, 'srcline': 12, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_15Hz', 'type': 'int', 'value': 4, 'srcline': 13, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_30Hz', 'type': 'int', 'value': 5, 'srcline': 14, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_15Hz', 'type': 'int', 'value': 6, 'srcline': 15, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_30Hz', 'type': 'int', 'value': 7, 'srcline': 16, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_15Hz', 'type': 'int', 'value': 8, 'srcline': 17, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_60Hz', 'type': 'int', 'value': 9, 'srcline': 18, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_30Hz', 'type': 'int', 'value': 10, 'srcline': 19, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_15Hz', 'type': 'int', 'value': 11, 'srcline': 20, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_60Hz', 'type': 'int', 'value': 12, 'srcline': 21, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_30Hz', 'type': 'int', 'value': 13, 'srcline': 22, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_15Hz', 'type': 'int', 'value': 14, 'srcline': 23, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_60Hz', 'type': 'int', 'value': 15, 'srcline': 24, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_30Hz', 'type': 'int', 'value': 16, 'srcline': 25, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_15Hz', 'type': 'int', 'value': 17, 'srcline': 26, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_10Hz', 'type': 'int', 'value': 18, 'srcline': 27, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_5Hz', 'type': 'int', 'value': 19, 'srcline': 28, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_60Hz', 'type': 'int', 'value': 20, 'srcline': 29, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_30Hz', 'type': 'int', 'value': 21, 'srcline': 30, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_15Hz', 'type': 'int', 'value': 22, 'srcline': 31, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_10Hz', 'type': 'int', 'value': 23, 'srcline': 32, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_5Hz', 'type': 'int', 'value': 24, 'srcline': 33, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '12801024_7Hz', 'type': 'int', 'value': 25, 'srcline': 34, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_7Hz', 'type': 'int', 'value': 26, 'srcline': 35, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_60Hz', 'type': 'int', 'value': 27, 'srcline': 36, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320240_60Hz', 'type': 'int', 'value': 28, 'srcline': 37, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'output mode'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'color_mode', 'type': 'int', 'default': 7, 'level': 0, 'description': 'Video mode for color camera', 'min': 1, 'max': 28, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'SXGA_30Hz', 'type': 'int', 'value': 1, 'srcline': 10, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'SXGA_15Hz', 'type': 'int', 'value': 2, 'srcline': 11, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_30Hz', 'type': 'int', 'value': 3, 'srcline': 12, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_15Hz', 'type': 'int', 'value': 4, 'srcline': 13, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_30Hz', 'type': 'int', 'value': 5, 'srcline': 14, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_15Hz', 'type': 'int', 'value': 6, 'srcline': 15, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_30Hz', 'type': 'int', 'value': 7, 'srcline': 16, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_15Hz', 'type': 'int', 'value': 8, 'srcline': 17, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_60Hz', 'type': 'int', 'value': 9, 'srcline': 18, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_30Hz', 'type': 'int', 'value': 10, 'srcline': 19, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_15Hz', 'type': 'int', 'value': 11, 'srcline': 20, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_60Hz', 'type': 'int', 'value': 12, 'srcline': 21, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_30Hz', 'type': 'int', 'value': 13, 'srcline': 22, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_15Hz', 'type': 'int', 'value': 14, 'srcline': 23, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_60Hz', 'type': 'int', 'value': 15, 'srcline': 24, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_30Hz', 'type': 'int', 'value': 16, 'srcline': 25, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_15Hz', 'type': 'int', 'value': 17, 'srcline': 26, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_10Hz', 'type': 'int', 'value': 18, 'srcline': 27, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_5Hz', 'type': 'int', 'value': 19, 'srcline': 28, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_60Hz', 'type': 'int', 'value': 20, 'srcline': 29, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_30Hz', 'type': 'int', 'value': 21, 'srcline': 30, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_15Hz', 'type': 'int', 'value': 22, 'srcline': 31, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_10Hz', 'type': 'int', 'value': 23, 'srcline': 32, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_5Hz', 'type': 'int', 'value': 24, 'srcline': 33, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '12801024_7Hz', 'type': 'int', 'value': 25, 'srcline': 34, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_7Hz', 'type': 'int', 'value': 26, 'srcline': 35, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_60Hz', 'type': 'int', 'value': 27, 'srcline': 36, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320240_60Hz', 'type': 'int', 'value': 28, 'srcline': 37, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'output mode'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'depth_mode', 'type': 'int', 'default': 7, 'level': 0, 'description': 'Video mode for depth camera', 'min': 1, 'max': 28, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'SXGA_30Hz', 'type': 'int', 'value': 1, 'srcline': 10, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'SXGA_15Hz', 'type': 'int', 'value': 2, 'srcline': 11, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_30Hz', 'type': 'int', 'value': 3, 'srcline': 12, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_15Hz', 'type': 'int', 'value': 4, 'srcline': 13, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_30Hz', 'type': 'int', 'value': 5, 'srcline': 14, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'XGA_15Hz', 'type': 'int', 'value': 6, 'srcline': 15, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x720@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_30Hz', 'type': 'int', 'value': 7, 'srcline': 16, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_15Hz', 'type': 'int', 'value': 8, 'srcline': 17, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'VGA_60Hz', 'type': 'int', 'value': 9, 'srcline': 18, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x480@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_30Hz', 'type': 'int', 'value': 10, 'srcline': 19, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_15Hz', 'type': 'int', 'value': 11, 'srcline': 20, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QVGA_60Hz', 'type': 'int', 'value': 12, 'srcline': 21, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_30Hz', 'type': 'int', 'value': 13, 'srcline': 22, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_15Hz', 'type': 'int', 'value': 14, 'srcline': 23, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'QQVGA_60Hz', 'type': 'int', 'value': 15, 'srcline': 24, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '160x120@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_30Hz', 'type': 'int', 'value': 16, 'srcline': 25, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_15Hz', 'type': 'int', 'value': 17, 'srcline': 26, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_10Hz', 'type': 'int', 'value': 18, 'srcline': 27, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_5Hz', 'type': 'int', 'value': 19, 'srcline': 28, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '640400_60Hz', 'type': 'int', 'value': 20, 'srcline': 29, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '640x400@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_30Hz', 'type': 'int', 'value': 21, 'srcline': 30, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@30Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_15Hz', 'type': 'int', 'value': 22, 'srcline': 31, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@15Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_10Hz', 'type': 'int', 'value': 23, 'srcline': 32, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@10Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_5Hz', 'type': 'int', 'value': 24, 'srcline': 33, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@5Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '12801024_7Hz', 'type': 'int', 'value': 25, 'srcline': 34, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x1024@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '1280800_7Hz', 'type': 'int', 'value': 26, 'srcline': 35, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '1280x800@7Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320200_60Hz', 'type': 'int', 'value': 27, 'srcline': 36, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x200@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': '320240_60Hz', 'type': 'int', 'value': 28, 'srcline': 37, 'srcfile': '/home/nuc_1/TarkBot/src/tarkbot_package/tarkbot_camera/ros_astra_camera/cfg/Astra.cfg', 'description': '320x240@60Hz', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'output mode'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'depth_registration', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Depth data registration', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'color_depth_synchronization', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Synchronization of color and depth camera', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'auto_exposure', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Auto-Exposure', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'auto_white_balance', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Auto-White-Balance', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'data_skip', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Skip N images for every image published (rgb/depth/depth_registered/ir)', 'min': 0, 'max': 10, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'ir_time_offset', 'type': 'double', 'default': -0.033, 'level': 0, 'description': 'ir image time offset in seconds', 'min': -1.0, 'max': 1.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'color_time_offset', 'type': 'double', 'default': -0.033, 'level': 0, 'description': 'color image time offset in seconds', 'min': -1.0, 'max': 1.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'depth_time_offset', 'type': 'double', 'default': -0.033, 'level': 0, 'description': 'depth image time offset in seconds', 'min': -1.0, 'max': 1.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'depth_ir_offset_x', 'type': 'double', 'default': 5.0, 'level': 0, 'description': 'X offset between IR and depth images', 'min': -20.0, 'max': 20.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'depth_ir_offset_y', 'type': 'double', 'default': 4.0, 'level': 0, 'description': 'Y offset between IR and depth images', 'min': -20.0, 'max': 20.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'z_offset_mm', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Z offset in mm', 'min': -200, 'max': 200, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'z_scaling', 'type': 'double', 'default': 1.0, 'level': 0, 'description': 'Scaling factor for depth values', 'min': 0.5, 'max': 1.5, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'use_device_time', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Use internal timer of OpenNI device', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'keep_alive', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Send keep alive message to device', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Astra_SXGA_30Hz = 1
Astra_SXGA_15Hz = 2
Astra_1280800_30Hz = 3
Astra_1280800_15Hz = 4
Astra_XGA_30Hz = 5
Astra_XGA_15Hz = 6
Astra_VGA_30Hz = 7
Astra_VGA_15Hz = 8
Astra_VGA_60Hz = 9
Astra_QVGA_30Hz = 10
Astra_QVGA_15Hz = 11
Astra_QVGA_60Hz = 12
Astra_QQVGA_30Hz = 13
Astra_QQVGA_15Hz = 14
Astra_QQVGA_60Hz = 15
Astra_640400_30Hz = 16
Astra_640400_15Hz = 17
Astra_640400_10Hz = 18
Astra_640400_5Hz = 19
Astra_640400_60Hz = 20
Astra_320200_30Hz = 21
Astra_320200_15Hz = 22
Astra_320200_10Hz = 23
Astra_320200_5Hz = 24
Astra_12801024_7Hz = 25
Astra_1280800_7Hz = 26
Astra_320200_60Hz = 27
Astra_320240_60Hz = 28
Astra_RGB = True
Astra_IR = False
