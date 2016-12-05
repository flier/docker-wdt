## docker-wdt
Docker image for Warp speed Data Transfer (WDT)

# Install

```bash
$ docker pull flier/wdt
```

## Usage

# Run as Receiver

Use the `host` network and map WDT data directory to the current directory.

```bash
$ docker run --rm --network=host --volume=`pwd`:/data flier/wdt
```

# Run as Sender

Use the `host` network to send the `to_send` folder to a remote WDT receiver.

```bash
$ docker run --rm --network=host --volume=to_send:/data flier/wdt wdt -connection_url "wdt://desthost1.facebook.com?ports=36062,36668,41666,45982,53835,55727,57051,60107&recpv=21&id=802755190"
```

For the detail of command line, please check the official [getting started guide](https://github.com/facebook/wdt/wiki/Getting-Started-with-the-WDT-command-line)