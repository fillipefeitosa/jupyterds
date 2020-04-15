# jupyterds
a simple jupyter notebook container for data science

To use it:

1. Install [Docker](https://www.docker.com/)
2. Clone this repo (or just download the jupyter.yml file)
3. Run the container:
```
docker run -v $PWD:/home/jupyter --rm -it --name jupyter --net=host fillipefeitosa/jupyterds
```
This will download directly from dockerhub and start the container.
4. Start notebook with --allow-root
```
jupyter notebook --allow-root
```
5. IF you want to add new conda packages, do your conda install magic and then:
```
# on container
(jupyter)$ conda env export > jupyter.yml
````
