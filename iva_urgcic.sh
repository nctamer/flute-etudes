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
# 25 etudes *20/25
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLGCSTfKla3Cs7Ro2VgTcD79k0tQP29VEs -x --audio-format mp3 --audio-quality 0  -i -o "flute/IvaUrgcic_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


########
# Donjon
# 8 etudes de salon
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLGCSTfKla3Cu0bGXuRSl34HvaHrhA4xKu -x --audio-format mp3 --audio-quality 0  -i -o "flute/IvaUrgcic_Donjon8Salon_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"





########
# Kohler
# 25 Romantic Etudes Op 66, 5/25
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLGCSTfKla3CuMl3g5SVnM4wLEjj_6Zv86 -x --audio-format mp3 --audio-quality 0 -i  -o "flute/IvaUrgcic_KohlerOp66Romantic_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# Expression Etudes , all 8
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLGCSTfKla3CtEMSC8YWuaAEfamfA7fsi3 -x --audio-format mp3 --audio-quality 0 -i  -o "flute/IvaUrgcic_KohlerExpression_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"

# Op 33. only 3
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLGCSTfKla3CuH7qjjvkQp0sapTRwylTde -x --audio-format mp3 --audio-quality 0 -i  -o "flute/IvaUrgcic_KohlerOp33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"






###########
# Gariboldi 
# Op 132, only 4
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLGCSTfKla3Ctgh5fswREiG49UyXqziNvY -x --audio-format mp3 --audio-quality 0 -i  -o "flute/IvaUrgcic_GariboldiOp132_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


