Project Overview: Automated Spotify Playlist Creation with Terraform

This project leverages Terraform to automate the creation of multiple Spotify playlists tailored for various occasions, such as morning routines, evening relaxation, and party nights. By utilizing Terraform's infrastructure-as-code capabilities, this initiative streamlines the management of playlists, ensuring that users can easily access curated music collections for every moment.

Prerequisites
To successfully implement this project, ensure you have the following:

Terraform Installed: Ensure Terraform is installed on your machine.
Docker Installed: Make sure Docker is installed and running.
Spotify Account: You need a Spotify account (no premium access required).
Spotify Developer Account: Register and create an application to obtain your Client ID and Client Secret.
Spotify Provider for Terraform: Use the conradludgate/spotify provider to manage playlists.
VS Code Editor: Recommended for editing Terraform files.
File Structure
To organize your project, use the following file structure:

.env: Store your Spotify Client ID and Client Secret.
terraform.tfvars: Store your API key and other variables.
variables.tf: Define variables for your API key and other configurations.
playlist.tf: Create and manage playlists, search for artists, and add songs.
Steps to Create Spotify Playlists
Set Up Project Folder: Create a folder for your project and open it in VS Code. Inside, create a main.tf file to describe the provider.

Create Spotify Application: Go to the Spotify Developer Dashboard, create an app for your project, and retrieve your Client ID and Client Secret.

Run Docker Container: Execute the following command to run the Docker container that provides the authorized token for API access:

bash
Copy code
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
Write Terraform Code: In your main.tf file, write code to create a playlist and add songs using their IDs. Additionally, utilize the spotify_search_track data source to search for music and add it to the playlist. Use playlist.tf to manage the creation of playlists, search for artists, and incorporate songs.
