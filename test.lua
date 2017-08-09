PINO_LED = 1
PINO_BOTAO = 2
MS = 1000

gpio.mode(PINO_LED, gpio.OUTPUT)
gpio.mode(PINO_BOTAO, gpio.INT, gpio.PULLUP)

function piscaLed()
  gpio.write(PINO_LED, gpio.HIGH)
  tmr.alarm(0, 500, 1, function()
    gpio.write(PINO_LED, gpio.LOW)
  end)
end

function tocarCampainha()
  piscaLed()
  print("apertou")
end

gpio.trig(PINO_BOTAO, "both", tocarCampainha)

piscaLed()
