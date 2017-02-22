# command: 'date +"%b %d %H:%M"'
# command: 'date +"%b %d %l:%M %p"'
command: "/Users/jmazz/.kwm/scripts/bar-right.sh"
# command: 'date +"%b %d %r"'

refreshFrequency: 500

        # <i style="color: #469FD3;" class="fa fa-docker"></i>
render: (output) ->
    data = JSON.parse(output)

    netIn = data.netspeeds.split(' ')[0]
    netOut = data.netspeeds.split(' ')[1]


    """
    <span class="docker-wrapper">
        <i class="fa fa-docker"></i>
        <span class="docker">#{data.docker}</span>
    </span>

    <span>
        <i class="fa fa-download"></i> <span class="net-in">#{netIn}</span>
        <i class="fa fa-upload"></i> <span class="net-out">#{netOut}</span>
    </span>

    <span class="battery-wrapper">
        <i id="battery-icon"></i> <span class="battery"></span>
    </span>

    <i class="fa fa-bar-chart"></i> <span class="cpu">#{data.cpu}</span>

    <i class="fa fa-calendar"></i>
    <span class="date">#{data.date}</span>

    <i class="fa fa-clock-o"></i> <span class="time">#{data.time}</span>
    """


update: (output, el) ->
    data = JSON.parse(output)
    netIn=data.netspeeds.split(' ')[0]
    netOut=data.netspeeds.split(' ')[1]

    batteryIcon = (bat) =>
      return if bat > 90
        "fa-battery-full"
      else if bat > 70
        "fa-battery-three-quarters"
      else if bat > 40
        "fa-battery-half"
      else if bat > 20
        "fa-battery-quarter"
      else
        "fa-battery-empty"

    $('.net-in', el).text(netIn)
    $('.net-out', el).text(netOut)
    $('.docker', el).text(data.docker)
    $('.date', el).text(data.date)
    $('.time', el).text(data.time)
    $('.cpu', el).text(data.cpu)

    $('.battery', el).text(data.battery)
    $('#battery-icon', el).removeClass().addClass("fa #{batteryIcon(parseInt(data.battery))}")

    if data.docker is "0" then $('.docker-wrapper', el).css visibility: 'hidden' else $('.docker-wrapper', el).css visibility: 'visible'

style: """
    right: 20px
    bottom: 10px
    padding-right: 20px
    height: 40px
    line-height: 40px
    font-family: "Fira Code"
    font-size: 20px
    color: #E6E6E6

    .section
        padding-left: 10px
        padding-right: 10px
"""

