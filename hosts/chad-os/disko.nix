{ settings, ... }:
{
  disko.devices.disk.main = {
    type = "disk";
    device = settings.device;
    content = {
      type = "gpt";
      partitions = {
        boot = {
          size = settings.bootSize;
          type = "EF00";
          content = {
            type = "filesystem";
            format = "vfat";
            mountpoint = "/boot";
            mountOptions = [ "fmask=0137" "dmask=0027" ];
          };
        };
        root = {
          size = settings.rootSize;
          content = {
            type = "filesystem";
            format = "ext4";
            mountpoint = "/";
          };
        };
        home = {
          size = settings.homeSize;
          content = {
            type = "filesystem";
            format = "ext4";
            mountpoint = "/home";
          };
        };
      };
    };
  };
}
