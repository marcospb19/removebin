# Install.sh

# This installer is a adapted copy of gloner's
# one, from https://github.com/marcospb19/gloner

#                                __   _
#    _______ __ _  ___ _  _____ / /  (_)__
#   / __/ -_)  ' \/ _ \ |/ / -_) _ \/ / _ \
#  /_/  \__/_/_/_/\___/___/\__/_.__/_/_//_/
#
#

# run "sudo ./install" to install removebin

# set -x

installation_directory='/usr/bin/removebin'

cat << EOF
                                __   _
    _______ __ _  ___ _  _____ / /  (_)__
   / __/ -_)  ' \\/ _ \\ |/ / -_) _ \\/ / _ \\
  /_/  \\__/_/_/_/\\___/___/\\__/_.__/_/_//_/

 install.sh

EOF


install_removebin()
{
	if [[ $is_installed ]]; then
		rm "$where_is_removebin"
	fi

	cp removebin $installation_directory && \
		echo "Removebin installed successfully."
}


if [[ "$USER" != 'root' ]]; then
	echo 'You need to run this script with sudo to install "removebin" to your system'
	echo 'Administrator permissions are needed to copy "removebin" to /usr/bin/ folder'
	exit 1

elif [[ ! -f ./removebin ]]; then
	echo '"removebin" file cannot be found here, where is it? (run ./install.sh where "removebin" is at)'
	exit 2

elif [[ ! -x ./removebin ]]; then
	echo '"removebin" cannot be executable, run "sudo chmod +x removebin" to fix this'
	exit 3
fi

where_is_removebin=$(which removebin 2> /dev/null)

if [[ ${where_is_removebin:0:1} == '/' ]]; then
	is_installed=true
fi

if [[ ! $is_installed ]]; then
	install_removebin

else
	diff=$(diff "$where_is_removebin" ./removebin)
	if [[ $diff ]]; then
		echo "Removebin is already installed, but the file here differs"
		echo "Do you want to overwrite /usr/bin/removebin with removebin? "
		read -p "[Y/n]" option

		if [[ "$option" != 'n' && "$option" != 'N' ]]; then
			install_removebin

		else
			echo "Installation canceled."
		fi

	else
		echo "Removebin is already installed, nothing done."
	fi

fi

# set +x
