#
# Copyright (c) 2023 Airbyte, Inc., all rights reserved.
#


import sys

from destination_s3deepkeep2 import DestinationS3deepkeep2

if __name__ == "__main__":
    DestinationS3deepkeep2().run(sys.argv[1:])
