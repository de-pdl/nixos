{pkgs}:
pkgs.writeShellScriptBin "mnt-ayush" ''

  MOUNT_POINT = "/mnt/ayush"
  REMOTE="//192.168.86.22/Ayush"

  sudo mkdir -p "$MOUNT_POINT"

  sudo mount -t cifs "$REMOTE" "$MOUNT_POINT" \
    -o credentials=$HOME/.secrets/smb_creds,uid=$(id -u),gid=$(id -g), version = 3.0, iocharset = utf8

''
