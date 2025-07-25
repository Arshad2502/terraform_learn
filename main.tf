provider "local" {}

resource "local_file" "example_file1" {
  content  = "This is the first file."
  filename = "${path.module}/file1.txt"
}

resource "local_file" "example_file2" {
  content  = "This is the second file."
  filename = "${path.module}/file2.txt"
}

resource "null_resource" "create_dirs" {
  provisioner "local-exec" {
    command = "mkdir dir1 && mkdir dir2"
  }
}

