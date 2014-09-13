require 'mkmf'

# --with-h2o-{dir,include,lib}
dir_config('h2o')

unless find_header 'h2o.h'
  abort <<-error
`h2o.h` is missing! Try to specify include dir containig h2o.h:
$ gem install h2o-ruby --with-h2o-include=/usr/local/include
  error
end

create_makefile('/h2o_native')
