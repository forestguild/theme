# World of Warcraft theme for Jekyll

[Live example](https://forestguild.club) - theme was built for that website

## Under development

Right now that theme has a lot of hardcoded elements of [website](https://forestguild.club).

It will take some time to cleanup it. We don't push theme gem to rubygems because of that issue.

## Configuration

### `_config.yml`

Add following config as top-level element of your `_config.yml`:

```yaml
ui:
  brand: Ясный Лес #Brand name or short name, example: website name 'Guild "Lala Land" @ EU Galakrond' may use 'Lala Land' as brand name
  addon: 8.1.5 #Current WoW Addon
  meta: #Website meta tags
    lang: ru #Website language code
    locale: ru_RU #Website locale code, examples: ru_RU, en_GB, en_US
    title: Гильдия Ясный Лес @ EU Галакронд #Website title
    description: Гильдия Ясный Лес, World of Warcraft, EU Галакронд. #Website meta description
    article: #Website articles meta
      category: Гайд #Articles' category
      tags: ['Гайд', 'WoW', 'World of Warcraft'] #Articles' tags
  images: #Website images (logos, etc) relative to site.url
    logo: #General website logo
      url: /assets/img/logo.png
      type: image/png #Image MIME-type
      has_svg: true #If your logo has SVG symbol variant, place it on /assets/logo.svg
    favicon:
      url: /favicon.ico #NOTE: best path is /favicon.ico, because some browsers will ignore that setting and try to load /favicon.ico
      type: image/x-icon
  verification: #Website verification HTML meta-tags
    yandex: 0e76a0024o392418
    google: GuZthk__XEN9oS-nLwAbRIP2wVBFXVr25u0zwJkUKdE
  analytics: # Website analytics. Supported only Yandex.Metrika right now
    yandex: 50342920
  ads: # Website ads. Supported only Yandex.Direct/Adfox
    type: yandex
    fallback: https://patreon.com/rakshazi #If person uses adblock he will see block under content with offer disable adblock or fund website with patreon or any other way
    page: # General page (like wiki article) ad blocks
      bottom: R-A-223582-4 # Block ID, under content
    amphtml: #AMP html blocks
      top: R-A-223582-2 #Block ID, above content, ONLY 300x250px
      bottom: R-A-223582-3 #Block ID, under content, ONLY 300x250px
```
### data files

That theme has so many config options, so we cant add them all to `_config.yml`, otherwaise it will be very VERY very huge.
So we decided to separate some things from `_config.yml` to data files in subdir (so your own data will not be affected).

#### Data files directory structure

```
_data/ui # Data subdir for theme files
├── assets # Special assets loader config
│   ├── head.yml # Assets, loaded before </head>
│   └── footer.yml # Assets, loaded before </body>
├── media.yml # Media configs, like Twitch streams or photo albums
└── navigation # Website navigation
    ├── top.yml # Top website menu in header
    └── wiki.yml # Global menu with articles, "wiki menu"
```

#### `_data/ui/assets/*.yml`

```yml
## CSS
- url: "/assets/css/tablesorter.min.css" # Path to file (relative to site.url)
  type: css # File type

## JavaScript examples

# Local JS file
- url: "/assets/js/tablesorter.filter.min.js" # Path to file (relative to site.url)
  defer: true # Add "defer" option
  type: js # File type

# External JS file
- url: https://wow.zamimg.com/widgets/power.js  # File url
  async: true # Add "async" option
  type: js #File type

# External JS module with integrity check
- url: https://instant.page/1.2.2 # File URL
  integrity: sha384-2xV8M5griQmzyiY3CDqh1dn4z3llDVqZDqzjzcY+jCBCk/a5fXJmuZ/40JJAPeoU #Integrity check
  type: js-module #JS module type
```

#### `_data/ui/navigation/top.yml`

```yml
left: #Left side of top menu
  - title: Discord # Link title (label)
    url: https://discord.gg/v9mNxAS # Link URL
    external: true # add nofollow and 'open in new page' for that link
  - title: "Медиа <i class='streaming_now'></i>" # Link title (label) with active streams count
    url: /wiki/media # Link URL
right: #Right side of top menu
  - title: Вики # Link title
    url: /wiki # Link url
```

#### `_data/ui/navigation/wiki.yml`

```yml
- title: Классы #Header (section) title
  items: # Section items
    - title: Друид # Item title
      class: text-wow # Item CSS class
      url: /wiki/classes/druid # Item URL
      items: # Sub-items
        - title: Танк # Sub-item title
          class: text-uppercase badge badge-dark # Sub-item css class
          url: /wiki/classes/druid/guardian # Sub-item url
        - title: Хил
          class: text-uppercase badge badge-success
          url: /wiki/classes/druid/restoration
        - title: РДД
          class: text-uppercase badge badge-danger
          url: /wiki/classes/druid/balance
#...
```

#### `_data/ui/media.yml`

```yml
stream: #Twitch Streams
  id: agbv4x1m45m4q772323b55rzvjirl9 # Twitch API Client-ID, to show "Streaming now" badge
  kit: https://drive.google.com/drive/folders/2bJKXUuji94a17DEwDrFLgzvc3ayWgQqD # Stream kit URL with branding instruction and media files
  users: # Streamers list
    - akulenokwow
    - etke
    - hitrayapopa
albums: # Website Albums
  - name: Лица Ясного Леса # Album title
    url: https://photos.app.goo.gl/CTRCcerKGbZpvPmB8 # Album URL
    cover: /assets/img/pages/media/album-faces.jpg # Album cover image (relative to site.url)
  - name: Встречи
    url: https://photos.app.goo.gl/VBeFsirg1X1cWU2r8
    cover: /assets/img/pages/media/album-meetings.jpg
  - name: Достижения
    url: https://photos.app.goo.gl/YCoJgMwhkJ7pcA1WA
    cover: /assets/img/pages/media/album-achievements.jpg
```
