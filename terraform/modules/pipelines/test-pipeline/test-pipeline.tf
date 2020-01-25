resource "aws_sns_topic" "test-pipeline" {
  name = "test-sns"
}

resource "aws_sqs_queue" "user_updates_queue" {
  name = "test-sqs"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = "${aws_sns_topic.test-pipeline.arn}"
  protocol  = "sqs"
  endpoint  = "${aws_sqs_queue.user_updates_queue.arn}"
}

