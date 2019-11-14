# first of all check tools: scp (4ex)
# ---
# remote from localmachine:
scp -r user@your.server.example.com:/path/to/foo /home/user/Desktop/
# From man scp (See online manual)
-r Recursively copy entire directories
# ssh -i 'path-to pricate_key> <user>@<ip-hostname> '<remote command>'
ssh -i <path-to-private_key> vagrant@192.168.5.11 'ssh-keygen'
# ---
ssh -i <path-to-private_key> vagrant@192.168.5.11 ''
# ? in master-1 VM !!!
# generate private key (leave fields by default)
# output file will be -> .ssh/id_rsa:
ssh-keygen
# ---
cat .ssh/id_rsa.pub
# >>>
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6hmLP+eHIAF62H4tXFRe01UPuebck0tbijWAX/A1t38kN5BudAhFSKn4AqWQyk8+3kiGmVwtDB84xEKc7SU6WhLi2Y9eyZUU8pOJxBQHjjkunjwv6jd6IWuZ6m/LEAimcTnWCS1kVU1fZIbBrkxV0+f/yBBm5XCh5irwmGW9APS+rBemaqOj1b/LBPLhp6sWSIZnKupgKUZL/L3dYTOmBVBZ+KvJu+zlguPtGG2s8L5qSKyiDqEczb6uOYZwHKoXYZjBsz5ziTb5NKHMv5eGcvT58IOJdssMcQXYau8aBYjdtWGUGaQ82obuEfwpyITtZa/LD4znEUp1yfdfcvQ/H vagrant@master-1
# <<<

# i can create some script

# Move public key of master to all other VMs:


# --- ---
The scp command syntax take the following form:
scp [OPTION] [user@]SRC_HOST:]file1 [user@]DEST_HOST:]file2

Copy
OPTION - scp options such as cipher, ssh configuration, ssh port, limit, recursive copy …etc.
[user@]SRC_HOST:]file1 - Source file.
[user@]DEST_HOST:]file2 - Destination file

-P Specifies the remote host ssh port.
-p Preserves files modification and access times.
-q Use this option if you want to suppress the progress meter and non-error messages.
-C. This option will force scp to compresses the data as it is sent to the destination machine.
-r This option will tell scp to copy directories recursively.
# ---
scp --help
scp: unknown option -- -
usage: scp [-12346BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
           [-l limit] [-o ssh_option] [-P port] [-S program]
           [[user@]host1:]file1 ... [[user@]host2:]file2
# ---