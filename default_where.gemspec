# -*- encoding: utf-8 -*-
# stub: default_where 2.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "default_where".freeze
  s.version = "2.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["qinmingyuan".freeze]
  s.date = "2020-10-29"
  s.description = "Description of".freeze
  s.email = ["mingyuan0715@foxmail.com".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "lib/default_where".freeze, "lib/default_where.rb".freeze, "lib/default_where/active_record.rb".freeze, "lib/default_where/group.rb".freeze, "lib/default_where/order.rb".freeze, "lib/default_where/params.rb".freeze, "lib/default_where/version.rb".freeze, "test/config".freeze, "test/config/database.yml.example".freeze, "test/default_where_test.rb".freeze, "test/factories".freeze, "test/factories/users.rb".freeze, "test/helper.rb".freeze, "test/migrations".freeze, "test/migrations/20180508082145_test_init.rb".freeze, "test/models".freeze, "test/models/user.rb".freeze]
  s.homepage = "https://github.com/qinmingyuan/default_where".freeze
  s.licenses = ["LGPL-3.0".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "default process params for where".freeze
  s.test_files = ["test/helper.rb".freeze, "test/models".freeze, "test/models/user.rb".freeze, "test/factories".freeze, "test/factories/users.rb".freeze, "test/default_where_test.rb".freeze, "test/migrations".freeze, "test/migrations/20180508082145_test_init.rb".freeze, "test/config".freeze, "test/config/database.yml.example".freeze]

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["<= 6.1", ">= 4.0"])
      s.add_development_dependency(%q<sdoc>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.3"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, ["~> 4.11"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["<= 6.1", ">= 4.0"])
      s.add_dependency(%q<sdoc>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
      s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.11"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["<= 6.1", ">= 4.0"])
    s.add_dependency(%q<sdoc>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.11"])
  end
end
