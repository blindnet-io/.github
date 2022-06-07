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

To update the labels on all repositories associated with a specific configuration, [create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token), add it to a `GHKEY` environment variable, and run the [label-sync.sh](./label-sync.sh) script:


```bash
export GHKEY=<your github personal access token>
./label-sync.sh
```
