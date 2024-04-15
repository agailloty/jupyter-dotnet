# Use a base image with Jupyter Lab and .NET 8 support
FROM jupyter/base-notebook:latest

USER root
# Install .NET SDK 8.1
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y dotnet-sdk-8.0

# Install .NET Jupyter Notebooks
RUN dotnet tool install --global Microsoft.dotnet-interactive

# Add .NET Interactive tools to the PATH
ENV PATH="${PATH}:~/.dotnet/tools"

RUN dotnet interactive jupyter install

# Expose Jupyter Lab port
EXPOSE 8888

# Start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
