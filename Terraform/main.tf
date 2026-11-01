module "resource_group" {
  source         = "./Modules/RG"
  resource_group_name = var.resource_group_name
  location       = var.location
}

module "app_service_plan" {
  source                = "./Modules/ASP"
  app_service_plan_id = var.app_service_plan_id
  location              = var.location
  resource_group_name   = module.resource_group.resource_group_name
}

module "web_app" {
  source                = "./Modules/WebApp"
  web_app_name          = var.web_app_name
  location              = var.location
  resource_group_name   = module.resource_group.resource_group_name
  app_service_plan_id = module.app_service_plan.service_plan_id
}