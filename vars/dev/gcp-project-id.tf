variable "iam_roles" {
    type     = list(string)
    default  = [ 
                "roles/storage.objectCreator",
                 "roles/storage.objectViewer",
                 "pubsub.topics.publish"
                ]
}

variable "members_for_iam" {
    type     = list(string)
    default  = [
                "serviceAccount:fooBar@example.com"
               ]
}

variable "project_id" {
    type        = "string"
    default     = "gcp-project-id-here"
    description = "The google project id on which this IAC should run"
}

variable "region" {
    type    = "string"
    default = "us-central1"
}
