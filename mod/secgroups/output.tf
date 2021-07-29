output "secec2arn" {
  value = aws_security_group.allow.id 
}
output "seclbarn" {
  value = aws_security_group.allowlb.id 
}

output "secec2basarn" {
  value = aws_security_group.allowbas.id 
}
output "SecGrds" {
  value = aws_security_group.SecGrds.id 
}
