pack = Packages.register
  name: 'general'
  description: 'general custom commands'

pack.commands
  enabled: true
,
  'shift-f':
    spoken: 'page map'
    description: "to be used in chrome with the extension vimium. overlays character map on webpage clickables"
    tags: ["chrome"]
    action: ->
      @key 'f', 'shift'
  'email-personal':
    spoken: 'email'
    description: 'pastes ncernek@gmail.com'
    action: ->
      @string 'ncernek@gmail.com'
  'command-Q':
    spoken: 'exit app'
    description: "exit app,close app"
    tags: ["application"]
    action: ->
      @key 'q','command'
  'find-all':
    spoken: 'big marco'
    description: "search the entire project in atom"
    tags: ["atom"]
    action: ->
      @key  'f', 'command shift'
  'comment-out':
    spoken: 'connie'
    description: "comments code in or out"
    tags: ["atom","jupyter"]
    action: ->
      @key  '/', 'command'
  'select-all-instances':
    spoken: 'spector'
    description: 'select all instances of the word currently selected'
    tags: ["atom","jupyter"]
    action: ->
      @key  'g', 'control command'
  'ponty':
    spoken: 'ponty'
    misspellings: ['ponte']
    description: 'insert a star and a space for markdown'
    tags: ["jupyter"]
    action: ->
      @key '*'
      @key 'Space'

  'type-git':
    spoken: 'ghetto'
    description: 'type the word git'
    tags: ["terminal"]
    action: ->
      @string 'git '
  'number-2':
    spoken: 'tway'
    description: 'type the number 2'
    action: ->
      @string '2'
  'number-4':
    spoken: 'foray'
    description: 'type the number 4'
    action: ->
      @string '4'
  'html-break':
    spoken: 'line break'
    description: 'types a html line break <br>'
    action: ->
      @string '<br>'
  'html-list-item':
    spoken: 'list item'
    description: 'types a html list item <li>'
    action: ->
      @string '<li>'

  'word-feature':
    spoken: 'feet'
    description: 'types the word feature'
    action: ->
      @string ' feature '
