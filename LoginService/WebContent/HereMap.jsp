<html>
<head>
   <title>Simple HERE Map</title>
   <link rel="stylesheet" type="text/css" href="https://js.api.here.com/v3/3.1/mapsjs-ui.css" />
   <style>
      html, body { border: 0; margin: 0; padding: 0; }
      #map { height: 50vh; width: 30vw; }
   </style>
</head>
<body>
   <div id="map"></div>
   <script src="https://js.api.here.com/v3/3.1/mapsjs-core.js"></script>
   <script src="https://js.api.here.com/v3/3.1/mapsjs-service.js"></script>
   <script src="https://js.api.here.com/v3/3.1/mapsjs-ui.js"></script>
   <script src="https://js.api.here.com/v3/3.1/mapsjs-mapevents.js"></script>
   <script>
      const platform = new H.service.Platform({ apikey: '70LQ73kturmY2bynyKDyApVaxBaER2RRBIQsvyqJ8IY' });
      const defaultLayers = platform.createDefaultLayers();
      const map = new H.Map(document.getElementById('map'),
         defaultLayers.vector.normal.map, {
         center: { lat: 19.037282, lng: 73.064816 },
         zoom: 13,
         pixelRatio: window.devicePixelRatio || 1
      });
      window.addEventListener('resize', () => map.getViewPort().resize());
      const behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
      const ui = H.ui.UI.createDefault(map, defaultLayers);
   </script>
</body>
</html>