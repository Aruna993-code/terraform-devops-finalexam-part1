resource "aws_elb" "prod_lb" {
    name   = "prod-load-balancer"
      subnets = [aws_subnet.main_subnet.id]

        listener {
              instance_port     = 80
                  instance_protocol = "http"
                      lb_port           = 80
                          lb_protocol       = "http"
                            }

                              instances = aws_instance.production_env[*].id

                                health_check {
                                      target              = "HTTP:80/"
                                          interval            = 30
                                              timeout             = 5
                                                  healthy_threshold   = 2
                                                      unhealthy_threshold = 2
                                                        }

                                                          tags = {
                                                                Name = "ProdELB"
                                                                  }
                                                                }

