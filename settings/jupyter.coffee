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
    spoken: 'pallet'
    description: 'open jupyter notebooks command palette'
    action: ->
      @key 'p', 'command shift'
  'cell-run':
    spoken: 'run cell'
    misspellings: ['selrang']
    description: 'run the currently selected cell'
    action: ->
      @key 'enter', 'Control'
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
  'run-selected-cells':
    spoken: 'runly'
    description: 'run selected cells'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'run selected cells'
      @delay 10
      @key 'enter'


###########
# nico additions

  # 'insert-cell-below':
  #   spoken: 'insert below'
  #   description: 'insert cell below'
  #   action: ->
  #     @do 'jupyter:jupyter-pallet'
  #     @delay 100
  #     @string 'insert cell below'
  #     @delay 10
  #     @key 'enter'
  #     @key 'enter'
  'insert-cell-below':
    spoken: 'insert below'
    description: 'insert cell below'
    action: ->
      @key 'escape'
      @key 'b'
  # 'insert-cell-above':
  #   spoken: 'insert above'
  #   description: 'insert cell above'
  #   action: ->
  #     @do 'jupyter:jupyter-pallet'
  #     @delay 100
  #     @string 'insert cell above'
  #     @delay 10
  #     @key 'enter'
  #     @key 'enter'
  'insert-cell-above':
    spoken: 'insert above'
    description: 'insert cell above'
    action: ->
      @key 'escape'
      @key 'a'

  'find-replace':
    spoken: 'replace it'
    description: 'find and replace a word'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'find and replace'
      @delay 10
      @key 'enter'
      @key 'enter'
  'change-cell-to-markdown':
    spoken: 'markey'
    description: 'change cell to markdown'
    action: ->
      @do 'jupyter:jupyter-pallet'
      @delay 100
      @string 'change cell to markdown'
      @delay 10
      @key 'enter'
  'html-danger':
    spoken: 'html danger'
    description: 'type the html necessary to turn a markdown box red'
    action: ->
      @string "<div class='alert alert-danger'>\n<li>\n</div>"
