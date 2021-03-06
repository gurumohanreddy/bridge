---
---
RaudraApp = {}

RaudraApp.Utils =
  affixNavBar: ->
    $('#home-page header nav').affix
      offset:
        top: 100
  initWowJs: ->
    new WOW().init()
  init: ->
    RaudraApp.Utils.affixNavBar()
    RaudraApp.Utils.initWowJs()

RaudraApp.Apply =
  showApplicationWizard: ->
    $('#application-wizard').show()
  hideApplicationWizard: ->
    $('#application-wizard').hide()
  startApplication: ->
    $('#application-trigger').hide()
    @showApplicationWizard()
  bindStartTrigger: ->
    $('#apply-start').click (ev) =>
      ev.preventDefault()
      @startApplication()
  init: ->
    @hideApplicationWizard()
    @bindStartTrigger()

$ ->
  RaudraApp.Utils.init()
  RaudraApp.Apply.init()
