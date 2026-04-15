#!/bin/bash
REPO="streamlined-enterprises/oci-iaas"

# Simple string secrets
gh secret set OCI_TENANCY_OCID    --body "ocid1.tenancy.oc1..aaaaaaaavocih5w72aex63uv7hngi7wq5wntycvxq6bdyaaiwow3wsge4oza" --repo $REPO
gh secret set OCI_COMPARTMENT_OCID --body "ocid1.tenancy.oc1..aaaaaaaavocih5w72aex63uv7hngi7wq5wntycvxq6bdyaaiwow3wsge4oza" --repo $REPO
gh secret set OCI_USER_OCID       --body "ocid1.user.oc1..aaaaaaaa3pkihtxuik7bgkqq5mlygvvcpfzatub6jewkxtf6hij2lgvvo62q" --repo $REPO
gh secret set OCI_FINGERPRINT     --body "ea:4d:c0:02:2a:59:53:1e:3f:ef:7f:2b:f7:98:e2:9d" --repo $REPO
gh secret set SSH_PUBLIC_KEY      --body "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCMD27xoPXu6vlkVyHpW+hy3oXmLxYvNIca6RtkFp9PjKW237eX4/J1gMFbddRdPr4K2+LSVvZfaMbn/8iPpHu7jxFEBsq1mlrdt0tW+zzhPco5QFYFF64c9MXnYujtZni1tDyigfmLQzLOmcS6o+iiX5j3ByW8eBUOoiYR3ZcuePMozR9M+7CD4UHJl7oEvhtRmFr+NL2jvLHJfzhy56PWMJO05kNyOdDXLy2wmT8XzLxVjp2C6CWZ0S9PlbjN7pvK9QydC9ldh++A3pWt2Z1f9pNZIQ7Axsw5SBbbC2xjsoJTj1q505sq30XTk/veK5cGDsUJ8frZ9dQoUSsnmGiZ" --repo $REPO

# Multiline PEM key — pipe from file, not --body
gh secret set OCI_API_PRIVATE_KEY < ~/.ssh/oci_api_key.pem --repo $REPO

echo "Done. Verify with: gh secret list --repo $REPO"
