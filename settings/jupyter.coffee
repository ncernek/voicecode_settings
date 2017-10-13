pack = Packages.register
  name: 'jupyter'
  description: 'Commands for ipython notebook'
  createScope: true
  applications: -> Settings.os.browserApplications
  # condition: -> @inBrowser() and @urlContains '.ipynb'

pack.commands
  enabled: true
,
  'jupyter-pallet':
    spoken: 'jupiter pallet'
    description: 'open jupyter notebooks command palette'
    action: ->
      @key 'p', 'command shift'
  'cell-run':
    spoken: 'run cell'
    misspellings: ['selrang']
    description: 'run the currently selected cell'
    action: ->
      @key 'enter', 'shift'
  'cell-remove':
    spoken: 'delete cell'
    misspellings: ['sell delete']
    description: 'remove the currently selected cell'
    action: ->
      @key 'escape'
      @key 'd'
      @key 'd'
  'cell-merge-down':
    spoken: 'cell merge down'
    description: 'merge the current cell with the one below it'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'merge cell with next cell'
      @delay 10
      @key 'enter'
  'cell-merge-up':
    spoken: 'cell merge up'
    description: 'merge the current cell with the one above it'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'merge cell with previous cell'
      @delay 10
      @key 'enter'

###########
# nico additions

  'insert-cell':
    spoken: 'insert cell'
    description: 'insert cell below'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'insert cell below'
      @delay 10
      @key 'enter'
      @key 'enter'
  'find-replace':
    spoken: 'replace it'
    description: 'find and replace a word'
    action: ->
      @key 'escape'
      @key 'f'
