{
  services.traefik = {
    enable = true;
    staticConfigOptions = {
      log = {
        level = "WARN";
      };
      api = {}; # enable API handler
      entryPoints = {
        web = {
          address = ":80";
          http.redirections.entryPoint = {
            to = "websecure";
            scheme = "https";
          };
        };
        websecure = {
          address = ":443";
        };
      };
      certificatesResolvers = {
        cloudfare = {
          acme = {
            email = "letsencrypt.org.btlc2@passmail.net";
            storage = "/var/lib/traefik/acme.json";
            caserver = "https://acme-v02.api.letsencrypt.org/directory";
            dnsChallenge = {
              provider = "godaddy";
              resolvers = ["1.1.1.1:53" "8.8.8.8:53"];
              propagation.delayBeforeChecks = 120; # Important: Increase delay for slow DNS propagation
            };
          };
        };
      };
    };
    dynamicConfigOptions = {
      http = {
        middlewares = {
          auth = {
            basicAuth = {
              users = ["m3tam3re:$apr1$6LQhXb/m$xUqwJYKJwFarhnga5cM.n/"];
            };
          };
        };
        routers = {
          api = {
            rule = "Host(`p.tr.m3ta.dev`)";
            service = "api@internal";
            entrypoints = ["websecure"];
            middlewares = ["auth"];
            tls = {
              certResolver = "godaddy";
            };
          };
        };
      };
    };
  };

  system.activationScripts.traefikEnv = {
    text = ''
      echo "Creating Traefik env file..."
      cat > /var/lib/traefik/env << 'EOF'
      GODADDY_API_KEY=supersecretkey
      GODADDY_API_SECRET=supersecretsecret
      EOF
      chmod 600 /var/lib/traefik/env
    '';
    deps = [];
  };

  systemd.services.traefik.serviceConfig = {
    EnvironmentFile = ["/var/lib/traefik/env"];
  };

  networking.firewall.allowedTCPPorts = [80 443];
}
