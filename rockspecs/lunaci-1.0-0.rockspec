package = "lunaci"
version = "1.0-0"
source = {
  url = "git://github.com/moonhappy/lunaci",
  tag = "v1.0.0"
}
description = {
   summary = "Build Love2D projects for multiple platforms on popular CI services.",
   detailed = "Scripts to ease the automatic build for various platforms on popular CI services.",
   homepage = "https://github.com/moonhappy/lunaci",
   license = "UNLICENSE"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   install = {
     bin = {
       "bin/install.sh"
     }
   }
}
