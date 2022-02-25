

dat1 <- read.csv('results1.csv')
dat2 <- read.csv('results2.csv')

plot(x = dat1$epoch, 
     y = dat1$metrics.mAP_0.5,
     type='b')
points(x = dat2$epoch, 
     y = dat2$metrics.mAP_0.5,
     type='b',
     col = 'blue')

testm <- apply(cbind(dat1$metrics.mAP_0.5, dat2$metrics.mAP_0.5),
      MARGIN = 1,
      FUN = mean)
testsd <- apply(cbind(dat1$metrics.mAP_0.5, dat2$metrics.mAP_0.5),
                         MARGIN = 1,
                         FUN = sd)
plot(x = 1:100, 
     y = testm,
     pch=16,
     col = 'goldenrod')
arrows(x0 = 1:100,
       y0 = testm-testsd,
       x1 = 1:100,
       y1 = testm+testsd,
       col = 'goldenrod',
       length = 0)
lines(lowess(x = 1:100, 
             y = testm,
             f=.66, iter = 10))

