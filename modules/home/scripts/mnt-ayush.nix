{pkgs}: let
  mntScript = pkgs.writeShellScriptBin "mnt-ayush" ''
    MOUNT_POINT="/mnt/ayush"
    REMOTE="//192.168.86.22/Ayush"
    CREDS="$HOME/.secrets/smb_creds"
    MYUID=$(id -u)
    MYGID=$(id -g)


    sudo mkdir -p "$MOUNT_POINT"
    sudo mount -t cifs -o \
    uid="$MYUID",gid="$MYGID",\
    credentials="$CREDS" \
    "$REMOTE" "$MOUNT_POINT"
  '';

  umntScript = pkgs.writeShellScriptBin "umnt-ayush" ''
    MOUNT_POINT="/mnt/ayush"

    sudo umount "$MOUNT_POINT"
  '';
in
  pkgs.symlinkJoin {
    name = "smb-mnt-ayush-scripts";
    paths = [mntScript umntScript];
  }
