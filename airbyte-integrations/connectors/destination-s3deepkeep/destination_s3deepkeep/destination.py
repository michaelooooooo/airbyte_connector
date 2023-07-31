#
# Copyright (c) 2023 Airbyte, Inc., all rights reserved.
#

import json
from collections import defaultdict
from typing import Any, Iterable, Mapping

import boto3
from airbyte_cdk import AirbyteLogger
from airbyte_cdk.destinations import Destination
from airbyte_cdk.models import AirbyteConnectionStatus, AirbyteMessage, ConfiguredAirbyteCatalog, Status, Type
from botocore.exceptions import NoCredentialsError

print("Hello World2222")


class DestinationS3deepkeep(Destination):
    # def run(self,v):
    #     print("Hello World2")
    def write(
        self, config: Mapping[str, Any], configured_catalog: ConfiguredAirbyteCatalog, input_messages: Iterable[AirbyteMessage]
    ) -> Iterable[AirbyteMessage]:

        """
        ODO
        Reads the input stream of messages, config, and catalog to write data to the destination.


        This method returns an iterable (typically a generator of AirbyteMessages via yield) containing state messages received
        in the input message stream. Outputting a state message means that every AirbyteRecordMessage which came before it has been
        successfully persisted to the destination. This is used to ensure fault tolerance in the case that a sync fails before fully completing,
        then the source is given the last state message output from this method as the starting point of the next sync.

        :param config: dict of JSON configuration matching the configuration declared in spec.json
        :param configured_catalog: The Configured Catalog describing the schema of the data being received and how it should be persisted in the
                                    destination
        :param input_messages: The stream of input messages received from the source
        :return: Iterable of AirbyteStateMessages wrapped in AirbyteMessage structs
        """
        print("michael ver4")
        print(configured_catalog)
        print("input_messages")
        print(input_messages)
        # Get S3 configurations from the config
        print("config ")
        print(config)
        bucket_name = config["s3_bucket_name"]
        aws_access_key_id = config["access_key_id"]
        aws_secret_access_key = config["secret_access_key"]
        region_name = config["s3_bucket_region"]
        endpoint_url = config.get("s3_endpoint")  # Get the endpoint URL if it exists

        try:
            s3 = boto3.resource(
                "s3",
                aws_access_key_id=aws_access_key_id,
                aws_secret_access_key=aws_secret_access_key,
                region_name=region_name,
                endpoint_url=endpoint_url,  # Add the endpoint URL to the resource parameters
            )

            # Create a dictionary to hold the records for each stream
            streams = defaultdict(list)

            for message in input_messages:
                print("message", message)
                if message.type == Type.STATE:
                    yield message
                elif message.type == Type.RECORD:
                    record = message.record
                    # Add the new record to the appropriate stream list
                    streams[record.stream].append(
                        {
                            "data": record.data,
                            # "emitted_at": record.emitted_at,
                        }
                    )
                else:
                    # ignore other message types for now
                    continue

            # Write the stream data to S3
            s3.Object(bucket_name, "streams.json").put(Body=json.dumps(streams))

        except NoCredentialsError:
            print("No AWS credentials found in the config file ")

        pass

    def check(self, logger: AirbyteLogger, config: Mapping[str, Any]) -> AirbyteConnectionStatus:
        """
        Tests if the input configuration can be used to successfully connect to the destination with the needed permissions
            e.g: if a provided API token or password can be used to connect and write to the destination.

        :param logger: Logging object to display debug/info/error to the logs
            (logs will not be accessible via airbyte UI if they are not passed to this logger)
        :param config: Json object containing the configuration of this destination, content of this json is as specified in
        the properties of the spec.json file

        :return: AirbyteConnectionStatus indicating a Success or Failure
        """
        print("Hello World3")
        try:
            # ODO

            return AirbyteConnectionStatus(status=Status.SUCCEEDED)
        except Exception as e:
            return AirbyteConnectionStatus(status=Status.FAILED, message=f"An exception occurred: {repr(e)}")
