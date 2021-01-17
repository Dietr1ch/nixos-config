{ config, lib, pkgs, ... }:

{
  users.users.root = {
    shell = pkgs.fish;

    # Generated with mkpasswd -m sha-512
    initialHashedPassword = "$6$M.dk4LQ2OGrJ$0zm6mJ0KxbDH0avGfIgwfaELLIUUH9qgO9Y2lgQK6Oum.KIhe8YhG29PEJ3Y.Dz9weeBqtWcApJh8OxUTwGPA1";
  };
}
