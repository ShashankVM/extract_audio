# extract_audio
Bash script to convert video files to mp3 format using ffmpeg

Features:
- Renames files to replace spaces in the filename with underscroll.
- Uses ffmpeg to extract audio stream from video formats like mp4, webm and mkv. (these 3 formats tested)
- Audio file can be in written in any audio format. (tested with mp3 only)

Copy this script into the folder you need to perform conversion, and then run 
`source convert_file.sh arg1 arg2`

Example:
1. To convert all files in the folder with mp4 extension to mp3 use:
   `source convert_file.sh mp4 mp3`
