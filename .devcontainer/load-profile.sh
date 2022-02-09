# copy into the /etc/profile.d/ directory

profile="/workspace/.devcontainer/profile.sh"
if [ -r $profile ]; then
  source $profile
else
  echo "Cannot find $profile"
fi
