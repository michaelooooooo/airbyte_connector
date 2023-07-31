#
# Copyright (c) 2023 Airbyte, Inc., all rights reserved.
#


import sys

from destination_1 import Destination1

if __name__ == "__main__":
    Destination1().run(sys.argv[1:])
