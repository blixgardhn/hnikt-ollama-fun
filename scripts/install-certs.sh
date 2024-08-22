cd /usr/local/share/ca-certificates/

wget -Y off \
http://pki.helsenord.no/chain/HelseNordIssuingCA01.pem.cer \
http://pki.helsenord.no/chain/HelseNordIssuingCA01\(2024\).pem.cer \
http://pki.helsenord.no/chain/HelseNordIssuingCA02.pem.cer \
http://pki.helsenord.no/chain/HelseNordIssuingCA03.pem.cer \
http://pki.helsenord.no/chain/HelseNordIssuingCA05.pem.cer \
http://pki.helsenord.no/chain/HelseNordRootCA.pem.cer \
http://pki.helsenord.no/proxy/www-proxy01.cer \
http://pki.helsenord.no/proxy/www-proxy02.cer \
http://pki.helsenord.no/proxy/www-proxy05.cer \
http://pki.helsenord.no/proxy/www-proxy06.cer \
http://pki.helsenord.no/proxy/www-proxy07.cer \
http://pki.helsenord.no/proxy/www-proxy08.cer   

for cert in *.cer; do mv "$cert" "${cert%.cer}.crt"; done

update-ca-certificates

cd -

