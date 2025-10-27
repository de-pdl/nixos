{
  networking.wireguard.interfaces.wg0 = {
    ips = ["192.168.3.2/24"];
    privateKeyFile = "/etc/wireguard/homekey";

    peers = [
      {
        publicKey = "Dfy1cvw+Jqp0f+QBgwv0iYYBnKTQxrvwVQrcQ0Rvf1k=";
        allowedIPs = ["0.0.0.0/0" "::/0"];
        endpoint = "139.218.36.30:51820";
        persistentKeepalive = 25;
      }
    ];
  };
}
