# opa-policy-for-S3
Open Policy Agent (OPA) policy to ensure that only users with the st_access-role IAM role can access an AWS S3 bucket.

This repository contains Rego policy files for implementing Role-Based Access Control (RBAC).

Files
* policy.rego: This file defines the core RBAC policy logic.
* policy_test.rego: This file contains a sample JSON data structure that might be useful for testing purposes.

Policy Overview
The policy in policy.rego implements a simple RBAC system. It:

* Defines a default deny for access.
* Allows access only if the "RoleArn" retrieved from the data source contains the substring "st-access-role" (case-sensitive).
