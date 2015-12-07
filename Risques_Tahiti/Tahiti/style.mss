
/* Cartographie des risques de submersion marine et de risque industriel à Papeete

   notion de risque : 
RISQUE = Aléa (montée du niveau de la mer/explosion raffinerie) + enjeu (bâtiments)
Deux scénarios de submersion : 1. Montée du niveau de la mer de 88cm.
                               2. Montée du niveau de la mer de 3m.
Scénario risque industrielle : explosion raffinerie située sur la
barrière de corail NW de Papeete.
trois niveau de risque : 1. Fort : buffer à 500m.
                         2. Moyen : buffer à 1500m.
                         3. Faible : buffer à 3000m.

Zones "sans risques" : fait référence aux bâtiments qui ne sent pas impactés
par les deux scénarios cartographiés.

*/

Map {
  background-color: #b8dee6;
}
/*couche vectorielle : planisphère proposée par tilemill */
#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}
/*carte topographique Tahiti IGN 1/25000*/
#topo-tahiti.carteIGN {
  raster-opacity: 1;
  raster-scaling: bilinear;
  }
/*image satellite ; comoposition colorée RBV ; résolution spatiale 10m*/
#ImgSat.RS10M {
  raster-opacity: 1;
  raster-scaling: bilinear;
  }
/*bâti submergé : scénario montée du niveau de la mer 88cm*/
#bati-3m.risksub {
  polygon-opacity: 1 ;
  polygon-fill: #EF7F00;
  line-color:#010001; 

  }

/*bâti submergé : scénario montée du niveau de la mer 3m*/
#bati-88cm.risksub {
  polygon-opacity: 1;
  polygon-fill: #E300D4;
  line-color : #010001;
  }

/*bâti à risque "fort" : scénario explosion raffinerie Papeete*/
#bati-fort.riskindus {
  polygon-opacity: 1;
  polygon-fill: #ED0000;
  line-color : #010001;
  }
/*bâti à risque "moyen" : scénario explosion raffinerie Papeete*/
#bati-moyen.riskindus {
  polygon-opacity: 1;
  polygon-fill: #FEF72F;
  line-color : #010001;
  }
/*bâti à risque "faible" : scénario explosion raffinerie Papeete*/
#bati-faible.riskindus {
  polygon-opacity: 1;
  polygon-fill: #19F600;
line-color: #010001  ;
}  

/*bâti non impacté : scénario explosion raffinerie Papeete */
#bati-safe.allrisk {
  polygon-opacity : 1;
  polygon-fill: #DBDEED;
  line-color : #010001;
  }

/*couches des routes papeete*/
#routes.infrastructure {
  line-color : #010001;
  line-width : 2;
  }