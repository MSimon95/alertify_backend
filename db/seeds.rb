
User.create(
  username: "Simon",
  password_digest: "123",
  phone: "9174285006",
  bio: "just coding",
  image: "https://p.kindpng.com/picc/s/303-3034310_avatar-icon-deadpool-png-download-deadpool-avatar-icon.png"
)

User.create(
  username: "Hasi",
  password_digest: "123",
  phone: "9174858249",
  bio: "eCOM for Life",
  image: "https://spng.pngfind.com/pngs/s/5-52097_avatar-png-pic-vector-avatar-icon-png-transparent.png"
)

User.create(
  username: "John",
  password_digest: "123",
  phone: "9171234567",
  bio: "DUH",
  image: "https://spng.pngfind.com/pngs/s/5-52097_avatar-png-pic-vector-avatar-icon-png-transparent.png"
)

Group.create(description: "For Me", user_id: 1)
Group.create(description: "For You", user_id: 2)
Group.create(description: "For Her", user_id: 3)
Group.create(description: "For Him", user_id: 3)


Alert.create(
 event: "bday",
 image: "https://media2.giphy.com/media/WRL7YgP42OKns22wRD/200.gif" ,
 info: "21st bday yay",
 date: "2021-04-02",
 time: "20:00",
 place: "club"
 )

 Alert.create(
 event: "retirement",
 image: "https://media.tenor.com/images/898fef4e8c4414dd850a2fdaecc8bb5a/tenor.gif",
 info: "NO WORK",
 date: "2021-04-08",
 time: "08:00",
 place: "Mansion"
 )

 Alert.create(
 event: "Vacay",
 image: "https://media.tenor.com/images/7a7afbec0cdf0c858a8290c28747000a/tenor.gif",
 info: "FREEEEEE",
 date: "2021-04-02",
 time: "02:00",
 place: "Beach"
 ) 

 GroupAlert.create(
    group_id: 1,
    alert_id: 3
  )
 GroupAlert.create(
    group_id: 2,
    alert_id: 2
  )
 GroupAlert.create(
    group_id: 3,
    alert_id: 1
  )
  GroupAlert.create(
    group_id: 4,
    alert_id: 1
  )


puts "SEEEEEDED"

