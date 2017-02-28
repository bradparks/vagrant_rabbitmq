#!/usr/bin/env bash

# Add official rabbitmq to trusted sources list
cat >> /etc/apt/sources.list <<EOT
deb http://www.rabbitmq.com/debian/ testing main
EOT
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
apt-key add rabbitmq-signing-key-public.asc

# Install RabbitMQ and some super basic stuff (screen,htop,vim,curl,wget)
apt-get update
apt-get install -q -y screen htop vim curl wget
apt-get install -q -y --force-yes rabbitmq-server

# Add user "admin" with password "password"
rabbitmqctl add_user admin password
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions admin ".*" ".*" ".*"

# Enable some RabbitMQ Plugins
service rabbitmq-server stop
rabbitmq-plugins enable rabbitmq_management
#rabbitmq-plugins enable rabbitmq_jsonrpc
#rabbitmq-plugins enable rabbitmq_federation
#rabbitmq-plugins enable rabbitmq_federation_management
service rabbitmq-server start

echo ""
echo ""
echo "####################################################"
echo "RabbitMQ should be available now"
echo "If you havent changed anything, by default the web based admin is here:"
echo "  http://localhost:15672 (admin/password)"
echo "and RabbitMQ is available on port 5672"
echo "####################################################"
echo ""
echo ""

