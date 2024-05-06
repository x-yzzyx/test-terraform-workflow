terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "function" {
  content = <<EOF
def function():
    a = "Hello world"
    print(a)
  EOF
  filename = "./function.py"
}