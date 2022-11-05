output "aws_ecs_cluster_tfer--pta-cluster_id" {
  value = aws_ecs_cluster.tfer--pta-cluster.id
}

output "aws_ecs_service_tfer--pta-cluster_pta-service_id" {
  value = aws_ecs_service.tfer--pta-cluster_pta-service.id
}

output "aws_ecs_task_definition_tfer--task-definition-002F-ecs_pta_task_id" {
  value = aws_ecs_task_definition.tfer--task-definition-002F-ecs_pta_task.id
}
