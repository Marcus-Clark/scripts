#!/bin/sh

########## Run Slackpkg #####################################

read -p "Do you want to run slackpkg update? Enter yes or no. "  response

case "$response" in

	[Yy]*) 
	echo "Running slackpkg update."
	slackpkg update
	;;

	[Nn]*)
	echo "You have chosen to exit."
	exit 0
	;;

	*)
	echo "Response not recognised. Exiting now."
	exit 0
	;;
esac

read -p "Do you want to run slackpkg install-new? Enter yes or no. "  response

case "$response" in

	[Yy]*) 
	echo "Running slackpkg install-new."
	slackpkg install-new
	;;

	[Nn]*)
	echo "You have chosen to exit."
	exit 0
	;;

	*)
	echo "Response not recognised. Exiting now."
	exit 0
	;;
esac


read -p "Do you want to run slackpkg upgrade-all? Enter yes or no. "  response

case "$response" in

	[Yy]*) 
	echo "Running slackpkg upgrade-all."
	slackpkg upgrade-all
	;;

	[Nn]*)
	echo "You have chosen to exit."
	exit 0
	;;

	*)
	echo "Response not recognised. Exiting now."
	exit 0
	;;
esac
exit 0
