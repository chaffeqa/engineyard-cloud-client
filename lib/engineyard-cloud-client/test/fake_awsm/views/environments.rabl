collection @environments, :root => :environments, :object_root => false
attributes :id, :ssh_username, :name, :instances_count, :app_server_stack_name, :load_balancer_ip_address, :framework_env
child :account do
  attributes :id, :name
end
child :apps do
  attributes :id, :name, :repository_uri, :app_type_id
  child :account do
    attributes :id, :name
  end
end
