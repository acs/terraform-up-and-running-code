resource "aws_autoscaling_group" "module_scaling" {
  max_size = 0
  min_size = 0

  mixed_instances_policy {
    launch_template {
      launch_template_specification {}
    }
  }

  tag {
    key = "Name"
    value = "Cluster"
    propagate_at_launch = true
  }

  dynamic "tag" {
    for_each = var.custom_tags
    content {
      key = tag.key
      value = tag.value
      propagate_at_launch = true
    }
  }

}
