import pygame, sys
import pygame.locals()
 
pygame.init()
 
WIDTH = 360
HEIGHT = 360
windowSurface = pygame.display.set_mode((WIDTH, HEIGHT), 0, 32)
 
windowSurface.fill(WHITE)
 
while True:
    events = pygame.event.get()
    for event in events:
        if event.key == pygame.K_p:
          cereal = serial.Serial('yourport',9600,timeout=1)
cereal.write("1")
             pass
        if event.type == QUIT:
             pygame.quit()
             sys.exit()