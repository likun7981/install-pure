# Install-pure

This shell is used to quickly install [sindresorhus/pure](https://github.com/sindresorhus/pure)，This script is not generic, so far I have successfully installed it on `M1 Mac Mini`

## Usage

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/likun7981/install-pure/main/install.sh)"
```

## Some changes
feat: add `PURE_PROMPT_PATH_LAYERS` to configure the maximum display of path layers，It is set to `PURE_PROMPT_PATH_LAYERS=3` when use `install.sh` by default

[Why not submit a pullRequest to pure?](https://github.com/sindresorhus/pure/discussions/627)
