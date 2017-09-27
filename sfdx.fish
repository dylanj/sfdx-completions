set __sfdx_commands \
  force \
  force:alias \
  force:alias:list \
  force:alias:set \
  force:apex \
  force:apex:class:create \
  force:apex:execute \
  force:apex:log:get \
  force:apex:log:list \
  force:apex:test:report \
  force:apex:test:run \
  force:auth \
  force:auth:jwt:grant \
  force:auth:sfdxurl:store \
  force:auth:web:login \
  force:config \
  force:config:get \
  force:config:list \
  force:config:set \
  force:data \
  force:data:bulk:delete \
  force:data:bulk:status \
  force:data:bulk:upsert \
  force:data:record:create \
  force:data:record:delete \
  force:data:record:get \
  force:data:record:update \
  force:data:soql:query \
  force:data:tree:export \
  force:data:tree:import \
  force:doc \
  force:doc:commands:display \
  force:doc:commands:list \
  force:lightning \
  force:lightning:app:create \
  force:lightning:component:create \
  force:lightning:event:create \
  force:lightning:interface:create \
  force:lightning:lint \
  force:lightning:test:create \
  force:lightning:test:run \
  force:limits \
  force:limits:api:display \
  force:mdapi \
  force:mdapi:convert \
  force:mdapi:deploy \
  force:mdapi:retrieve \
  force:org \
  force:org:create \
  force:org:delete \
  force:org:display \
  force:org:list \
  force:org:open \
  force:package \
  force:package:install \
  force:package:install:get \
  force:package1 \
  force:package1:version:create \
  force:package1:version:create:get \
  force:package1:version:display \
  force:package1:version:list \
  force:package2 \
  force:package2:create \
  force:package2:installed:list \
  force:package2:list \
  force:package2:manifest:create \
  force:package2:members:list \
  force:package2:version:create \
  force:package2:version:create:get \
  force:package2:version:create:list \
  force:package2:version:get \
  force:package2:version:install \
  force:package2:version:list \
  force:package2:version:uninstall \
  force:package2:version:update \
  force:project \
  force:project:create \
  force:project:upgrade \
  force:schema \
  force:schema:sobject:describe \
  force:schema:sobject:list \
  force:source \
  force:source:convert \
  force:source:open \
  force:source:pull \
  force:source:push \
  force:source:status \
  force:user \
  force:user:password:generate \
  force:user:permset:assign \
  force:visualforce \
  force:visualforce:component:create \
  force:visualforce:page:create \
  plugins \
  plugins:install \
  plugins:link \
  plugins:uninstall \
  update

function __fish_sfdx_needs_command -d 'Test if sfdx has yet to be given the subcommand'
  for i in (commandline -opc)
    if contains -- $i $__sfdx_commands
      echo "$i"
      return 1
    end
  end
  return 0
end

complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force -d 'tools for the salesforce developer'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:alias -d 'manage username aliases'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:alias:list -d 'list username aliases for sfdx'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:alias:set -d 'set username aliases for sfdx'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex -d 'work with apex code'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:class:create -d 'create an apex class'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:execute -d 'execute anonymous apex code'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:log:get -d 'fetch a debug log'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:log:list -d 'list debug logs'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:test:report -d 'display test results'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:apex:test:run -d 'invoke apex tests'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:auth -d 'authorize an org for use with the cli'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:auth:jwt:grant -d 'authorize an org using the jwt flow'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:auth:sfdxurl:store -d 'authorize an org using an sfdx auth url'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:auth:web:login -d 'authorize an org using the web login flow'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:config -d 'configure the salesforce cli'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:config:get -d 'get config var value(s) for given name(s)'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:config:list -d 'list config vars for sfdx'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:config:set -d 'set config vars for sfdx'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data -d 'manipulate records in your org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:bulk:delete -d 'bulk delete records from a csv file'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:bulk:status -d 'view the status of a bulk data load job or batch'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:bulk:upsert -d 'bulk upsert records from a csv file'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:record:create -d 'create a record'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:record:delete -d 'delete a record'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:record:get -d 'view a record'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:record:update -d 'update a record'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:soql:query -d 'execute a soql query'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:tree:export -d 'export data from an org into sobject tree format for force:data:tree:import consumption'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:data:tree:import -d 'import data into an org using sobject tree api'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:doc -d 'display help for force commands'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:doc:commands:display -d 'display help for force commands'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:doc:commands:list -d 'list the force commands'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning -d 'create and test lightning bundles'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:app:create -d 'create a lightning app'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:component:create -d 'create a lightning component'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:event:create -d 'create a lightning event'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:interface:create -d 'create a lightning interface'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:lint -d 'Linter for Lightning Components'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:test:create -d 'create a lightning test'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:lightning:test:run -d 'invoke lightning component tests'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:limits -d 'view your org’s limits'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:limits:api:display -d 'display current org’s limits'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:mdapi -d 'retrieve and deploy metadata using metadata api'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:mdapi:convert -d 'convert metadata api source into the sfdx source format'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:mdapi:deploy -d 'deploys metadata to an org using metadata api'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:mdapi:retrieve -d 'retrieves metadata from an org using metadata api'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org -d 'manage your sfdx orgs'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org:create -d 'create a scratch org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org:delete -d 'mark a scratch org for deletion'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org:display -d 'get org description'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org:list -d 'list all active orgs you’ve created or authenticated to'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:org:open -d 'open an org in your browser'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package -d 'install managed and unmanaged packages'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package:install -d 'install a package in the target org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package:install:get -d 'retrieve status of package install request'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package1 -d 'work with managed and unmanaged packages'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package1:version:create -d 'create a new package version in the release org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package1:version:create:get -d 'retrieve status of package upload request'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package1:version:display -d 'display details about a package version'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package1:version:list -d 'list package versions for the specified package or for the org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2 -d 'work with second-generation packages'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:create -d 'create a package2'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:installed:list -d 'list the org’s installed subscriber package2 versions'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:list -d 'list all package2 packages in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:manifest:create -d 'create a manifest for the package2 from the specified directory'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:members:list -d 'list all subscriber package2 members in the org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:create -d 'create a package2 version in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:create:get -d 'retrieve a package2 version creation request in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:create:list -d 'list package2 version creation requests in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:get -d 'retrieve a package version in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:install -d 'install a subscriber package2 version'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:list -d 'list all package2 versions in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:uninstall -d 'uninstall a subscriber package2 version'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:package2:version:update -d 'update a package2 version in the dev hub org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:project -d 'set up a project'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:project:create -d 'create a new SFDX project'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:project:upgrade -d 'update project config files to the latest format'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:schema -d 'view standard and custom objects'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:schema:sobject:describe -d 'describe an object'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:schema:sobject:list -d 'list all objects of a type'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source -d 'sync your project with your orgs'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source:convert -d 'convert sfdx source into the metadata api source format'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source:open -d 'edit a lightning page with lightning app builder'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source:pull -d 'pull source from the scratch org to the project'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source:push -d 'push source to an org from the project'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:source:status -d 'list local changes and/or changes in a scratch org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:user -d 'perform user-related admin tasks'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:user:password:generate -d 'generate a password for a scratch org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:user:permset:assign -d 'assign a permission set to the admin user of an org'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:visualforce -d 'create and edit visualforce files'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:visualforce:component:create -d 'create a visualforce component'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a force:visualforce:page:create -d 'create a visualforce page'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a plugins -d 'manage plugins'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a plugins:install -d 'installs a plugin'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a plugins:link -d 'link a local plugin for development'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a plugins:uninstall -d 'uninstalls a plugin'
complete -c sfdx -f -n '__fish_sfdx_needs_command' -a update -d 'update sfdx-cli'

