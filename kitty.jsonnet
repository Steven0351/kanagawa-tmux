local conifer = import 'conifer.libsonnet';
local util = import 'utils.libsonnet';

{
  'conifer.conf': util.manifestConf({
    foreground: conifer.stone,
    background: conifer.bg1,
    selection_foreground: conifer.stone,
    selection_background: conifer.fog,

    //: Cursor conifer

    cursor: conifer.cursor_bg,

    //: URL underline color when overing with mouse

    url_color: conifer.purple,

    //: The basic 16 conifer

    //: black
    color0: conifer.bg0,
    color8: conifer.bg6,

    //: red
    color1: conifer.bark,
    color9: conifer.red,

    //: green
    color2: conifer.leaf,
    color10: conifer.moss,

    //: yellow
    color3: conifer.sign_change,
    color11: conifer.warning,

    //: blue
    color4: conifer.medium_green,
    color12: conifer.dark_green,

    //: magenta
    color5: conifer.fog,
    color13: conifer.dark_purple,

    //: cyan
    color6: conifer.cyan,
    color14: conifer.azure,

    //: white
    color7: conifer.fg3,
    color15: conifer.fg0,

    //: You can set the remaining 240 conifer as color16 to color255.

    color16: conifer.orange,
    color17: conifer.bright_orange,
  }),
}
