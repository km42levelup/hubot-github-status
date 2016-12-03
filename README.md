# hubot-github-status

A Hubot script that query status.github.com

See [`src/github-status.coffee`](src/github-status.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-github-status --save`

Then add **hubot-github-status** to your `external-scripts.json`:

```json
[
  "hubot-github-status"
]
```

## Sample Interaction

```
user1>> hubot github status
hubot>> a few seconds ago
Status: good
```

## NPM Module

https://www.npmjs.com/package/hubot-github-status


## Remarks
 This module is highly inspired by
 https://github.com/github/hubot-scripts/blob/master/src/scripts/github-status.coffee
