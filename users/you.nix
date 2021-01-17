{ config, lib, pkgs, ... }:

{
  users.users.you = {
    shell = pkgs.fish;

    # Generated with mkpasswd -m sha-512
    initialHashedPassword = "$6$sz9ZrTEpIuzj4$pOoBIX1dKoVPCYHiAUJZdq5gaoB/DI4vjxotVy/RfzOYQvZgVX64.rWFuB9SLMblzh9y.oHXn/UDsRBhW5EPJ0";
  };
}
