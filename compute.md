# Setup

Define the name of an existing VM:

```bash
INSTANCE_NAME=<your-instance-name>
```

# Starting an instance

```bash
# ref: https://cloud.google.com/sdk/gcloud/reference/compute/instances/start
gcloud compute instances start $INSTANCE_NAME
```

# Get the External IP address of an instance

```bash
gcloud compute instances describe $INSTANCE_NAME \
  --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
```

# Shutting down an instance

```bash
# ref: https://cloud.google.com/sdk/gcloud/reference/compute/instances/stop
gcloud compute instances stop $INSTANCE_NAME
```

