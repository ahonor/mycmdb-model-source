#!/user/bin/env perl
#
#
#

$editBaseUrl=$ENV{'RD_CONFIG_URL'};

my $nodes = <<"END_MESSAGE";
{
  "buck-turgidson": {
    "tags": "general",
    "osFamily": "unix",
    "username": "greg",
    "osVersion": "10.10.3",
    "osArch": "x86_64",
    "description": "A general node",
    "hostname": "buck-turgidson",
    "nodename": "buck-turgidson",
    "osName": "Mac OS X",
    "quote":"Mr President, we must not allow a mineshaft gap!",
    "actor":"George C. Scott"
  },
  "merkin-muffley": {
    "tags": "president",
    "osFamily": "unix",
    "ssh-key-storage-path": "keys/merkin-muffleykey1.pem",
    "username": "vagrant",
    "osVersion": "10.10.3",
    "osArch": "x86_64",
    "description": "A presidential node",
    "hostname": "192.168.33.12",
    "nodename": "merkin-muffley",
    "osName": "Mac OS X",
    "quote":"Gentlemen, you cant fight in here. This is the War Room.",
    "actor":"Peter Sellers"
  }
}
END_MESSAGE

print $nodes;
