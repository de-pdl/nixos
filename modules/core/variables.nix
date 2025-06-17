{
  lib,
  profile,
  ...
}: {
  options.profile = lib.mkOption {
    type = lib.types.attrsOf lib.types.anything;
    default = {};
    descritpion = "A flat attr-set of user-defined profile variables";
  };
}
