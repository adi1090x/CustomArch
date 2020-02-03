#!/usr/bin/env python2

# CPU frequency info.
file = open('/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq','r')
tmp = file.readline()
minfreq = int(tmp) / 1000
file.close()

file = open('/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq','r')
tmp = file.readline()
maxfreq = int(tmp) / 1000
file.close()

file = open('/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq','r')
tmp = file.readline()
curfreq = int(tmp) / 1000
file.close()


# Temperature
file = open('/sys/class/thermal/thermal_zone0/temp','r')
tmp = file.readline()
cputemp = int(tmp) / 1000
file.close()


# Pipe menu
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
print "<openbox_pipe_menu>"
print "  <item label=\"Minimum frequency: %dMHz\"/>" % minfreq
print "  <item label=\"Maximum frequency: %dMHz\"/>" % maxfreq
print "  <item label=\"Current frequency: %dMHz\"/>" % curfreq
print "  <separator />"
print "  <item label=\"CPU temp: %d'c\"/>" % cputemp
print "</openbox_pipe_menu>"
