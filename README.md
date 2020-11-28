# danger

[![CI State](https://github.com/actionshub/danger-rb/workflows/release/badge.svg)](https://github.com/actionshub/danger-rb)

A Github Action to run Danger for Ruby

## Usage

```yaml
name: danger

on: [push, pull_request]

jobs:
  danger:

    runs-on: ubuntu-latest

    steps:
      - name: Check out code
        uses: actions/checkout@v2
        with:
          fetch-depth: 0
      - name: Run Danger
        uses: actionshub/danger-rb@main
        env:
          DANGER_GITHUB_API_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
