# terraform-workspace-rbac

This is created to demonstrate workspace with manual approval and sharing between the teams with RBAC to workspaces.

*Org:* Daffodil
*Workspace:*terraform-workspace-rbac
*GitRepo:* https://github.com/jiantony/terraform-workspace-rbac

## Git Branches

```bash
          master---x---------------------x--------------------x----------------------x---------------x--------------
                   |                     |                                                           |
feature001         |                     x-----------------------------------------------------------x
                   |
feature002         x---------------------x--------------------x----------------------x----------------x------------
                   |                     |                                           |
feature003         |                     x-------------------------------------------x
                   |
feature004         x-----------------------------------------------------------------------------------------------
```
- feature001 : Update the lambda function to print date and time with goodmorning

- feature002 : Add SNS Topic

- feature003 : Add Lambda trigger to SNS Topics

- feature004 : Update Readme file

## Author
Jibin Antony : jibinantony@gmail.com

## License
Apache License 2.0
