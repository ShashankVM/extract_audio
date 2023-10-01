# extract_audio
Bash script to extract audio stream from all video files in the folder using FFmpeg

## Dependencies
1. ffmpeg 4.4.2
2. GNU parallel 20210822

## Features:
- Leverages ffmpeg to extract audio stream from video formats like mp4, webm and mkv. 
- Audio file can be in written in any audio format. 
- Output filename has all spaces in the input filename replaced with underscroll for ease of use in Linux.

## How to run the script
Copy this script into the folder you need to perform conversion, and then run 
- `chmod +x convert_file.sh` (one time only)
- `./convert_file.sh arg1 arg2`

## Example:
1. To convert all files in the folder with mp4 extension to aac use:
   `./convert_file.sh mp4 aac`

## Features:
1. Supports AAC (Advanced Audio Coding Standard)
2. Supports Parallel Processing.

## Performance improvement numbers for a sample size of 9 different MP4 videos to be converted to AAC sound files on a 4 core processor
| Time type | Serial   | Parallel    |  Speedup (Serial time / Parallel time) |
| --------- | ---------|-------------|----------------------------------------|
| real      | 0m20.106s | 0m8.476s   | 2.372  |
| user      | 0m30.313s | 0m20.698s  | 1.46   |
| sys       | 0m1.141   | 0m2.711s   | 0.42   |

## Theoretical maximum speedup calculation:
Maximum theoretical speedup = Number of processors

## Comments on theoretical speedup vs practical speedup
Deviation from ideal = (4 - 2.4) / 4 = 40%

This means the practical speedup came to approximately 60% of the maximum speedup.

This deviation is due to running it on a feature rich, Graphical Interface Operating System, consistent with the average usecase. This deviation can also be due to the fact that not all videos take the same time to convert. If all videos took the same time to convert, one might get a better speedup. The aim here is to get realistic numbers that a user can expect, not to paint a rosy picture.

In conclusion, the speedup of approximately 2.4 achieved makes a very good case for the use of GNU Parallel. Parallel implementation takes less than half the time that a serial implementation would take.
