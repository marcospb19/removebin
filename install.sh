
#
# install.sh
# script to install https://github.com/marcospb19/removebin
#


# Created a function to enable 'return' control flow

removebin()
{
	# Stop if anything fails
	set -e

	if [[ $1 == "-u" ]]; then
		# Installation for the user
		echo "Installing for your user, $USER..."

		# INSTALL_DIRECTORY="$HOME/.bin"
		# mkdir "$HOME/.bin"

	elif [[ $USER == "root" ]]; then
		# Install for all users
		echo "Installing for all users..."
		# INSTALL_DIRECTORY="/usr/bin"
	else
		# Can't install
		echo "You are not running as root, can't install \"removebin\" to all users"
		echo
		echo "Type \"sudo ./install.sh\" to install for all users"
		echo
		echo "Or type \"./install.sh -u\" to install only for this user at ~/.bin"
		return
	fi


	# # Check if the file exists
	# if [[ ! -f removebin ]]; then
	# 	# echo "\"removebin\" file not found to install"
	# 	return
	# fi


	# # If isn't executable
	# if [[ ! -x removebin ]]; then
	# 	# echo "\"removebin\" isn\'t executable, run \"sudo chmod +x removebin\" before"
	# 	return
	# fi


	# If ~/.bin isn't already added to the $PATH
	DOT_BIN_IS_A_PATH=$(echo "$PATH" | tr ":" "\n" | grep "/home" | grep "/\.bin")

	if [[ ! DOT_BIN_IS_A_PATH ]]; then
		# Add it to the .zshrc and .bashrc
		echo "Adding PATH variables to ~/.*rc"
		[[ -f "$HOME"/.zshrc ]] && \
		echo "export PATH=$PATH:$HOME/.bin" >> "$HOME"/.zshrc
		echo "export PATH=$PATH:$HOME/.bin" >> "$HOME"/.bashrc
	fi


	# # echo "cp removebin $INSTALL_DIRECTORY"

	# cp removebin "$INSTALL_DIRECTORY"

	# # echo "Installed successfully!"
	# # echo "Reopen your terminal and run \"removebin --help\" to see help"
}

removebin $1
