#!/bin/bash

echo ""
echo "========================================================" 
echo "[CamerPay] - Installation des hooks Git..."

for hook in hooks/*; do
    nom=$(basename $hook)
    cp $hook .git/hooks/$nom
    chmod +x .git/hooks/$nom
    echo " [OK] Hook '$nom'installé"
done

echo "" 
echo " [CamerPay] Tous les Hooks sont installés"
echo "Votre environnement est prêt pour continuer à CamerPay"
echo "========================================================" 
echo "" 

