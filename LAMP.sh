sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql

echo "LAMP de base est installé !"

echo "Souhaitez-vous installer phpMyAdmin ?"
select yn in "Oui" "Non"; do
    case $yn in
        Oui ) sudo apt install phpmyadmin; break;;
        Non ) exit;;
    esac
done

echo "Souhaitez-vous installer les modules PHP les plus courants pour des fonctionnalités accrues ?"
select yn2 in "Oui" "Non"; do
    case $yn2 in
        Oui ) sudo apt install php-curl php-gd php-intl php-json php-mbstring php-xml php-zip; break;;
        Non ) exit;;
    esac
done

echo "Votre installation est terminée ! Merci d'avoir utilisé ce script et profitez bien !"

exit


