# ----------------------------------------------------
# Outputs VPC
# ----------------------------------------------------
output "vpc_id"{
  # Ubicación_del_modulo.nombre_del_output_del_modulo  
  value = module.AwsModuleTerraformVpc.vpc_id
}

output "igw_id" {
    value = module.AwsModuleTerraformVpc.igw_id
}

output "subnet_public_ids" {
  description = ""
  value       = module.AwsModuleTerraformVpc.subnet_public_ids
}

output "subnet_private_app_ids" {
  description = ""
  value       = module.AwsModuleTerraformVpc.subnet_private_app_ids
}

output "subnet_private_db_ids" {
  description = ""
  value       = module.AwsModuleTerraformVpc.subnet_private_db_ids
}


# ----------------------------------------------------
# Outputs SG
# ----------------------------------------------------
output "bastion_sg_id" {
  description = ""
  value       = module.AwsModuleTerraformSg.bastion_sg_id
}

output "alb_sg_id" {
  description = ""
  value = module.AwsModuleTerraformSg.alb_sg_id
}

output "app_sg_id" {
  description = ""
  value = module.AwsModuleTerraformSg.app_sg_id
}

output "db_sg_id" {
  description = ""
  value = module.AwsModuleTerraformSg.db_sg_id
}

output "efs_sg_id" {
  description = ""
  value = module.AwsModuleTerraformSg.efs_sg_id
}
