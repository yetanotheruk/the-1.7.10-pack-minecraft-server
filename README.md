
# the-1.7.10-pack-minecraft-server
A Docker Image that provides a turn key experience for quickly deploying a Minecraft Server instance for the 1.7.10 Pack as released by https://the-1710-pack.com/.

## Usage
It is assumed that the user has already acquired a working Docker installation and Docker is able to connect to the internet.

### Command
With this image, you can create a new instance of the Minecraft server with one command (note that running this command you indicate agreement to the Minecraft EULA).

```sudo docker run -p 25565:25565 -e EULA="true" yetanotheruk/the-1.7.10-pack-minecraft-server```


### Options
There are several command line options that users may want to specify when utilizing this image. These options are listed below with some brief explanation. An example will be provided with each. In the example, the part that the user can change will be surrounded by angle brackets (`< >`). Remember to *remove the angle brackets* before running the command.
- Port (Required)
  - Set this to the port number that the server will be accessed from. The Default port is `25565`. 
  - `-p <12345>:25565`
- Volume
  - Set this to a name for the server's Docker volume or path to a folder on your computer to allow the data to be persisted.
  - `-v <my_volume_name>:/minecraft` or
  - `-v </path/to/files>:/minecraft`

### Environment Variables
Environment variables are options that are specified in the format `-e <NAME>="<VALUE>"` where `<NAME>` is the name of the environment variable and `<VALUE>` is the value that the environment variable is being set to.
- EULA Agreement
  - **Name:** `EULA`
  - This variable means you accept the Minecraft EULA and the image will automatically set the required flags in the Minecraft configuration. If not set the Server will fail to start and you will need to agree manually. 
  - Allowed values - `true` or `false`
  - `-e EULA="true"`

## Authors

* Docker Image > **Ashley Baker** - (https://github.com/ashleycbaker)
* The 1.7.10 Mod Pack > **Ehlers-Danlos Zebra** - (https://enderplay.com/ 

## License

This project is licensed under Apache License, Version 2.0 - see the [LICENSE.md](LICENSE.md) file for details
