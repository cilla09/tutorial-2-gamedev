# Game Development - Tutorial 2
### Priscilla Natanael Surjanto - 2306152153
#### Latihan: Playtest

1. Apa saja pesan log yang dicetak pada panel Output?

   Reached objective!

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

   Reached objective!

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

   Ya, ada kaitannya. Jika objek BlueShip memasuki area ObjectiveArea, maka pesan log berupa "Reached objective!" akan dicetak di panel Output.

#### Latihan: Memanipulasi Node dan Scene

1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?

   Fungsi dari node bertipe Sprite2D adalah memberikan wujud dan tekstur 2D untuk masing-masing BlueShip dan StonePlatform. Jika kedua scene tidak memiliki child node Sprite2D, mereka hanya menjadi titik koordinat yang tidak terlihat oleh pemain.

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

   Untuk StonePlatform yang bertipe StaticBody2D, node ini merupakan objek yang tidak bergerak atau tidak terpengaruh oleh hukum fisika (cth gravitasi), sehingga untuk menggerakkannya perlu dilakukan secara manual melalui kode (developer) atau digerakkan oleh Player (AnimationPlayer). Sementara, node RigidBody2D yang digunakan BlueShip merupakan objek yang tidak bisa digerakkan secara langsung, namun dipengaruhi hukum fisika seperti gravitasi, collision, dll. Pergerakan objek ini dapat dipicu dengan memberi force kepada objek, sehingga simulasi fisika akan menghitung hasil pergerakan, rotasi, reaksi, dll.

3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   Tidak ada perubahan yang terjadi, sebab BlueShip bertabrakan dengan StaticBody2D yang tidak dipengaruhi hukum fisika (tabrakan dalam kasus ini). Walaupun ditabrak oleh objek dengan massa yang berbeda-beda, landasan/platform tetap di tempat sesuai kontrol Player. Kecepatan jatuh BlueShip juga tetap sama walau massa berbeda, sebab massa tidak mempengaruhi kecepatan jatuh dan percepatan gravitasi adalah konstan.

4. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   StonePlatform tidak bisa bertabrakan dengan objek lain karena node CollisionShape2D menjadi disabled, sehingga ketika game dimulai, BlueShip langsung jatuh menembus StonePlatform, menyisakan hanya StonePlatform yang terlihat pada layar.

5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

   Jika atribut Position dimanipulasi, maka titik koordinat letak BlueShip di Viewport akan berubah sesuai Position. Jika x semakin besar, maka BlueShip semakin kanan, dan sebaliknya. Jika y semakin besar, maka BlueShip semakin bawah, dan sebaliknya.

   Jika atribut Rotation dimanipulasi, maka pada Viewport BlueShip akan berotasi sebanyak derajat yang kita input di Rotation. Jika angka semakin negatif, maka rotasi ke kiri, dan sebaliknya.

   Jika atribut Scale dimanipulasi, maka ukuran BlueShip pada Viewport akan membesar atau mengecil berdasarkan ukuran awal dikalikan Scale yang kita input. Untuk ini, kita juga bisa lock/unlock component ratio. Jika dilock, maka ketika x diubah y juga akan berubah (sehingga ratio tetap sama). Jika diunlock, maka hanya salah satu yang berubah dan ratio bisa berubah.

6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

   Hal ini disebabkan StonePlatform dan StonePlatform2 merupakan child node dari PlatformBlue, sehingga koordinat yang dimasukkan untuk masing-masing StonePlatform diukur berdasarkan area PlatformBlue (menggunakan local coordinate PlatformBlue), menghasilkan visualisasi posisi yang tepat dalam keseluruhan Scene.
