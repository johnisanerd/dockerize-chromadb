# dockerize-chromadb
This GitHub repository showcases an example of running the Chroma DB Server in a Docker container, accessible to another service. Link to chromadb documentation: https://docs.trychroma.com/

We create two containers. One container for the application that acts as a chroma client and one container for the chroma db server. You can find the 2 services in the docker-compose.yml file as 'application' and 'chroma'. A bridge is created that allows the 2 services to communicate.

Optional: Needed for Digital Ocean
`apt install docker-compose`

Optional:  cleanup any lingering docker-compose nonses:





### Steps to make this work:
1. Clone the repository: `git clone https://github.com/johnisanerd/dockerize-chromadb.git`
3. Move to the directory: `cd dockerize-chromadb`
4. Cleanup: `docker-compose down --rmi all --volumes --remove-orphans`
5. Cleanup: `docker builder prune -a`
5. Create containers: `docker-compose up --build --remove-orphans`
