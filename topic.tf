resource "google_pubsub_topic" "audit-events" {
  name                       = "audit-events-topic"
  message_retention_duration = "3000s"
}