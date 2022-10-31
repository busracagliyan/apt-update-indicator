project('apt-update-indicator',
  version: '0.18.0',
  license: 'GPL3'
)

gnome = import ('gnome')
i18n = import('i18n')

prefix = get_option('prefix')
datadir = join_paths (prefix, get_option('datadir'))
schema_dir = join_paths(datadir, 'glib-2.0', 'schemas')

extensions_dir = join_paths(prefix, 'share', 'gnome-shell', 'extensions', 'apt-update-indicator@pardus.org.tr')

install_data([
    'extension.js',
    'indicator.js',
    'metadata.json',
    'monitors.js',
    'prefs.js',
    'Settings.ui',
    'stylesheet.css',
    'updateManager.js',
    'utils.js'
  ],
  install_dir: extensions_dir
)

install_subdir('media', install_dir : extensions_dir)

install_subdir('scripts', install_dir : extensions_dir)


subdir(
  'po'
)
subdir(
  'schemas'
)

meson.add_install_script('meson_post_install.py')
