
output "rtPublic" {
    value = aws_route_table.privatesubnet.id
}
output "rtprivate" {
    value = aws_route_table.private.id
}
output "rtprivatesubnet" {
    value = aws_route_table.Public.id 
}