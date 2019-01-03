# TODO: add more seeding data for admin users
mongoshell="use cable"
echo -e $mongoshell | mongo -u cable -p cablepassword --authenticationDatabase admin
