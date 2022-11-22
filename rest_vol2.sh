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


##################
# Averie Washington
# Gariboldi Op 132
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLn3rKYnULNNqtMaxd3jFIQ-JpEj5MqiyE -x --audio-format mp3 --audio-quality 0  -i -o "flute/AverieWashington_GariboldiOp132_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Drouet 25
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLn3rKYnULNNpzI0V6PPJ7yl8a4Frz0D6t -x --audio-format mp3 --audio-quality 0  -i -o "flute/AverieWashington_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


##################
# Anne Dyke
# Demersseman50Melodic , 22/50
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLBMMXB_hfr9NXlAiZkzSwt-DEtx9TlkXn -x --audio-format mp3 --audio-quality 0  -i -o "flute/AnneDyke_Demersseman50Melodic_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Drouet
# 25 etudes *13/25 and bad order
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLBMMXB_hfr9Nj_gJLWqCghRJrEG-DbTe7 -x --audio-format mp3 --audio-quality 0  -i -o "flute/AnneDyke_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

