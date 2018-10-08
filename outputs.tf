output "codepipeline_role_arn" {
  value = "${module.codepipeline_role.role_arn}"
}

output "codebuild_role_arn" {
  value = "${module.codebuild_role.role_arn}"
}

output "template_instance_profile_name" {
  value = "${module.template_instance_role.instance_profile_name}"
}

output "template_instance_security_group" {
  value = "${aws_security_group.template.id}"
}

## Will be required if the codebuild is in the VPC
# output "codebuild_security_group" {
#   value = "${aws_security_group.codebuild.id}"
# }

output "codepipeline_artifact_bucket" {
  value = "${aws_s3_bucket.codepipeline_artifact.id}"
}

output "application_binary_bucket" {
  value = "${aws_s3_bucket.application_binary.id}"
}

output "codebuild_cache_bucket" {
  value = "${aws_s3_bucket.codebuild_cache.id}"
}

output "subnet_id" {
  value = "${data.aws_subnet.selected.id}"
}

output "vpc_id" {
  value = "${data.aws_vpc.selected.id}"
}
