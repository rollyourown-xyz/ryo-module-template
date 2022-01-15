#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

helpMessage()
{
  echo "backup.sh: Back up module container persistent storage from the host to the control node"
  echo ""
  echo "Help: backup-module.sh"
  echo "Usage: ./backup-module.sh -n hostname"
  echo "Flags:"
  echo -e "-n hostname \t\t(Mandatory) Name of the host from which to back up module container persistent storage"
  echo -e "-h \t\t\tPrint this help message"
  echo ""
  exit 1
}

errorMessage()
{
  echo "Invalid option or input variables are missing"
  echo "Use \"./backup-module.sh -h\" for help"
  exit 1
}

while getopts n:h flag
do
  case "${flag}" in
    n) hostname=${OPTARG};;
    h) helpMessage ;;
    ?) errorMessage ;;
  esac
done

if [ -z "$hostname" ]
then
  errorMessage
fi

# Get Module ID from configuration file
MODULE_ID="$(yq eval '.module_id' "$SCRIPT_DIR"/configuration/configuration.yml)"


# Stop module containers (only if there is persistent storage to back up)
#########################################################################

# echo ""
# echo "Stop "$MODULE_ID" containers on "$hostname""
# lxc stop "$hostname":<COMPONENT>

# Back up module container persistent storage (only if there is persistent storage to back up)
##############################################################################################

# echo ""
# echo "Backing up module container persistent storage on "$hostname""
# ansible-playbook -i "$SCRIPT_DIR"/../ryo-host/configuration/inventory_"$hostname" "$SCRIPT_DIR"/backup-restore/backup-container-storage.yml --extra-vars "host_id="$hostname""

# Start module containers (only if there is persistent storage to back up)
##########################################################################

# echo ""
# echo "Start "$MODULE_ID" containers on "$hostname""
# lxc start "$hostname":<COMPONENT>


# Info: no persistent storage (if there is NO persistent storage to back up)
############################################################################

# echo ""
# echo ""$MODULE_ID" on "$hostname" has no persistent storage to back up"