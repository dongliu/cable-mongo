use="use admin"
mongoshell="$use \n db.createUser( { user: \"cable\", pwd: \"cablepassword\", roles: [ { role: \"readWrite\", db: \"cable\" } ] } ) "
echo -e $mongoshell | mongo -u root -p rootspass --authenticationDatabase admin
