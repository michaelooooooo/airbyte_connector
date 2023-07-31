#
# Copyright (c) 2023 Airbyte, Inc., all rights reserved.
#


import sys

from destination_s3deepkeep import DestinationS3deepkeep

if __name__ == "__main__":
    print("Hello World55555555")
    DestinationS3deepkeep().run(sys.argv[1:])
