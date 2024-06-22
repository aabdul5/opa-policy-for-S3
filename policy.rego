package rbac.authz

import rego.v1

# role-permissions assignments
role_permissions := {
	"st-access-role": [{"allow": "s3*"}],
}

# logic that implements RBAC.
default allow := false

allow if {
	contains("RoleArn", "st-access-role")
}
