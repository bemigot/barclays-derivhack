nodesw="Client1 Broker1 Broker2"

for node in $nodesw; do
  echo "Starting webserver for $node"
  pushd build/nodes/${node}
  java -jar corda-webserver.jar &
  popd
done
sleep 50
echo "Webservers should be up and running"
