#!/bin/bash

# -e Exit immediately if a command exits with a non-zero status.
# So if any of your commands fail, the script will exit.
# You can exit a script at any place using the keyword exit.
set -e

Separator="---------------------------------------------------------------------------"
PublishConfig="Release" # "Debug" or "Release"
Framework="netcoreapp3.1"

ProjectName="SparkPost.Core"
ProjectDirectory="$PWD/$ProjectName"
TargetProject="$ProjectDirectory/$ProjectName.csproj"
PublishDirectory="$ProjectDirectory/bin/publish"


# delete publish directory
echo "Removing $PublishDirectory..."
rm -rf $PublishDirectory
echo "Removed $PublishDirectory"
echo $Separator

# dotnet publish
echo -e "Publishing $ProjectName..."
dotnet publish -c $PublishConfig -f $Framework -o $PublishDirectory $TargetProject
echo -e "Published $ProjectName"
echo $Separator

echo "Done\n"
