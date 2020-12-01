# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :directory_indexes
set :lang, :cz
activate :i18n, :langs => [:cz, :en]

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# New redirects
redirect 'vyvoj-webovych-aplikaci-a-portalu', to: 'webove-aplikace-na-miru'
redirect 'vyvoj-slozitych-business-systemu', to: 'firemni-informacni-systemy-na-miru'
redirect 'reference/green-swan-pharmaceuticals-cr-as-rep-is-crm-system-webove-informacni-systemy', to: 'reference/greenswan'
redirect 'reference/informacni-systemy-a-webove-aplikace/autoprima-cr-autoprima-slovakia-b2b-system-webova-aplikace', to: 'reference/autoprima'
redirect 'reference/partspoint-ks-b2b-obchodni-system-webovy-informacni-system', to: 'reference/partspoint'
redirect 'reference/paartyycz-o2tv-vitana-nestle-nicolaus-webovy-portal-pro-podporu-wom-marketingu', to: 'reference/paartyy'

# Old redirects
redirect 'kinds_of_products/rezervacni_systemy.html', to: 'priklady_systemu/rezervacni_systemy'
redirect 'kinds_of_products/prodejni_portaly.html', to: 'priklady_systemu/prodejni_portaly'
redirect 'kinds_of_products/crm_systemy.html', to: 'priklady_systemu/crm_systemy'
redirect 'kinds_of_products/webove_dispecinky.html', to: 'priklady_systemu/webove_dispecinky'
redirect 'kinds_of_products/informacni_portaly.html', to: 'priklady_systemu/informacni_portaly'
redirect 'kinds_of_products/organizace_lidi.html', to: 'priklady_systemu/organizace_lidi'
redirect 'kinds_of_products/komunikacni_aplikace.html', to: 'priklady_systemu/komunikacni_aplikace'
redirect 'kinds_of_products/objednavkove_systemy.html', to: 'priklady_systemu/objednavkove_systemy'
redirect 'kinds_of_products/databaze.html', to: 'priklady_systemu/databaze'
redirect 'kinds_of_products/sprava_zakazek.html', to: 'priklady_systemu/sprava_zakazek'
redirect 'kinds_of_products/facebook_aplikace.html', to: 'priklady_systemu/facebook_aplikace'
redirect 'kinds_of_products/b2b_b2c_portaly.html', to: 'priklady_systemu/b2b_b2c_portaly'

redirect 'web_application_development.html', to: 'webove_aplikace_na_miru'
redirect 'corporate_information_systems.html', to: 'firemni_informacni_systemy_na_miru'
redirect 'enterprise_mobile_applications.html', to: 'podnikove_mobilni_aplikace'
redirect 'pillars.html', to: 'proc_iquest'
redirect 'technology.html', to: 'technologie'
redirect 'contact.html', to: 'kontakt'

redirect 'webove_aplikace_na_miru.html', to: 'volne-pozice'
redirect 'proc_iquest.html', to: 'proc-iquest'
redirect 'prace_programator_ruby_on_rails.html', to: 'volne-pozice'
redirect 'podnikove_mobilni_aplikace.html', to: 'podnikove-mobilni-aplikace'
redirect 'not_only_money.html', to: 'not-only-money'
redirect 'iquest_way.html', to: 'iquest-way'
redirect 'firemni_informacni_systemy_na_miru.html', to: 'firemni-informacni-systemy-na-miru'
redirect 'priklady_systemu/b2b_b2c_portaly.html', to: 'priklady-systemu/b2b-b2c-portaly'
redirect 'priklady_systemu/crm_systemy.html', to: 'priklady-systemu/crm-systemy'
redirect 'priklady_systemu/facebook_aplikace.html', to: 'priklady-systemu/facebook-aplikace'
redirect 'priklady_systemu/informacni_portaly.html', to: 'priklady-systemu/informacni-portaly'
redirect 'priklady_systemu/komunikacni_aplikace.html', to: 'priklady-systemu/komunikacni-aplikace'
redirect 'priklady_systemu/objednavkove_systemy.html', to: 'priklady-systemu/objednavkove-systemy'
redirect 'priklady_systemu/organizace_lidi.html', to: 'priklady-systemu/organizace-lidi'
redirect 'priklady_systemu/prodejni_portaly.html', to: 'priklady-systemu/prodejni-portaly'
redirect 'priklady_systemu/rezervacni_systemy.html', to: 'priklady-systemu/rezervacni-systemy'
redirect 'priklady_systemu/sprava_zakazek.html', to: 'priklady-systemu/sprava-zakazek'
redirect 'priklady_systemu/webove_dispecinky.html', to: 'priklady-systemu/webove-dispecinky'
redirect 'technologie/ruby_on_rails.html', to: 'technologie/ruby-on-rails'
redirect 'reference/cia_news.html', to: 'reference/cia-news'
redirect 'reference/modry_andel.html', to: 'reference/modry-andel'
redirect 'blog.html', to: 'http://blog.iquest.cz'
redirect 'prace-programator-ruby-on-rails.html', to: 'volne-pozice'
redirect 'reference/modry-andel.html', to: 'reference/modry-andel'

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
end

configure :development do
  # activate :livereload
end