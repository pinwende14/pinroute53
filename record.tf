resource "aws_route53_zone" "pin" {
  name = "pinare.org"
}

resource "aws_route53_record" "pin_record" {
  name    = "cv.pinare.org"
  type    = "A"
  zone_id = aws_route53_zone.pin.zone_id
  ttl     = "300"
  records = [aws_instance.pin.public_ip]
}


