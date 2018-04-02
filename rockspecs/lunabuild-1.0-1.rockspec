package = "lunabuild"
version = "1.0-1"
source = {
   url = "git+https://github.com/moonhappy/lunabuild.git"
}
description = {
   summary = "Build Love2D projects for multiple platforms or on popular CI services.",
   detailed = "Build Love2D project distributions with ease, or on CI service.",
   homepage = "https://github.com/moonhappy/lunabuild",
   license = "UNLICENSE"
}
dependencies = {
   "lua >= 5.1",
   "argparse >= 0.5",
   "loadconf >= 0.3",
   "etlua >= 1.3"
}
build = {
   type = "builtin",
   install = {
     bin = {
       "bin/lunabuild"
     }
   },
   modules = {
     ["lunabuild.build"]              = "lunabuild/build.lua",
     ["lunabuild.gitlab"]             = "lunabuild/gitlab.lua"
   }
}
