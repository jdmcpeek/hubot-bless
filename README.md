# hubot-bless

A hubot script that blesses the poor, sneezing souls

See [`src/bless.coffee`](src/bless.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-bless --save`

Then add **hubot-bless** to your `external-scripts.json`:

```json
["hubot-bless"]
```
Examples: 

`hubot bless <name>`
  returns
`<random language blessing>, <name>!` 
  Ex: "God bless you, Davie!"

`hubot in <language> bless <name>`
  returns
`<language blessing>, <name>!`
  Ex: "Salud, Davie!"
  
  Everyone always feels better after they've been blessed. 

