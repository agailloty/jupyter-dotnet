# Jupyter Lab with .NET 8 Support Docker Image

This Docker image provides a minimal environment for running Jupyter Lab with .NET 8 support. It includes the .NET SDK 8.0 and the .NET interactive tools for integrating .NET code into Jupyter notebooks.

## Usage

### Prerequisites

- Docker installed on your system. You can download and install Docker from [here](https://www.docker.com/products/docker-desktop).

### Build the Docker Image

1. Clone or download this repository to your local machine.
2. Open a terminal and navigate to the directory containing the Dockerfile.
3. Run the following command to build the Docker image:

   ```bash
   docker build -t jupyter-dotnet .
   ```

### Run the Docker Container

Once the Docker image is built, you can run a container using the following command:

```bash
docker run -p 8888:8888 jupyter-dotnet
```

This command starts the Jupyter Lab server within the Docker container and exposes it on port 8888 of your localhost. You can access Jupyter Lab by opening a web browser and navigating to `http://localhost:8888`.

### Using .NET in Jupyter Notebooks

Once you have accessed Jupyter Lab in your web browser, you can create a new notebook and select the ".NET (C#)" kernel to start writing and executing .NET code.

### Environment Configuration

The Dockerfile included in this repository installs the .NET SDK 8.0, the .NET interactive tools, and configures them to work with Jupyter Lab. If you need to customize the environment or add additional dependencies, you can modify the Dockerfile accordingly.

## License

This Docker image is licensed under the [MIT License](LICENSE).