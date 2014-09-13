require 'mkmf'

# --with-h2o-{dir,include,lib}
dir_config('h2o')

create_makefile('/h2o_native')
