# Blindnet Github Org - Configuration

## Labels

We use [github-label-sync](https://github.com/Financial-Times/github-label-sync) to update labels in existing repositories whenever necessary.

Common default labels for repositories in the blindnet-io organization are configured in:

- [global-labels.json](./global-labels.json) for all repositories
- [com-labels.json](./com-labels.json) for communication repositories

To update and add labels on a specific repository, run:

```bash
npm i -g github-label-sync

github-label-sync --allow-added-labels --labels global-labels.json --access-token "${GHKEY}" blindnet-io/REPO
```

To update the labels on all repositories associated with a specific configuration, run:

```bash
(export CFG="global"; xargs -0 -I '{}' -n 1 github-label-sync --allow-added-labels --access-token "${GHKEY}" --labels "${CFG}-labels.json" '{}' < <(tr \\n \\0 <"./${CFG}-repos.list"))
```
