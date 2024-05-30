

# ------------------------------------
# Creación vpc definida por nosotros
# ------------------------------------
module "AwsModuleTerraformVpc" {
  source                    = "./modules/AwsModuleTerraformVpc"
  project_name              = var.project_name
  env                       = var.env
  region                    = var.region
  availability_zone         = var.availability_zone
  vpc_cidr                  = var.vpc_cidr
  subnet_cidr_public        = var.subnet_cidr_public
  subnet_cidr_private_app   = var.subnet_cidr_private_app
  subnet_cidr_private_db    = var.subnet_cidr_private_db
}

# ------------------------------------
# Creación security group 
# ------------------------------------
module "AwsModuleTerraformSg" {
    source          = "./modules/AwsModuleTerraformSg"
    project_name    = var.project_name
    env             = var.env
    vpc_id          = module.AwsModuleTerraformVpc.vpc_id
    # vpc_id -> variable que tiene que existir en ./sg/variable.tf
      # module -> indico que voy a usar un modulo
      # vpc    -> modulo que voy a usar
      # vpc_id -> output que tiene que existir en ./sg/output.tf
}
