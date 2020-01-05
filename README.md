# danger

[![CI State](https://github.com/actionshub/danger-rb/workflows/release/badge.svg)](https://github.com/actionshub/danger-rb)

A Github Action to run Danger for Ruby

## Usage

```yaml
name: delivery

on: [push, pull_request]

jobs:
  delivery:

    runs-on: ubuntu-latest

    steps:
      - name: Check out code
        uses: actions/checkout@master
      - name: Run Chef Delivery
        uses: actionshub/danger-rb@master
        env:
          DANGER_GITHUB_API_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
