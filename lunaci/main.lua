local argparse = require "argparse"
-- local commands = require 'loverocks.commands'
-- local loadconf = require 'loverocks.loadconf'
-- local log      = require 'loverocks.log'
-- local luarocks = require 'loverocks.luarocks'

local function main(...)
	local parser = argparse("lunaci", "Configure existing LÖVE projects with build scripts for popular CI services")
  parser:argument("dir", "Path of the LÖVE project directory to configure build scripts to.")
end

main(...)
