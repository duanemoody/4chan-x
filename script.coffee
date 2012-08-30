Config =
  main:
    Enhancing:
      '404 Redirect':                 [true,  'Redirect dead threads and images.']
      'Keybinds':                     [true,  'Bind actions to keyboard shortcuts.']
      'Time Formatting':              [true,  'Localize and format timestamps arbitrarily.']
      'File Info Formatting':         [true,  'Reformat the file information.']
      'Comment Expansion':            [true,  'Can expand too long comments.']
      'Thread Expansion':             [true,  'Can expand threads to view all replies.']
      'Index Navigation':             [false, 'Navigate to previous / next thread.']
      'Reply Navigation':             [false, 'Navigate to top / bottom of thread.']
      'Check for Updates':            [true,  'Check for updated versions of 4chan X.']
    Filtering:
      'Anonymize':                    [false, 'Turn everyone Anonymous.']
      'Filter':                       [true,  'Self-moderation placebo.']
      'Recursive Filtering':          [true,  'Filter replies of filtered posts, recursively.']
      'Reply Hiding':                 [true,  'Hide single replies.']
      'Thread Hiding':                [true,  'Hide entire threads.']
      'Stubs':                        [true,  'Make stubs of hidden threads / replies.']
    Imaging:
      'Image Auto-Gif':               [false, 'Animate GIF thumbnails.']
      'Image Expansion':              [true,  'Expand images.']
      'Expand From Position':         [true,  'Expand all images only from current position to thread end.']
      'Image Hover':                  [false, 'Show full image on mouseover.']
      'Sauce':                        [true,  'Add sauce links to images.']
      'Reveal Spoilers':              [false, 'Reveal spoiler thumbnails.']
    Menu:
      'Menu':                         [true,  'Add a drop-down menu in posts.']
      'Report Link':                  [true,  'Add a report link to the menu.']
      'Delete Link':                  [true,  'Add post and image deletion links to the menu.']
      'Download Link':                [true,  'Add a download with original filename link to the menu. Chrome-only currently.']
      'Archive Link':                 [true,  'Add an archive link to the menu.']
    Monitoring:
      'Thread Updater':               [true,  'Fetch and insert new replies. Has more options in its own dialog.']
      'Unread Count':                 [true,  'Show the unread posts count in the tab title.']
      'Unread Favicon':               [true,  'Show a different favicon when there are unread posts.']
      'Post in Title':                [true,  'Show the thread\'s subject in the tab title.']
      'Thread Stats':                 [true,  'Display reply and image count.']
      'Thread Watcher':               [true,  'Bookmark threads.']
      'Auto Watch':                   [true,  'Automatically watch threads that you start.']
      'Auto Watch Reply':             [false, 'Automatically watch threads that you reply to.']
    Posting:
      'Quick Reply':                  [true,  'WMD.']
      'Persistent QR':                [false, 'The Quick reply won\'t disappear after posting.']
      'Auto Hide QR':                 [false, 'Automatically hide the quick reply when posting.']
      'Open Reply in New Tab':        [false, 'Open replies posted from the board pages in a new tab.']
      'Remember Subject':             [false, 'Remember the subject field, instead of resetting after posting.']
      'Remember Spoiler':             [false, 'Remember the spoiler state, instead of resetting after posting.']
      'Hide Original Post Form':      [true,  'Replace the normal post form with a shortcut to open the QR.']
    Quoting:
      'Quote Backlinks':              [true,  'Add quote backlinks.']
      'OP Backlinks':                 [false, 'Add backlinks to the OP.']
      'Quote Inline':                 [true,  'Inline quoted post on click.']
      'Forward Hiding':               [true,  'Hide original posts of inlined backlinks.']
      'Quote Preview':                [true,  'Show quoted post on hover.']
      'Quote Highlighting':           [true,  'Highlight the previewed post.']
      'Resurrect Quotes':             [true,  'Linkify dead quotes to archives.']
      'Indicate OP quote':            [true,  'Add \'(OP)\' to OP quotes.']
      'Indicate Cross-thread Quotes': [true,  'Add \'(Cross-thread)\' to cross-threads quotes.']
  filter:
    name: [
      '# Filter any namefags:'
      '#/^(?!Anonymous$)/'
    ].join '\n'
    uniqueid: [
      '# Filter a specific ID:'
      '#/Txhvk1Tl/'
    ].join '\n'
    tripcode: [
      '# Filter any tripfags'
      '#/^!/'
    ].join '\n'
    capcode: [
      '# Set a custom class for mods:'
      '#/Mod$/;highlight:mod;op:yes'
      '# Set a custom class for moot:'
      '#/Admin$/;highlight:moot;op:yes'
    ].join '\n'
    email: [
      '# Filter any e-mails that are not `sage` on /a/ and /jp/:'
      '#/^(?!sage$)/;boards:a,jp'
    ].join '\n'
    subject: [
      '# Filter Generals on /v/:'
      '#/general/i;boards:v;op:only'
    ].join '\n'
    comment: [
      '# Filter Stallman copypasta on /g/:'
      '#/what you\'re refer+ing to as linux/i;boards:g'
    ].join '\n'
    flag: [
      ''
    ].join '\n'
    filename: [
      ''
    ].join '\n'
    dimensions: [
      '# Highlight potential wallpapers:'
      '#/1920x1080/;op:yes;highlight;top:no;boards:w,wg'
    ].join '\n'
    filesize: [
      ''
    ].join '\n'
    md5: [
      ''
    ].join '\n'
  sauces: [
    'http://iqdb.org/?url=$1'
    'http://www.google.com/searchbyimage?image_url=$1'
    '#http://tineye.com/search?url=$1'
    '#http://saucenao.com/search.php?db=999&url=$1'
    '#http://3d.iqdb.org/?url=$1'
    '#http://regex.info/exif.cgi?imgurl=$2'
    '# uploaders:'
    '#http://imgur.com/upload?url=$2;text:Upload to imgur'
    '#http://omploader.org/upload?url1=$2;text:Upload to omploader'
    '# "View Same" in archives:'
    '#http://archive.foolz.us/search/image/$3/;text:View same on foolz'
    '#http://archive.foolz.us/$4/search/image/$3/;text:View same on foolz /$4/'
    '#https://archive.installgentoo.net/$4/image/$3;text:View same on installgentoo /$4/'
  ].join '\n'
  time: '%m/%d/%y(%a)%H:%M'
  backlink: '>>%id'
  fileInfo: '%l (%p%s, %r)'
  favicon: 'ferongr'
  hotkeys:
    # QR & Options
    'open QR':            ['q',      'Open QR with post number inserted.']
    'open empty QR':      ['Q',      'Open QR without post number inserted.']
    'open options':       ['alt+o',  'Open Options.']
    'close':              ['Esc',    'Close Options or QR.']
    'spoiler tags':       ['ctrl+s', 'Insert spoiler tags.']
    'code tags':          ['alt+c',  'Insert code tags.']
    'submit QR':          ['alt+s',  'Submit post.']
    # Thread related
    'watch':              ['w',      'Watch thread.']
    'update':             ['u',      'Update the thread now.']
    'reset unread count': ['r',      'Reset unread status.']
    # Images
    'expand image':       ['E',      'Expand selected image.']
    'expand images':      ['e',      'Expand all images.']
    # Board Navigation
    'front page':         ['0',      'Jump to page 0.']
    'next page':          ['Right',  'Jump to the next page.']
    'previous page':      ['Left',   'Jump to the previous page.']
    # Thread Navigation
    'next thread':        ['Down',   'See next thread.']
    'previous thread':    ['Up',     'See previous thread.']
    'expand thread':      ['ctrl+e', 'Expand thread.']
    'open thread':        ['o',      'Open thread in current tab.']
    'open thread tab':    ['O',      'Open thread in new tab.']
    # Reply Navigation
    'next reply':         ['j',      'Select next reply.']
    'previous reply':     ['k',      'Select previous reply.']
    'hide':               ['x',      'Hide thread.']
  updater:
    checkbox:
      'Auto Scroll': [false, 'Scroll updated posts into view. Only enabled at bottom of page.']
      'Scroll BG':   [false, 'Auto-scroll background tabs.']
      'Auto Update': [true,  'Automatically fetch new posts.']
    'Interval': 30
  imageFit: 'fit width'

# Opera doesn't support the @match metadata key,
# return 4chan X here if we're not on 4chan.
return unless /^(boards|images|sys)\.4chan\.org$/.test location.hostname

Conf = {}
d = document
g =
  VERSION:   '3.0.0'
  NAMESPACE: '4chan_X.'
  boards:  {}
  threads: {}
  posts:   {}

UI =
  dialog: (id, position, html) ->
    el = d.createElement 'div'
    el.className = 'reply dialog'
    el.innerHTML = html
    el.id        = id
    el.style.cssText = localStorage.getItem("#{g.NAMESPACE}#{id}.position") or position
    el.querySelector('.move').addEventListener 'mousedown', UI.dragstart, false
    el
  dragstart: (e) ->
    # prevent text selection
    e.preventDefault()
    UI.el = el = @parentNode
    d.addEventListener 'mousemove', UI.drag,    false
    d.addEventListener 'mouseup',   UI.dragend, false
    # distance from pointer to el edge is constant; calculate it here.
    rect      = el.getBoundingClientRect()
    UI.dx     = e.clientX - rect.left
    UI.dy     = e.clientY - rect.top
    UI.width  = d.documentElement.clientWidth  - rect.width
    UI.height = d.documentElement.clientHeight - rect.height
  drag: (e) ->
    left = e.clientX - UI.dx
    top  = e.clientY - UI.dy
    left =
      if left < 10 then '0px'
      else if UI.width - left < 10 then null
      else left + 'px'
    top =
      if top < 10 then '0px'
      else if UI.height - top < 10 then null
      else top + 'px'
    {style} = UI.el
    style.left   = left
    style.top    = top
    style.right  = if left then null else '0px'
    style.bottom = if top  then null else '0px'
  dragend: ->
    localStorage.setItem "#{g.NAMESPACE}#{UI.el.id}.position", UI.el.style.cssText
    d.removeEventListener 'mousemove', UI.drag,    false
    d.removeEventListener 'mouseup',   UI.dragend, false
    delete UI.el
  hover: (e) ->
    {clientX, clientY} = e
    {style} = UI.el
    {clientHeight, clientWidth} = d.documentElement
    height = UI.el.offsetHeight

    top = clientY - 120
    style.top =
      if clientHeight <= height or top <= 0
        '0px'
      else if top + height >= clientHeight
        clientHeight - height + 'px'
      else
        top + 'px'

    if clientX <= clientWidth - 400
      style.left  = clientX + 45 + 'px'
      style.right = null
    else
      style.left  = null
      style.right = clientWidth - clientX + 45 + 'px'
  hoverend: ->
    $.rm UI.el
    delete UI.el

###
loosely follows the jquery api:
http://api.jquery.com/
not chainable
###
$ = (selector, root=d.body) ->
  root.querySelector selector
$$ = (selector, root=d.body) ->
  Array::slice.call root.querySelectorAll selector

$.extend = (object, properties) ->
  for key, val of properties
    object[key] = val
  return

$.extend $,
  SECOND: 1000
  MINUTE: 1000 * 60
  HOUR  : 1000 * 60 * 60
  DAY   : 1000 * 60 * 60 * 24
  log: console.log.bind console
  engine: /WebKit|Presto|Gecko/.exec(navigator.userAgent)[0].toLowerCase()
  id: (id) ->
    d.getElementById id
  ready: (fc) ->
    if /interactive|complete/.test d.readyState
      $.queueTask fc
      return
    cb = ->
      $.off d, 'DOMContentLoaded', cb
      fc()
    $.on d, 'DOMContentLoaded', cb
  sync: (key, cb) ->
    $.on window, 'storage', (e) ->
      if e.key is "#{g.NAMESPACE}#{key}"
        cb JSON.parse e.newValue
  formData: (form) ->
    if form instanceof HTMLFormElement
      return new FormData form
    fd = new FormData()
    for key, val of form
      fd.append key, val if val
    fd
  ajax: (url, callbacks, opts={}) ->
    {type, headers, upCallbacks, form} = opts
    r = new XMLHttpRequest()
    type or= form and 'post' or 'get'
    r.open type, url, true
    for key, val of headers
      r.setRequestHeader key, val
    $.extend r, callbacks
    $.extend r.upload, upCallbacks
    r.send form
    r
  cache: (url, cb) ->
    reqs = $.cache.requests or= {}
    if req = reqs[url]
      if req.readyState is 4
        cb.call req
      else
        req.callbacks.push cb
      return
    req = $.ajax url,
      onload:  ->
        cb.call @ for cb in @callbacks
        return
      onabort: -> delete reqs[url]
      onerror: -> delete reqs[url]
    req.callbacks = [cb]
    reqs[url] = req
  cb:
    checked: ->
      $.set @name, @checked
      Conf[@name] = @checked
    value: ->
      $.set @name, @value.trim()
      Conf[@name] = @value
  addStyle: (css) ->
    style = $.el 'style',
      textContent: css
    $.add d.head, style
    style
  x: (path, root=d.body) ->
    # XPathResult.ANY_UNORDERED_NODE_TYPE is 8
    d.evaluate(path, root, null, 8, null).singleNodeValue
  addClass: (el, className) ->
    el.classList.add className
  rmClass: (el, className) ->
    el.classList.remove className
  hasClass: (el, className) ->
    el.classList.contains className
  rm: (el) ->
    el.parentNode.removeChild el
  tn: (s) ->
    d.createTextNode s
  nodes: (nodes) ->
    # In (at least) Chrome, elements created inside different
    # scripts/window contexts inherit from unequal prototypes.
    # window_context1.Node !== window_context2.Node
    unless nodes instanceof Array
      return nodes
    frag = d.createDocumentFragment()
    for node in nodes
      frag.appendChild node
    frag
  add: (parent, el) ->
    parent.appendChild $.nodes el
  prepend: (parent, el) ->
    parent.insertBefore $.nodes(el), parent.firstChild
  after: (root, el) ->
    root.parentNode.insertBefore $.nodes(el), root.nextSibling
  before: (root, el) ->
    root.parentNode.insertBefore $.nodes(el), root
  replace: (root, el) ->
    root.parentNode.replaceChild $.nodes(el), root
  el: (tag, properties) ->
    el = d.createElement tag
    $.extend el, properties if properties
    el
  on: (el, events, handler) ->
    for event in events.split ' '
      el.addEventListener event, handler, false
    return
  off: (el, events, handler) ->
    for event in events.split ' '
      el.removeEventListener event, handler, false
    return
  open: (url) ->
    (GM_openInTab or window.open) url, '_blank'
  queueTask:
    # inspired by https://www.w3.org/Bugs/Public/show_bug.cgi?id=15007
    (->
      taskQueue = []
      execTask = ->
        task = taskQueue.shift()
        func = task[0]
        args = Array::slice.call task, 1
        func.apply func, args
      if window.MessageChannel
        taskChannel = new MessageChannel()
        taskChannel.port1.onmessage = execTask
        ->
          taskQueue.push arguments
          taskChannel.port2.postMessage null
      else # XXX Firefox
        ->
          taskQueue.push arguments
          setTimeout execTask, 0
    )()
  globalEval: (code) ->
    script = $.el 'script',
      textContent: code
    $.add d.head, script
    $.rm script
  # http://mths.be/unsafewindow
  unsafeWindow:
    if window.opera # Opera
      window
    else if unsafeWindow isnt window # Firefox
      unsafeWindow
    else # Chrome
      (->
        p = d.createElement 'p'
        p.setAttribute 'onclick', 'return window'
        p.onclick()
      )()
  shortenFilename: (filename, isOP) ->
    # FILENAME SHORTENING SCIENCE:
    # OPs have a +10 characters threshold.
    # The file extension is not taken into account.
    threshold = if isOP then 40 else 30
    if filename.length - 4 > threshold
      "#{filename[...threshold - 5]}(...).#{filename.match(/\w+$/)}"
    else
      filename
  bytesToString: (size) ->
    unit = 0 # Bytes
    while size >= 1024
      size /= 1024
      unit++
    # Remove trailing 0s.
    size =
      if unit > 1
        # Keep the size as a float if the size is greater than 2^20 B.
        # Round to hundredth.
        Math.round(size * 100) / 100
      else
        # Round to an integer otherwise.
        Math.round size
    "#{size} #{['B', 'KB', 'MB', 'GB'][unit]}"

$.extend $,
  if GM_deleteValue?
    delete: (name) ->
      GM_deleteValue g.NAMESPACE + name
    get: (name, defaultValue) ->
      if value = GM_getValue g.NAMESPACE + name
        JSON.parse value
      else
        defaultValue
    set: (name, value) ->
      name  = g.NAMESPACE + name
      value = JSON.stringify value
      # for `storage` events
      localStorage.setItem name, value
      GM_setValue name, value
  else if window.opera
    delete: (name)->
      delete opera.scriptStorage[g.NAMESPACE + name]
    get: (name, defaultValue) ->
      if value = opera.scriptStorage[g.NAMESPACE + name]
        JSON.parse value
      else
        defaultValue
    set: (name, value) ->
      name  = g.NAMESPACE + name
      value = JSON.stringify value
      # for `storage` events
      localStorage.setItem name, value
      opera.scriptStorage[name] = value
  else
    delete: (name) ->
      localStorage.removeItem g.NAMESPACE + name
    get: (name, defaultValue) ->
      if value = localStorage.getItem g.NAMESPACE + name
        JSON.parse value
      else
        defaultValue
    set: (name, value) ->
      localStorage.setItem g.NAMESPACE + name, JSON.stringify value


class Board
  constructor: (@ID) ->
    @threads = {}
    @posts   = {}

    g.boards[@ID] = @

  toString: -> @ID

class Thread
  constructor: (@root, @board) ->
    @ID = +root.id[1..]
    @hr = root.nextElementSibling
    @posts = {}

    g.threads["#{board.ID}.#{@ID}"] = board.threads[@ID] = @
  callbacks: []

class Post
  constructor: (@root, @thread, @board) ->
    @ID = +root.id[2..]
    @el = $ '.post', root

    g.posts["#{board.ID}.#{@ID}"] = thread.posts[@ID] = board.posts[@ID] = @
  callbacks: []

Main =
  init: ->
    # flatten Config into Conf
    # and get saved or default values
    flatten = (parent, obj) ->
      if obj instanceof Array
        Conf[parent] = obj[0]
      else if typeof obj is 'object'
        for key, val of obj
          flatten key, val
      else # string or number
        Conf[parent] = obj
      return
    flatten null, Config
    for key, val of Conf
      Conf[key] = $.get key, val

    pathname = location.pathname.split '/'
    g.BOARD  = new Board pathname[1]
    if g.REPLY = pathname[2] is 'res'
      g.THREAD = +pathname[3]

    switch location.hostname
      when 'boards.4chan.org'
        Main.addStyle()
        Main.initHeader()
        Main.initFeatures()
      when 'sys.4chan.org'
        return
      when 'images.4chan.org'
        return

  initHeader: ->
    Main.header = $.el 'div',
      className: 'reply'
      innerHTML: '<div class=extra></div>'
    # disable 4chan's features
    localStorage.setItem '4chan_settings', false
    $.ready Main.initHeaderReady
  initHeaderReady: ->
    return unless $.id 'navtopr'
    header = Main.header
    $.prepend d.body, header

    nav = $.id 'boardNavDesktop'
    header.id = nav.id
    $.prepend header, nav
    nav.id = nav.className = null
    nav.lastElementChild.hidden = true
    settings = $.el 'span',
      id: 'settings'
      innerHTML: '[<a href=javascript:;>Settings</a>]'
    $.on settings.firstElementChild, 'click', Main.settings
    $.add nav, settings
    $("a[href$='/#{g.BOARD}/']", nav)?.className = 'current'

    $.addClass d.body, $.engine
    $.addClass d.body, 'fourchan_x'

    # disable the mobile layout
    $('link[href*=mobile]', d.head)?.disabled = true
    $.id('boardNavDesktopFoot')?.hidden = true

  initFeatures: ->
    $.ready Main.initFeaturesReady
  initFeaturesReady: ->
    return unless $.id 'navtopr'

    threads = []
    posts   = []

    for child in $('.board').children
      continue unless child.className is 'thread'
      thread = new Thread child, g.BOARD
      threads.push thread
      for child in thread.root.children
        continue unless $.hasClass child, 'postContainer'
        posts.push new Post child, thread, g.BOARD

    Main.callbackNodes Thread, threads, true
    Main.callbackNodes Post,   posts,   true

  callbackNodes: (klass, nodes, notify) ->
    # get the nodes' length only once
    len = nodes.length
    for callback in klass::callbacks
      try
        for i in [0...len]
          callback.cb.call nodes[i]
      catch err
        # handle error if notify
    return

  settings: ->
    alert 'Here be settings'

  addStyle: ->
    $.off d, 'DOMNodeInserted', Main.addStyle
    if d.head
      $.addStyle Main.css
    else
      $.on d, 'DOMNodeInserted', Main.addStyle
  css: """
/* general */
.move {
  cursor: move;
}
label {
  cursor: pointer;
}

/* 4chan style fixes */
.opContainer, .op {
  display: block !important;
}
.post {
  overflow: visible !important;
}

/* header */
body.fourchan_x {
  margin-top: 2.5em;
}
#boardNavDesktop.reply {
  border-width: 0 0 1px;
  padding: 4px;
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  transition: opacity .1s ease-in-out;
  -o-transition: opacity .1s ease-in-out;
  -moz-transition: opacity .1s ease-in-out;
  -webkit-transition: opacity .1s ease-in-out;
  z-index: 1;
}
#boardNavDesktop.reply:not(:hover) {
  opacity: .4;
  transition: opacity 1.5s .5s ease-in-out;
  -o-transition: opacity 1.5s .5s ease-in-out;
  -moz-transition: opacity 1.5s .5s ease-in-out;
  -webkit-transition: opacity 1.5s .5s ease-in-out;
}
#boardNavDesktop.reply a {
  margin: -1px;
}
#settings {
  float: right;
}
"""

Main.init()
