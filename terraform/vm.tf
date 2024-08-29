# Create Jenkins UI(master)
resource "aws_instance" "jenkins" {
  ami                         = local.ami_type
  instance_type               = local.instance
  subnet_id                   = aws_subnet.public_zone1.id
  key_name                    = local.key
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.eks_sg.id]

  root_block_device {
    volume_size           = local.volume
    volume_type           = local.ebs_type
    delete_on_termination = true
  }

  tags = {
    Name = "Jenkins-${local.env}"
  }
}

# Create Jenkins Agent
resource "aws_instance" "agent" {
  ami                         = local.ami_type
  instance_type               = local.instance
  subnet_id                   = aws_subnet.public_zone1.id
  key_name                    = local.key
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.eks_sg.id]

  root_block_device {
    volume_size           = local.volume
    volume_type           = local.ebs_type
    delete_on_termination = true
  }

  tags = {
    Name = "Agent-${local.env}"
  }
}

# Create SonarQube server
resource "aws_instance" "sonarqube" {
  ami                         = local.ami_type
  instance_type               = local.instance
  subnet_id                   = aws_subnet.public_zone1.id
  key_name                    = local.key
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.eks_sg.id]

  root_block_device {
    volume_size           = local.volume
    volume_type           = local.ebs_type
    delete_on_termination = true
  }

  tags = {
    Name = "SonarQube-${local.env}"
  }
}

# Create ArgoCD server
resource "aws_instance" "argo" {
  ami                         = local.ami_type
  instance_type               = local.instance
  subnet_id                   = aws_subnet.public_zone1.id
  key_name                    = local.key
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.eks_sg.id]

  root_block_device {
    volume_size           = local.volume
    volume_type           = local.ebs_type
    delete_on_termination = true
  }

  tags = {
    Name = "ArgoCD-${local.env}"
  }
}

# Create Kubernetes server
resource "aws_instance" "kubernetes" {
  ami                         = local.ami_type
  instance_type               = local.instance
  subnet_id                   = aws_subnet.public_zone1.id
  key_name                    = local.key
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.eks_sg.id]

  root_block_device {
    volume_size           = local.volume
    volume_type           = local.ebs_type
    delete_on_termination = true
  }

  tags = {
    Name = "Kubernetes-${local.env}"
  }
}