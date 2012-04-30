# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
