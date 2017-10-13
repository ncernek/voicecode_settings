_.merge Settings,
  license: '1d665ad3-d12d-48b1-b314-cd5263cea5b6'
  email: 'ncernek@gmail.com'

pack = Packages.register
  name: 'nico'
  description: 'nico custom commands'

pack.commands
  enabled: true,
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
    spoken: 'exit'
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

# this affects the mouse grid
Settings.mouse.grid.hideAfterUse = true # default is false

# For simple words (or even short multiword phrases)
# that are not currently being recognized well,
# you can add them like this:
Settings.vocabulary =
  vocabulary: [
    "stoosh",
    "doom",
    "quatches",
    "better touch tool",
    "touch",
    "skoosh",
    "voice code",
    "atom",
    "repple",
    "uno",
    "sicko",
    "numpy",
    "head",
    "ricksy",
    "bins",
    "age",
    "dose",
    "features",
    "merge",
    "row",
    "fill",
    "Agathos",
    "shockoon",
    "def",
    "git"
  ]

Commands.addMisspellings 'clipboard:paste', ['based']
Commands.addMisspellings 'common:enter', ['chuck']
