# mybar

*for lack of a better name*

![screen shot 2017-02-22 at 11 36 01 am](https://cloud.githubusercontent.com/assets/1270998/23222080/ce73f6dc-f8f4-11e6-9ce2-37a8b62d49f2.png)

- KWM status (monocle vs BSP)
- current apps on screen as icons (manually managing a bunch of `sed`s)
- current app highlighted (sometimes breaks)
- network, battery, cpu, date, time
- current `mpc` song and progress as line

Still planning on setting up some good flexbox divs and an easy way to add/remove rearrange items.
Current script dumps out JSON, which gets parsed by CoffeeScript, and updates dom elements with values.
