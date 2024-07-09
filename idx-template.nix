{pkgs}: {
  packages = [
    # Enable "node", "npm" and "npx" in the bootstrap script below.
    # Note, this is NOT the list of packages available to the workspace once
    # it's created. Those go in .idx/dev.nix
    pkgs.nodejs
  ];

  bootstrap = ''
    mkdir "$out"
    # We can now use "npm"
    npm init --yes my-boot-strap@latest "$out"
  ''
}