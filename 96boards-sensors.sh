# Environmental variables for working with the 96Boards Sensors adapter
#
# Copy this file into /etc/profile.d to set up the correct environment by default
export JAVA_TOOL_OPTIONS="-Dgnu.io.rxtx.SerialPorts=/dev/tty96B0"
export MONITOR_PORT=/dev/tty96B0
