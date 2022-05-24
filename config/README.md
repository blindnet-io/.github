# Blindnet Github Org - Configuration

## Labels

[labels.json](./labels.json) list common default labels for repositories in the blindnet-io organization.
We use this file with [github-label-sync](https://github.com/Financial-Times/github-label-sync) to update labels in existing repositories whenever necessary.

```bash
npm i -g github-label-sync

github-label-sync
  --allow-added-labels
  --access-token xxxxx
  --labels labels.json*
  blindnet-io/REPO
```
