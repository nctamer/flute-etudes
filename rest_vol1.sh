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
# Viviana Guzman
########
# Mix Etudes / Donjon, Drouet, Igudesman
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLXkCr-08yJ-8jJ3sBuIsOnzarfsa08KzO --audio-format mp3 --audio-quality 0 -i  -o "flute/VivianaGuzman_Mix_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


########
# Amy Porter
########
# KargElert30
yt-dlp --yes-playlist --playlist-items 5-36 https://www.youtube.com/playlist?list=PLpc7xR4RabCZrDtGlrl3jPWcKyh1MJ4vV --audio-format mp3 --audio-quality 0  -i -o "flute/AmyPorter_Elert30Mix_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Catherine Baker
########
# Drouet 25 *24/25
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLdKMswDqnn6tK0C5BjnxeJkonZkEDGoOg --audio-format mp3 --audio-quality 0 -i  -o "flute/CatherineBaker_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Donjon Salon
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLdKMswDqnn6tZ9N1jEL2YNE99WEXBJo66 --audio-format mp3 --audio-quality 0  -i -o "flute/CatherineBaker_Donjon8Salon_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Abigail Walsh
########
######
# Bona
# Rhythmical Articulation
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLTfttGatEdgsiw405mcpfg0vCywEN-D-B --audio-format mp3 --audio-quality 0  -i -o "flute/AbigailWalsh_BonaArticulation_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
######
# Drouet 25 *24/25
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLTfttGatEdgvCGkwwDzy4nzXVUvXUE5q9 --audio-format mp3 --audio-quality 0  -i -o "flute/AbigailWalsh_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
######
# Kohher
# 25 Romantic Etudes Op 66, ALL 25!!
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLTfttGatEdgu7v82ecHNlO3pPj4bJzZk7 --audio-format mp3 --audio-quality 0  -i -o "flute/AbigailWalsh_KohlerOp66Romantic_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


