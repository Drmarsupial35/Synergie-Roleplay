resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_script {
	'server.lua',
	'@mysql-async/lib/MySQL.lua',
}
client_script 'client.lua'
