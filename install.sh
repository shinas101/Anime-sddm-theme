#!/bin/bash
function addtoSys(){
				sudo cp -r Anime /usr/share/sddm/themes/
				sudo sed -i "s/^Current=.*/Current=Anime/g" /etc/sddm.conf.d/theme.conf
				sudo sed -i "s/^Current=.*/Current=Anime/g" /etc/sddm.conf
				echo "Theme Installed successfully"
			}	
function setBackground(){
	printf "Select a Background : \n"
	options=("Itachi" "Baruto" "solo-leveling" "jujutsu-kaisen" "art-1" "art-2" "forest")
	select opt in "${options[@]}";do
		case $opt in
			
			Itachi)
				cp Asset/itachi.jpg Anime/background.jpg
				addtoSys
				break
				;;
			Baruto)
				cp Asset/baruto.jpg Anime/background.jpg
				sudo cp -r Anime /usr/share/sddm/themes/
				addtoSys
				break
				;;
			solo-leveling)
				cp Asset/solo-leveling.jpg Anime/background.jpg
				addtoSys
				break
				;;
			jujutsu-kaisen)
				cp Asset/jujutsu-kaisen.jpg Anime/background.jpg
				addtoSys
				break
				;;
			art-1)
				cp Asset/art-1.jpg Anime/background.jpg
				addtoSys
				break
				;;
			art-2)
				cp Asset/art-2.jpg Anime/background.jpg
				addtoSys
				break
				;;
			forest)
				cp Asset/forest.jpg Anime/background.jpg
				addtoSys
				break
				;;													
			*)
				printf "[*]Please select an image "
				break
				;;
		esac
	done
}

setBackground			

#https://github.com/shinas101
