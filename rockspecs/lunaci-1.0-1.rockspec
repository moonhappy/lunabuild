package = "lunaci"
version = "1.0-1"
source = {
   url = "git+https://github.com/moonhappy/lunaci.git"
}
description = {
   summary = "Build Love2D projects for multiple platforms on popular CI services.",
   detailed = "Scripts to ease the automatic build for various platforms on popular CI services.",
   homepage = "https://github.com/moonhappy/lunaci",
   license = "UNLICENSE"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   install = {
     bin = {
       "bin/install.sh"
     }
   },
   modules = {}
}