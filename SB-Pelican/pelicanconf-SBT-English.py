#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Shubin Sun'
SITENAME = '智跃人才'
SITEURL = 'https://sb-talents.github.io/SBT-English'


PATH = 'content'

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
#RELATIVE_URLS = True

THEME = 'themes/bootstrap4-nero/'
BOOTSTRAP_THEME = 'Cerulean'
PLUGIN_PATHS = ['plugins', ]
PLUGINS = ['i18n_subsites'] 
JINJA_ENVIRONMENT = {'extensions': ['jinja2.ext.i18n']}

COOKIE_CONSENT2 = True

DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = True

# XXXXX
STATIC_PATHS = ['新概念英语第1册', '新概念英语第2册', '新概念英语第3册', '新概念英语第4册']

# XXXXX

OPTIONAL_SIDEBAR_BOTTOM = True
OPTIONAL_SIDEBAR_BOTTOM_TITLE = 'Disclaimer'
OPTIONAL_SIDEBAR_BOTTOM_ID= 'disclaimer'
OPTIONAL_SIDEBAR_BOTTOM_TEXT = 'Replace by your text for disclaimer'
