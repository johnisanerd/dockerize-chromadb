# dockerize-chromadb
This GitHub repository showcases an example of running the Chroma DB Server in a Docker container, accessible to another service. Link to chromadb documentation: https://docs.trychroma.com/

We create two containers. One container for the application that acts as a chroma client and one container for the chroma db server. You can find the 2 services in the docker-compose.yml file as 'application' and 'chroma'. A bridge is created that allows the 2 services to communicate.

Optional: Needed for Digital Ocean
`apt install docker-compose`

Optional:  cleanup any lingering docker-compose nonses:

`docker-compose down --rmi all --volumes --remove-orphans`

`docker builder prune -a`



### Steps to make this work:
1. Clone the repository -> git clone https://github.com/johnisanerd/dockerize-chromadb.git
2. Move to the directory -> cd dockerize-chromadb
3. Create containers -> docker-compose up --build --remove-orphans
