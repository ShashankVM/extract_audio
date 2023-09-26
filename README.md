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

## Performance improvement numbers
| Time type | Serial   | Parallel    |  Speedup (Serial time / Parallel time) |
| --------- | ---------|-------------|----------------------------------------|
| real      | 0m20.106s | 0m8.476s   | 2.372  |
| user      | 0m30.313s | 0m20.698s  | 1.46   |
| sys       | 0m1.141   | 0m2.711s   | 0.42   |

## Theoretical speedup calculation:
Total time taken for serial implementation = 24.171s
Average time per file with serial implementation= 24.171s/9 = 2.68s
Number of Processors = 4


To run 9 jobs, it takes 3 runs for a machine with 4 processors.
To run 9 jobs sequentially it takes 9 runs.

Speedup = 9/3 = 3

## Theoretical vs Practical
Error rate = 3 - 2.372 / 3 = 20.9% variation from ideal
