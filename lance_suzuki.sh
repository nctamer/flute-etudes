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
# Kohler
# 25 Romantic Etudes Op 66
yt-dlp --yes-playlist --playlist-items 1,2,4-20,22 https://youtube.com/playlist?list=PLsrOzJDmkmQ28jjKCy8O8D3IkxJt4UG9H -x --audio-format mp3 --audio-quality 0  -i -o "flute/LanceSuzuki_KohlerOp66Romantic_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# Expression Etudes *3
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLsrOzJDmkmQ2xe5YqwJzPTyV-nuAiB4cJ -x --audio-format mp3 --audio-quality 0  -i -o "flute/LanceSuzuki_KohlerExpression_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# Op 33
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLsrOzJDmkmQ2WJp0pLq-GZGHpXtfAtsyJ -x --audio-format mp3 --audio-quality 0 -i  -o "flute/LanceSuzuki_KohlerOp33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Drouet
# 25 etudes *4/25
yt-dlp --yes-playlist --playlist-items 1,3,4 https://www.youtube.com/playlist?list=PLsrOzJDmkmQ3y-rJhUzvo6Xwpr8WMxzi6 -x --audio-format mp3 --audio-quality 0  -i -o "flute/LanceSuzuki_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



###########
# Gariboldi 
# Op 132
yt-dlp --yes-playlist --playlist-items 2-13,15-20 https://youtube.com/playlist?list=PLsrOzJDmkmQ2wsNrkmmLVnKtcAZlxHK67 -x --audio-format mp3 --audio-quality 0 -i  -o "flute/LanceSuzuki_GariboldiOp132_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


###########
# Andersen
# Op 41
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLsrOzJDmkmQ1udBbsJHbA3o2v0pJBgLg- -x --audio-format mp3 --audio-quality 0 -i  -o "flute/LanceSuzuki_AndersenOp41_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



########
# Donjon
# 8 etudes de salon
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLsrOzJDmkmQ2Mzb8IXxCUy9bDqwRmU6mB -x --audio-format mp3 --audio-quality 0  -i -o "flute/LanceSuzuki_Donjon8Salon_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

