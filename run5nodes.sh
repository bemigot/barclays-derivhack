nodes="Notary Client1 Broker1 Broker2 Observery"
for node in $nodes; do
  tmux new-window -n $node java -Dcapsule.jvm.args="-Xmx512m -XX:+UseG1GC" -jar build/nodes/${node}/corda.jar -b build/nodes/${node} ;\
  [ $? -eq 0 -o $? -eq 143 ] || sh
done
