# Use a imagem base especificada no seu docker-compose
FROM geoserver/geoserver:2.25.3

# Configure as variáveis de ambiente (opcional se já estão configuradas no Render)
#ENV GEOSERVER_ADMIN_PASSWORD=admin
ENV INSTALL_EXTENSIONS=true
ENV STABLE_EXTENSIONS="charts,control-flow,css,csw-iso,csw,db2,dxf,excel,feature-pregeneralized,gdal,geopkg-output,grib,gwc-s3,h2,iau,importer,inspire,jp2k,libjpeg-turbo,mapml,mbstyle,metadata,mongodb,monitor,mysql,netcdf-out,netcdf,ogr-wfs,ogr-wps,oracle,params-extractor,printing,pyramid,querylayer,rat,sldservice,sqlserver,vectortiles,wcs2_0-eo,web-resource,wmts-multi-dimensional,wps-cluster-hazelcast,wps-download,wps"

# Exponha a porta 8080 usada pelo GeoServer
EXPOSE 8070

# Comando para iniciar o GeoServer
CMD ["catalina.sh", "run"]
