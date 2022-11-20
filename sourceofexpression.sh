#!/bin/bash
#SBATCH --job-name=autoData
#SBATCH --nodelist=node010
#SBATCH -n 1
#SBATCH --mem 4000
#SBATCH -p medium                  # Partition to submit to
#SBATCH -o %x-%j.out # File to which STDOUT will be written
#SBATCH -e %x-%j.err # File to which STDERR will be written

module load libsndfile
module load RubberBand
module load FFmpeg
module load Miniconda3
eval "$(conda shell.bash hook)"
conda init bash
conda activate supervised


########
# Graded Studes
# Book1
yt-dlp --yes-playlist https://youtube.com/playlist?list=PL43_brAbQmxg0XELS7GpuygWyrqEoJdUy --audio-format mp3 --audio-quality 0   -o "flute/PaulHarris_Graded76_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Book2
yt-dlp --yes-playlist --playlist-items 1=8.10 https://youtube.com/playlist?list=PL43_brAbQmxgXO-3muBqFY9_uDaBbzGQ5 --audio-format mp3 --audio-quality 0   -o "flute/PaulHarris_Graded76_%(playlist_index+54)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


########
# 40 little pieces for beginner
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PL43_brAbQmxgIkiB-viSRk-tGIXSvSXxy --audio-format mp3 --audio-quality 0   -o "flute/LouisMayse_Beginner40_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
