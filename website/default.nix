{
  hercules-ci.github-pages.branch = "mc/powershell";
  perSystem = { pkgs, config, ... }: {
    hercules-ci.github-pages.settings.contents = config.packages.website.webroot;
    packages = {
      website = pkgs.callPackage ./package.nix { };
    };
  };
}
