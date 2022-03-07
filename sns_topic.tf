resource "aws_sns_topic" "sns_create_snapshot_backup" {
  name = "sns_create_snapshot_backup"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.sns_create_snapshot_backup_test.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.goodmorning_lambda.arn
}