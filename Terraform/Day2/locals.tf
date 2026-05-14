locals {
  project_name = "terraform-day2"

  common_name = "${local.project_name}-server"

  merged_tags = merge(
    var.common_tags,
    {
      Project = local.project_name
    }
  )
}