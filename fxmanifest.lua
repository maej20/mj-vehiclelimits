version '0.1.0-alpha'
description 'Limits the speed of vehicles based on QB-Core vehicle categories.  For use with the QB-Core Framework.'
author 'Matthew Johnson <maej@pm.me>'
repository 'https://github.com/maej20/mj-vehiclelimits'

fx_version 'cerulean'
game 'gta5'

client_scripts {
  'config.lua',
  'client.lua'
}

dependencies { 'qb-core' }

lua54 'yes'
