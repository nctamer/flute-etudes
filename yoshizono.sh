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
#Karg Elert 30
yt-dlp --yes-playlist --playlist-items 2-30  https://www.youtube.com/playlist?list=PLB-77GusIAvEYPdN7q0CT08g0-vIKdQID --audio-format mp3 --audio-quality 0 -i  -o "flute/Yoshizono_Elert30_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



##################
#Bohm 24 Caprices
yt-dlp --yes-playlist https://youtube.com/playlist?list=PLB-77GusIAvHj65OL7CrHcsFNMBuApAsE --audio-format mp3 --audio-quality 0 -i  -o "flute/Yoshizono_Bohm24_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



##################
#Furstenau Boquets des Tons
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvGwtu8ezzoI-XHRlcjSO51t --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_Furstenau24_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


##################
#Donjon 8 salon
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvHioKLArGcD_Hcv4ojz9yOM --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_Donjon8Salon_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"





##################
#Andersen Op. 15
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvHRSgJzrnTEfjAIxn08dOay --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_AndersenOp15_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#Andersen Op. 21
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvGe6oH_3BEMO52sSO8ex-fa --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_AndersenOp21_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
#Andersen Op. 33
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvGwxD2O1-FvQKruOdpXPLLI --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_AndersenOp33_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"



###########
# Drouet 25
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvHxXjEHxcWKvPMOfkSrT5uh --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_Drouet25_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"


#################
# Gariboldi Op 132
yt-dlp --yes-playlist --playlist-items 2-21  https://www.youtube.com/playlist?list=PLB-77GusIAvHe-sLheDH8RZpwGwkXFQ3b --audio-format mp3 --audio-quality 0 -i  -o "flute/Yoshizono_GariboldiOp132_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"




##################
#Kohler 20 easy op 93 (also has duet recordings in another playlist!!)
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvGaKu3XN5SIke0ksvQbxSFR --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_KohlerOp93_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Kohler Op 66 Romantic 
yt-dlp --yes-playlist https://www.youtube.com/playlist?list=PLB-77GusIAvHh2YYuHR7DCVD-7lwDqzNf --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_KohlerOp66Romantic_%(playlist_index)03d_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
# Kohler Op 33 
yt-dlp --yes-playlist --playlist-items 2-16 https://www.youtube.com/playlist?list=PLB-77GusIAvHtiCX4z1IK2TZlScnsJBOh --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_KohlerOp33_%(playlist_index)03d_Book1_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"
yt-dlp --yes-playlist --playlist-items 2-13 https://youtube.com/playlist?list=PLB-77GusIAvFrVKrsQ8Wf706_YUkRkaUN --audio-format mp3 --audio-quality 0  -i -o "flute/Yoshizono_KohlerOp33_%(playlist_index)03d_Book2_%(title)s_[%(id)s]_0000_%(duration)04d.%(ext)s"





