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
# Drouet
# 25 etudes *21/25
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLm0Ccrv76Wg6BvAmZ-cMjPhXYmgDMDsTd -x --audio-format mp3 --audio-quality 0  -i -o "flute/MatthewAllison_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Kohler
# Expression Etudes *22
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLm0Ccrv76Wg5k4M2ZCs_p-jK-5BxzDB7s -x --audio-format mp3 --audio-quality 0 -i  -o "flute/MatthewAllison_KohlerExpression_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# Op 33
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLm0Ccrv76Wg53XpOTLKr0gm4ICWwBR11b -x --audio-format mp3 --audio-quality 0 -i  -o "flute/MatthewAllison_KohlerOp33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Donjon
# 8 etudes de salon
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLm0Ccrv76Wg5fXifbLkFMvNgDMWgnoHGZ -x --audio-format mp3 --audio-quality 0  -i -o "flute/MatthewAllison_Donjon8Salon_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


###########
# Gariboldi 
# Op 131
yt-dlp --yes-playlist --playlist-items 1,4,5,7,8,10-26 https://www.youtube.com/playlist?list=PLm0Ccrv76Wg4RwGf4cYuAyDgRw4xPyyiz -x --audio-format mp3 --audio-quality 0  -i -o "flute/MatthewAllison_GariboldiOp131_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
