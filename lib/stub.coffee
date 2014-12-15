{sample} = require 'underscore'
uuid = require 'node-uuid'

# 2015 Atlantic Tropical Cycles, because why not
NAMES = ['Ana', 'Bill', 'Claudette', 'Danny', 'Erika', 'Fred', 'Grace', 'Henri', 'Ida', 'Joaquin', 'Kate', 'Larry', 'Mindy', 'Nicholas', 'Odette', 'Peter', 'Rose', 'Sam', 'Teresa', 'Victor', 'Wanda']

module.exports =
  setupFakeUsers: (count=6) ->
    sampleNames = sample NAMES, count
    sampleNames.map (userName) -> {name: userName, uuid: uuid.v4()}
