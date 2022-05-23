{ config, lib, pkgs, ... }:

{
  users = {
    defaultUserShell = pkgs.fish;
  };

  programs = {
    bash.enableCompletion = true;
    fish.enable = true;

    mtr.enable = true;
    mosh.enable = true;

    command-not-found.enable = true;
  };

  documentation.man.enable = true;

  environment = {
    systemPackages = with pkgs; [
      # Core tools
      ## Shell
      bash
      fish
      ## Editors
      emacs
      vim
      ## Remote shells
      openssh
      mosh
      tmux
      ## Version Control
      git
      gitAndTools.git-absorb
      gitAndTools.git-appraise
      gitAndTools.git-ignore
      gitAndTools.git-trim
      gitAndTools.delta
      ## Search
      fd
      ripgrep
      broot
      ## Text
      gawk
      jq
      fzf
      fzy
      ## Networking
      wol
      wget
      sshfs-fuse
      nmap
      ## Logs
      less
      # lnav  # Broken
      ## Monitoring
      htop
      powertop
      nethogs
      ## System inspection
      procps
      usbutils
      pciutils
      glxinfo
      lsb-release
      lm_sensors

      # Storage
      ncdu
      ## Disks
      gptfdisk
      smartmontools
      nvme-cli
      ## Filesystems
      cryptsetup
      e2fsprogs   # fsck.ext4
      f2fs-tools  # fsck.f2fs
      ntfs3g      # NTFS
      exfat       # ExFAT
      gphoto2fs   # Cameras
      libgphoto2
      jmtpfs      # MTP
      gvfs
    ];
  };
}

