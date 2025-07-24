module "resource_grouop" {
    source = "../module/resource_group"
    rg_name = "law-rg"
    rg_location = "central india" 
}
module "law" {
    source = "../module/log_analytic_workspace"
    depends_on = [ module.resource_grouop ]
    law_name = "shahikalaw"
    law_location = "central india"
    law_rg_name = "law-rg"
    sku = "PerGB2018"
    retention_in_days = 30
}