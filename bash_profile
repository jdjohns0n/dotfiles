# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
ln -s /opt/metasploit-framework/bin/msfconsole /usr/local/bin/msfconsole
export PATH
