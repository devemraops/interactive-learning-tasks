# added an user to a group
resource "aws_iam_user_group_membership" "sysusers" {
    user = aws_iam_user.user1.name

    groups = [
        aws_iam_group.group1.name
    ]
}

# user1
resource "aws_iam_user" "user1" {
    name = "bob"

    tags = {
        Team = "DevOps"
    }
}

#group1
resource "aws_iam_group" "group1" {
    name = "sysusers"
}