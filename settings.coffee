_.merge Settings,
  license: '1d665ad3-d12d-48b1-b314-cd5263cea5b6'
  email: 'ncernek@gmail.com'

# patch to fix vc for high sierra
loadFrameworks: ->
  $.framework 'Foundation'
  $.framework 'Quartz'
  $.framework 'AppKit'
  $.framework 'CoreGraphics'
  
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
    "shicks",
    "Usha",
    "import",
    "Louis",
    "high"
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
