# youtube-dl

## Basic Usage

### Build Image
docker build -t youtube-dl .

### Convert Youtube URL to MP3
docker run -v $PWD/download:/download youtube-dl https://www.youtube.com/watch?v=4qAKyKqzGKo
