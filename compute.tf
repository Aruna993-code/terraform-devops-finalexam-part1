resource "aws_instance" "jenkins_controller" {
  ami           = "ami-0c02fb55956c7d316" # Example Ubuntu AMI, replace as needed
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "JenkinsController"
  }
}

resource "aws_instance" "jenkins_agent_permanent" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "JenkinsAgentPermanent"
  }
}

resource "aws_instance" "jenkins_agent_dynamic" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "JenkinsAgentDynamic"
  }
}

resource "aws_instance" "testing_env" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "TestingEnv"
  }
}

resource "aws_instance" "staging_env" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "StagingEnv"
  }
}

resource "aws_instance" "production_env" {
  count         = var.production_instance_count
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "ProductionEnv-${count.index + 1}"
  }
}

