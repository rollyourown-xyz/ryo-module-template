#!/bin/bash

# SPDX-FileCopyrightText: 2022 Wilfred Nicoll <xyzroller@rollyourown.xyz>
# SPDX-License-Identifier: GPL-3.0-or-later

# Default software versions
# Add software package versions here, for example mariadb -- NOTE: for nextcloud, mariadb currently needs to be fixed to 10.5
mariadb_version='10.5.13'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Add additional help for software package versions defined below
# Option "-m mariadb_version" as an example
helpMessage()
{
   echo "build-images.sh: Use packer to build images for deployment"
   echo ""
   echo "Help: build-images.sh"
   echo "Usage: ./build-images.sh -n hostname -v version"
   echo "Flags:"
   echo -e "-n hostname \t\t\t(Mandatory) Name of the host for which to build images"
   echo -e "-v version \t\t\t(Mandatory) Version stamp to apply to images, e.g. 20210101-1"
   echo -e "-r remote_build \t\t(Mandatory) Whether to build images on the remote LXD host (true/false)"
   echo -e "-m mariadb_version \t(Optional) Override default mariadb version to use for the mariadb image, e.g. 10.5.13 (default)"
   echo -e "-h \t\t\t\tPrint this help message"
   echo ""
   exit 1
}

errorMessage()
{
   echo "Invalid option or mandatory input variable is missing"
   echo "Use \"./build-images.sh -h\" for help"
   exit 1
}

# Add additional options for software package versions defined above
# Option "-m mariadb_version" as an example
while getopts n:v:r:m:h flag
do
    case "${flag}" in
        n) hostname=${OPTARG};;
        v) version=${OPTARG};;
        r) remote_build=${OPTARG};;
        m) mariadb_version=${OPTARG};;
        h) helpMessage ;;
        ?) errorMessage ;;
    esac
done

if [ -z "$hostname" ] || [ -z "$version" ] || [ -z "$remote_build" ] || [ -z "$mariadb_version" ]
then
   errorMessage
fi


# Get Module ID from configuration file
MODULE_ID="$(yq eval '.module_id' "$SCRIPT_DIR"/../configuration/configuration.yml)"

# Module-specific image builds here..., for example
# echo "Building images for "$MODULE_ID" module on "$hostname""
# echo "Building COMPONENT image"
# echo "Executing command: packer build -var \"host_id="$hostname"\" -var \"version="$version"\" -var \"remote="$remote_build"\" -var \"mariadb_version="$mariadb_version"\" "$SCRIPT_DIR"/../image-build/TEMPLATE.pkr.hcl"
# echo ""
# packer build -var "host_id="$hostname"" -var "version="$version"" -var "remote="$remote_build"" -var "mariadb_version="$mariadb_version"" "$SCRIPT_DIR"/../image-build/TEMPLATE.pkr.hcl
# echo ""
