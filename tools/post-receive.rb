#!/usr/bin/env ruby
# post-receive

# 1. Read STDIN (Format: "from_commit to_commit branch_name")
from, to, branch = ARGF.read.split " "

# 2. Only deploy if master branch was pushed
if (branch =~ /master$/ ) == nil
    puts "Received branch #{branch}, not deploying. checking for dev branch"
else
    # 3. Copy files to deploy directory
    deploy_to_dir = File.expand_path('/var/www/example.com')
    `GIT_WORK_TREE="#{deploy_to_dir}" git checkout -f master`
    puts "DEPLOY: master(#{to}) copied to '#{deploy_to_dir}'"
    # 4.TODO: Deployment Tasks
    # i.e.: Run Puppet Apply, Restart Daemons, etc
end

if (branch =~ /dev$/ ) == nil
    puts "Received branch #{branch}, not deploying. checking for lab branch"
else
    # 3. Copy files to deploy directory
    deploy_to_dir = File.expand_path('/var/www/dev.example.com')
    `GIT_WORK_TREE="#{deploy_to_dir}" git checkout -f dev`
    puts "DEPLOY: develop(#{to}) copied to '#{deploy_to_dir}'"
    # 4.TODO: Deployment Tasks
    # i.e.: Run Puppet Apply, Restart Daemons, etc
end

if (branch =~ /lab$/ ) == nil
    puts "Received branch #{branch}, not deploying. exiting."
    exit
else
    # 3. Copy files to deploy directory
    deploy_to_dir = File.expand_path('/var/www/lab.example.com')
    `GIT_WORK_TREE="#{deploy_to_dir}" git checkout -f lab`
    puts "DEPLOY: develop(#{to}) copied to '#{deploy_to_dir}'"
    # 4.TODO: Deployment Tasks
    # i.e.: Run Puppet Apply, Restart Daemons, etc
end
