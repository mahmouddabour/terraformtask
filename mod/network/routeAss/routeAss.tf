resource "aws_route_table_association" "Publica1" {
  subnet_id      = var.Publica1sub
  route_table_id = var.rtPublic
}
resource "aws_route_table_association" "Publicb1" {
  subnet_id      = var.Publicb1sub
  route_table_id = var.rtPublic
}
resource "aws_route_table_association" "Privatea1" {
  subnet_id      = var.Privatea1sub
  route_table_id = var.rtprivate
}
resource "aws_route_table_association" "Privatea2" {
  subnet_id      = var.Privatea2sub
  route_table_id = var.rtprivate
}
resource "aws_route_table_association" "Privateb1" {
  subnet_id      = var.Privateb1sub
  route_table_id = var.rtprivatesubnet
}
resource "aws_route_table_association" "Privateb2" {
  subnet_id      = var.Privateb2sub
  route_table_id = var.rtprivatesubnet
}

resource "aws_route_table_association" "Privateb3" {
  subnet_id      = var.Privateb3sub
  route_table_id = var.rtprivatesubnet
}

resource "aws_route_table_association" "Privateb4" {
  subnet_id      = var.Privateb4sub
  route_table_id = var.rtprivatesubnet
}