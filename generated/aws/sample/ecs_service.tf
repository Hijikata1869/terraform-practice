resource "aws_ecs_service" "tfer--pta-cluster_pta-service" {
  cluster = "pta-cluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "2"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "true"
  health_check_grace_period_seconds  = "3600"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "pta_frontend"
    container_port   = "80"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:748732166031:targetgroup/pta-target/58c1a32cd1b870d4"
  }

  name = "pta-service"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["sg-02075dc1149208821"]
    subnets          = ["subnet-0635816e36cc79294", "subnet-0f5ed940db4881191"]
  }

  platform_version    = "1.4.0"
  scheduling_strategy = "REPLICA"

  tags = {
    Environment = "production"
  }

  tags_all = {
    Environment = "production"
  }

  task_definition = "arn:aws:ecs:ap-northeast-1:748732166031:task-definition/ecs_pta_task:22"
}
