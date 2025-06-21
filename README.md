# NIXOS BUT MY WAY OR THE HIGHWAY

If you ever come across this and you like my format do be warned I am very
volatile and could rehaul the entire thing. You are welcome to fork it, or make
suggestions.

> Credit to Zaneyos for the starting point

Version Counter : 4

Starting Point : flake.nix - Import profile - Import machine

## Intention of this flake Style

    Profiles should be configured as your needs changes but if you ever decide to change hardware, then
    that profile should still work without doing anything except changing the machine nix files.

    Machines should be configured initially, and for most cases you should only need to modify profiles except
    during hardware relate changes.

    Right now I am considering hardware as anything related to drivers, services that rely on hardware components like bluetooth, hardware-configuration.nix, and extra packages that you may need.

    Why? Easier to reporduce configuration than zaneyos (for my case) and as I like to tinker around with homelabbing, I dont want to include everything that my day to day machine uses on my homelabbing machine. Also right now I am running most of my services on lxc containers on proxmox which is alright but I do want to start
    utilising nixos and docker more and as much as people like to os hop, I would rather not. ( i means its debian for most lxc and most of time its preconfigured shit but when i want to further configure than it becomes a pain in the ass cuz it aint version controlled or whatever )

## Folder Hierachy

    ╰──> 📄 flake.nix
    ╰──> 📁 modules
    │   ╰──> 📁 home
    │   │   ╰──> .nix files                 # home nix files aka your configuration / ricing area
    │   │   ╰──> 📁 home stuff          
    │   ╰──> 📁 core                        # contains basic core functionalities {TRY NOT TO CHANGE}
    │   │   ╰──> boot.nix                   # your kernel and other things you need to boot
    │   │   ╰──> default.nix                # calls the following nix files
    │   │   ╰──> devices.nix                # honestly im not sure but i have keyboard layout and disk utility
    │   │   ╰──> network.nix                # network related stuff + tailscale & ssh
    │   │   ╰──> nix.nix                    # nix settings and version
    │   │   ╰──> services.nix               # general services that exist or you need imo (and chatgpt 🫠)
    │   │   ╰──> stylix.nix                 # stylix { will change location when i revamp}
    │   │   ╰──> time.nix                   # time and loction bbg
    │   │   ╰──> users.nix                  # user configuration {if your planning to do multi user then dont call
    │   │   │                                   this file but rather make your own one, one thing you need to make
    |   |   |                                   sure is that you know how your going to handle home files, right now
    |   |   |                                   the current method is i call home.nix for the profile i pass 
    |   |   |                                   and there i will specify what i want, maybe you hardcode or 
    |   |   |                                   if u wanna pay me ill think of something <3}
    │   │   ╰──> utils_base.nix              # basic utils like grep and stuff {maybe move docker-compose}
    │   ╰──> 📁 drivers                     # contains gpu drivers { most likely will mix into core later}
    │       ╰──> .nix files
    ╰──> 📁 machines
    │   ╰──> 📁 machine_a
    │   │   ╰──> default.nix files          # calls the following nix files
    │   │   ╰──> hardware.nix files         # pre-generated nix file for your machine during setup phase
    │   │   ╰──> host-packages.nix files    # machine needed packages / extra
    │   │   ╰──> variables.nix files        # hardware variables consult configs.md
    │   ╰──> 📁 machine_b       
    │       ╰──> .nix files                 # same as last
    ╰──> 📁 profiles
    │   ╰──> 📁 profile_a
    │   │   ╰──> core.nix files             # calls the core nix files either individually or the default.nix 
    │   │   ╰──> default.nix files          # calls the following nix files and the machine default.nix
    │   │   ╰──> drivers.nix files          # the drivers {refer to driver section at modules}
    │   │   ╰──> home.nix files             # the home nix files that you want 
    │   │   ╰──> profile-pkgs.nix files     # pkgs to use for current profile
    │   │   ╰──> variables.nix files        # profile variables consult configs.md
    │   ╰──> 📁 profile_b
    │       ╰──> .nix files                 # same as last
    ╰──> 📁 wallpapers {will change location when i change gui config for home}
    │   ╰──> 🖼️ background.png

> Flake.nix considertions: passthrough "machine" "profile" and "username"

### Author's Note

If you have any questions, Goodluck I dont know either <3. You can send it to
de.bored.21@gmail.com but I will not be able to guarantee that I know the way.

> Also PS if your from sydney I need a job please (y2 at UNI). Studying
> Electrical but like money is money and I've got (some sort of) IT / Software
> (uh homelab) experience.

