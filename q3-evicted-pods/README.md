1. Oncelikle, bir kubectl komutunu iceren bir shell script dosyasi (cleanup-evicted-pods.sh) olusturuldu.
2. Ardindan, bu script dosyasini bir Docker image icerisine konuldu ve Dockerfile dosyasi hazirlandi.
3. Docker image'i olusturularak ve bir Docker registry'ye yuklendi
4. Son olarak, bir CronJob manifest dosyasi olusturuldu ve bu Docker image'in kullanarak kubectl komutunu belirli araliklarla çalistirmasi saglandi. 
