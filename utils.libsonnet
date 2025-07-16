{
  manifestTmux(obj)::
    std.join('\n', [
      local value = obj[k];
      'set -ogq @thm_%s "%s"' % [k, value]

      for k in std.objectFields(obj)
    ]),
  manifestConf(obj)::
    std.join('\n', [
      local value = obj[k];
      '%s %s' % [k, value]

      for k in std.objectFields(obj)
    ]),
  Theme: {
    white: error 'Must override',
    dark_purple: error 'Must override',
    light_purple: error 'Must override',
    red: error 'Must override',
    pink: error 'Must override',
    orange: error 'Must override',
    yellow: error 'Must override',
    green: error 'Must override',
    teal: error 'Must override',
    light_blue: error 'Must override',
    dark_blue: error 'Must override',
    text_alt: error 'Must override',
    text_alt_2: error 'Must override',
    border: error 'Must override',
    bg: error 'Must override',
    bg_alt: error 'Must override',
    fg: error 'Must override',
    fg_dark: error 'Must override',
  },
}
