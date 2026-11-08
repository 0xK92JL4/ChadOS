{ settings, ... }:
{
  users.users.${settings.user} = {
    isNormalUser = true;
    extraGroups = settings.groups;
  };
}
