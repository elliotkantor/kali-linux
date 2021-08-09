# Kali Linux Docker Image
## Installation
```bash
# clone and enter repo
git clone https://github.com/elliotkantor/kali-linux.git
cd kali-linux

# build the image
docker image build -t kali .
```

## Usage
```bash
# create a container
docker container run -it kali
```
You can also add other tags between `run` and `kali` such as:
- `-v /path/to/local:/container/path` to mount a volume
- `--rm` to delete the container after exiting
