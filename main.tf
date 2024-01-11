resource "random_pet" "this" {
  length = 2
}

resource "equinix_metal_device" "this" {
  hostname         = random_pet.this.id
  plan             = "m3.large.x86"
  metro            = "sv"
  operating_system = "vmware_esxi_7_0_vcf"
  billing_cycle    = "hourly"
  project_id       = var.project_id
}
