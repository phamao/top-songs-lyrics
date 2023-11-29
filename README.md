# Popular Songs and Their Lyrics

This is a Python script that takes a collection of Spotify's top songs, scrapes its lyrics, and tokenizes it.

## Installation

Download the data from Kaggle in the Sources section below. Extract the contents of `archive.zip` into this directory.

You will need to install the following libraries.

    pip install lyricsgenius
    pip install nltk
    pip install wordcloud
    pip install gensim
    pip install sklearn

If you want to run the script for yourself, you will need to create a [Genius API Client](https://genius.com/api-clients). Create an account if necessary, then fill in the App Name and App Website URL. You can use [localhost:6000](http://localhost:6000/). You should now see and option to generate a Client Access Token. In this directory, create a file called `.env`, containing the following:

    CLIENT_TOKEN = 'YOUR CLIENT ACCESS TOKEN'

You should now be able to run the script.

## Usage

If you are going to collect a new set of data, it is highly recommended that you delete `known_songs.txt`, as the file is meant for subsequent runs to keep track of what songs have been searched already. You should also delete all files in the `lyrics/` directory. You should also delete `all_tokens.txt`, as `all_lyrics.sh` appends to the file.

## Authors

This project was a collaboration between [Tommy Chen](https://github.com/chenafb), [Andrew Pham](https://github.com/phamao), and [Yao Yan](https://github.com/yaoyan01).

## Sources

This project uses data collected and published on [Kaggle](https://www.kaggle.com/datasets/dhruvildave/spotify-charts). It also uses the [Genius API](https://docs.genius.com/) to acquire song lyrics.

## Files

This is an overview of the files and directories in this repository.

### `archive.zip` and `charts.csv`

Although these files are not included in this repository, they are required. `archive.zip` can be downloaded [here](https://www.kaggle.com/datasets/dhruvildave/spotify-charts). Extract `charts.csv` from `archive.zip` and place it in this directory.

### `functions/`

`functions/` is a directory containing all functions used for this project.

#### `bigrams_collocations.py`

`bigrams_collocations.py` is a Python script that sorts the song/lyric list of tuples into bigrams and collocations.

#### `megalist.py`

`megalist.py` is a Python script that combines all the tokenized lyrics lists into one list.

#### `prepare_lyrics.py`

`prepare_lyrics.py` is a Python script that organizes the lyric text files in `lyrics/` into a list of tuples, where the first value is the song name and second value is the tokenized lyrics.

#### `save_lyrics.py`

`save_lyrics.py` is a Python script that, given `charts.csv`, searches every song title contained in the file using the Genius API. It then saves the lyrics to a text file named after the song in the `lyrics/` directory.\

#### `wordcloud.py`

`wordcloud.py` is a Python script that creates a wordcloud given a list of tokens.

### `lyrics/`

`lyrics/` is a directory containing text files for the lyrics of individual songs.

### `known_songs.txt`

`known_songs.txt` is a text file that stores the names of all songs that have been searched already; this is done to work around the request limitations of Genius's API.