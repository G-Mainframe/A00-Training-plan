#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Shubin Sun'
SITENAME = 'Pelican 测试环境'
SITEURL = 'https://Trex-Group.GitHub.io'


# 内容文件夹
PATH = 'content'
# 时区
TIMEZONE = 'Asia/Tokyo'

DEFAULT_LANG = 'zh-CN'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True
# RELATIVE_URLS = False

# 主题
THEME = 'themes/gum/'
SITE_LOGO = 'images/your-image.jpg'
PUBLISHER_LOGO = 'images/your-image.jpg'

# XXXXX
# STATIC_PATHS = ['新概念英语第1册', '新概念英语第2册', '新概念英语第3册', '新概念英语第4册']

# using Bootswatch Flatly
BS3_THEME = 'http://bootswatch.com/3/flatly/bootstrap.min.css'
BOOTSTRAP_THEME = 'slate'


# 插件
PLUGIN_PATHS = ['plugins', ]
PLUGINS = ['i18n_subsites', "tag_cloud"] 
JINJA_ENVIRONMENT = {'extensions': ['jinja2.ext.i18n']}

JSON_LD = True
JSON_LD_BREADCRUMBLIST = True
COOKIE_CONSENT2 = True

SPHINX_COPYBUTTON = True



DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = True



# 布局选项

OPTIONAL_SIDEBAR_BOTTOM = True
OPTIONAL_SIDEBAR_BOTTOM_TITLE = 'Disclaimer'
OPTIONAL_SIDEBAR_BOTTOM_ID= 'disclaimer'
OPTIONAL_SIDEBAR_BOTTOM_TEXT = 'Replace by your text for disclaimer'
