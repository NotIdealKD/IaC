# Generate resource names at plan stage in Terraform

Basic idea is to create a module which generates unique resource names. I want to be able to call it in my projects to generate unique names at *terraform plan* stage. This way each instance of a plan comes back with unique names. I don't want the names to be totally random as that defeats the whole point of naming conventions. 

The structure I'm aiming for is something like **env-resourceTypeShort-purpose-##** e.g. prod-vm-mssql-04

There is an existing module for Azure (primary cloud I'm working with for now) called "azure/naming" but it's not been maintained in a year and is very curbesome. I might use it as a reference but I don't think there's a massive amount of value to be gained there.

The idea for this module comes from a real-life example of a project which deploys 10k+ instances of a resource, each with a unique name. Current approach uses PowerShell script, I personally explored the idea of using a bash script. I think having all of this codified in IaC would be a worthwhile pursuit.