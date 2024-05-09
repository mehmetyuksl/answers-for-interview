Bu manifest dosyasi, my-service adinda bir Deployment ve my-cronjob adinda bir CronJob tanimlar. Deployment, 20 replica ile calisacak olan servisi temsil eder. Her bir replica, my-service adinda bir etikete sahip olacak ve bu sayede tum podlar Deployment'e ait olarak isaretlenir.

Podlar, my-service adli bir container icerir ve bu container, CRON adinda bir environment variable'a sahiptir. Bu variable'in degeri true oldugunda, servis icindeki cron islemleri calisacaktir.

CronJob, her saat basinda calisacak sekilde ayarlanmistir. CronJob, my-cronjob adinda bir container icerir ve bu container, ayni sekilde CRON environment variable'ini true olarak ayarlar. NodeSelector ile CronJob'in sadece belirli bir node uzerinde calismasini saglariz, boylece sadece bir pod uzerinde cron islemleri gerceklestirilir.

Ozetle, bu Deployment ve CronJob manifest dosyasi, 20 replica ile calisacak bir mikroservis ve sadece bir pod uzerinde calisacak cron islemlerini tanimlar.
