# ansible-s3fs-fuse
Ansible role for mounting an AWS S3 bucket via FUSE.

Ansible role for mounting an AWS S3 bucket via FUSE. The role installs and configures [s3fs-f>

## Requirements

An AWS account and an existing S3 bucket. Tested on Ubuntu 22.04, 14.04, 16.04, Debian and CentOS 7.

## Role Variables

Available variables are listed below, along with the default values:

    s3fs_fuse_version: "1.80"
    s3fs_fuse_access_key_id:
    s3fs_fuse_secret_access_key:
    s3fs_fuse_bucket:
    s3fs_fuse_mount_point: "/mnt/my3mount"
    s3fs_fuse_mount_point_permissions: "0777"
    s3fs_fuse_url: "http://idrivee.com>>>>>>"
    s3fs_fuse_option_flags:
      - "allow_other"
      - "nonempty"

## Dependencies

None

## Example Playbook

    - hosts: all
      roles:
        - role: s3fs_fuse
          s3fs_fuse_bucket: ansible-s3fs-fuse
          s3fs_fuse_access_key_id: <your aws access key id>
          s3fs_fuse_secret_access_key: <your aws secret access key>

## License
