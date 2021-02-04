module ApplicationHelper
  def fa_icon(name, klass = '', fa_type = 'fas')
    tag.i('', class: "#{fa_type} fa-fw fa-#{name} #{klass}", 'aria-hidden': 'true')
  end
end
