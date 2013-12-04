Redmine::Plugin.register :polls do
  name 'Polls'
  author 'Aleksandr Lapitskiy'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://127.0.0.1:3000/polls'

  requires_redmine :version_or_higher => '1.1.2'
end
