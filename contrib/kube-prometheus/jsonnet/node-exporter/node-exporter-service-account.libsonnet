local k = import "ksonnet.beta.3/k.libsonnet";
local serviceAccount = k.core.v1.serviceAccount;

{
    new(namespace)::
        serviceAccount.new("node-exporter") +
          serviceAccount.mixin.metadata.withNamespace(namespace)
}
