refreshFrequency: 100
command: "/Users/jmazz/bin/mpc-progress" 

render: (_) ->
  """
  <div class="progress-bar"></div>
  """

update: (output, domEl) ->
    $(domEl).find('.progress-bar').css width: output

style: """
  left: 20px
  bottom: 10px
  height: 40px
  width: calc(100% - 40px)
  z-index: -1

  .progress-bar
    position: absolute
    bottom: 0px
    height: 2px
    z-index: 10
    background: #E74C3C
"""
