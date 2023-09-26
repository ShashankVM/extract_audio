# extract_audio
Bash script to extract audio stream from all video files in the folder using FFmpeg

## Dependencies
1. ffmpeg 4.4.2

## Features:
- Leverages ffmpeg to extract audio stream from video formats like mp4, webm and mkv. (these 3 formats tested)
- Audio file can be in written in any audio format. (tested with mp3 only)
- Output filename has all spaces in the input filename replaced with underscroll for ease of use in Linux.

## How to run the script
Copy this script into the folder you need to perform conversion, and then run 
- `chmod +x convert_file.sh` (one time only)
- `./convert_file.sh arg1 arg2`

## Example:
1. To convert all files in the folder with mp4 extension to mp3 use:
   `./convert_file.sh mp4 mp3`

## To Do:
1. Support AAC (Advanced Audio Coding Standard)
2. Support Parallel Processing.
