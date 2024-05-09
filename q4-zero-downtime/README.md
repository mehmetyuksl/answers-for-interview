ZERO DOWNTIME için Kubernetes üzerinde birçok strateji ve yöntem bulunmaktadır. Bazı stratejiler için aşağıda örnekler verilmiştir. Bunlar:
1)	Rolling Updates: Bu strateji, yeni bir sürümün eski sürümle yavaşça değiştirilmesini sağlar. Bu şekilde, kullanıcılar hala hizmeti kullanabilirken, güncelleme aşamalı olarak gerçekleşir. Bu stratejiyi kullanarak, her zaman en az bir pod çalışır durumda olur ve kesinti yaşanmaz.

     ![image](https://github.com/mehmetyuksl/answers-for-interview/assets/10564346/89429c27-7ebf-4cf2-90cf-3f12d56867cb)

2)	Readiness ve Liveness Probes: Readiness probesi, bir pod'un hizmete hazır olup olmadığını kontrol eder. Yani, bir uygulamayı ayağa kaldırdığımız zaman hemen hizmet vermeye başlayamayabilir. Bazı gereksinimleri indirmesi ya da farklı bir sebep ile ayağa kalktıktan belirli bir sonra hizmete başlayabilir. Bu gibi durumlarda pod’ların artık hizmet vermeye hazır olduğunu Readiness Probes aracılığı ile anlayabiliriz.

    Liveness probesi, pod'un çalışır durumda olup olmadığını kontrol eder. Yani, bir pod herhangi bir sebep ile kapanırsa Kubelet, podu tekrar ayağa kaldırır. Fakat pod ayakta fakat içerisinde uygulama herhangi bir   sebeple ile hizmet verememeye başladığında Kubelet bu durumu fark edemez. Bu gibi durumları yakalayabilmek için Liveness Probes kullanılır.

    Bu probeler kullanılarak, hizmetin kesintisiz bir şekilde çalıştığından emin olunabilir.
   ![image](https://github.com/mehmetyuksl/answers-for-interview/assets/10564346/f9ad8510-e83f-4386-905a-461f133bb6a8)

3)	Canary Deployments: Canary Deploymentleri, yeni bir sürümü yalnızca küçük bir kullanıcı grubuna veya trafik yüzdesine yönlendirerek riski azaltır. Bu, yeni sürümün sağlamlığını ve performansını test etmek için kullanılabilir.
 ![image](https://github.com/mehmetyuksl/answers-for-interview/assets/10564346/43f6c345-cbe1-4c99-a3ba-9525f22b3d16)

4)	Blue-Green Deployments: Blue-Green Deploymentlar, yeni bir sürümü başka bir ortamda (örneğin, yedek Kubernetes cluster'ında ya da test Kubernetes cluster’ında) çalıştırarak, production ortamına geçiş yapmadan önce yeni sürümü test etmek için kullanılır. Tüm trafik geçiş yaptıktan sonra, eski sürümün kaldırılması ve yeni sürümün devreye alınması sağlanır.
 ![image](https://github.com/mehmetyuksl/answers-for-interview/assets/10564346/93c6c47c-2e37-4b77-96bc-a6d3da2eb68d)
