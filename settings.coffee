_.merge Settings,
  license: '1d665ad3-d12d-48b1-b314-cd5263cea5b6'
  email: 'ncernek@gmail.com'

# patch to fix vc for high sierra
loadFrameworks: ->
  $.framework 'Foundation'
  $.framework 'Quartz'
  $.framework 'AppKit'
  $.framework 'CoreGraphics'

pack = Packages.register
  name: 'nico'
  description: 'nico custom commands'

pack.commands
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
    "git",
    "doomway",
    "jeepway",
    "Cernek",
    "squat",
    "pandas",
    "min",
    "loc",
    "feature",
    "kaggle",
    "datetime",
    "null",
    "shicks"
  ]

Commands.addMisspellings 'common:enter', ['chuck']
Commands.addMisspellings 'repetition:command-20', ['fenty']

'''
wish list
train the spelling of the word def
make the wordpreev command work in jupiter
replace dose with something better
make the page up and page down work with jupiter
'''

# I still had to modify the source code, otherwise these would not get transformed into commands
# Settings.repetition  =
#   values:
#     double: 2
#     trace: 3
#     quatro: 4
#     sicko: 5
#     diaz: 10
#     venti: 20
