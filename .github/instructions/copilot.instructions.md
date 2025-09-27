---
applyTo: "**"
---

This repo is to store my personal development scripts, setups, and configurations.

Split up into domains for different languages, frameworks, and tools.

Example layout:

```text
my-dev-scripts/
  setup/                 # anything to bootstrap a new machine
    linux/
      install_docker.sh
      setup_node.sh
    windows/
      setup_env.ps1
    common/
      mise_config.toml
      starship.toml
  frameworks/            # framework-specific helpers
    laravel/
      artisan_shortcuts.sh
      queue_worker.ps1
    sveltekit/
      dev_build.sh
      deploy_to_docker.sh
    effect-ts/
      sample_queue.ts
  docker/                # containerization
    compose/
      local-dev.yml
      db-only.yml
    scripts/
      prune_images.sh
      build_all.sh
  git/                   # git helpers
    aliases.sh
    cleanup_branches.sh
  editors/               # dotfiles and editor configs
    vscode/
      settings.json
      snippets/
    neovim/
      init.lua
    terminal/
      starship.toml
      powershell_profile.ps1
  utils/                 # general purpose one-liners
    backup.sh
    rename_files.py
    json_pretty.ts
  docs/                  # notes, how-to’s, and setup guides
    README.md
    laravel-setup.md
    sveltekit-setup.md
```
