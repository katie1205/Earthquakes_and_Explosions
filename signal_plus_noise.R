#PROBLEM:
#Simulate two series using sinusoidal functions for earthquakes and/or explosions 

par(mfrow=c(3,1))
s1<-c(rep(0,100),10*exp(-(1:100)/20)*cos(2*pi*1:100/4)) #signal 1
s2<-c(rep(0,100),10*exp(-(1:100)/200)*cos(2*pi*1:100/4)) #signal 2
w<-rnorm(200)  #noise
x1<-s1+w  #signal1 + noise
x2<-s2+w  #signal2 + noise
ts.plot(x1,main="Signal1 + Noise")
ts.plot(x2,main="Signal2 + Noise")

#plotting signal modulators
t<-c(1:100)
y1<-exp(-t/20)
y2<-exp(-t/200)
plot(t,y1,main="Signal Modulators 1 and 2",col="red")
points(t,y2,col="blue")
points(t,y2)
