command: "/Users/jmazz/.kwm/scripts/bar.sh"

refreshFrequency: 500

render: (output) ->
    """

    <span class="left">#{output}</span>
    """

style: """
    left: 20px
    bottom: 10px
    padding-left: 20px
    height: 40px
    line-height: 40px
    font-family: "Fira Code Retina"
    font-size: 20px
    color: #E6E6E6

    .active
        color: #E74C3C
    .devicons-vim
        vertical-align: -10%
    .notify
        color: #3498DB
"""
