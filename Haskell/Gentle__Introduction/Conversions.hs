fahrenheitToCelsius :: Fractional a => a -> a
fahrenheitToCelsius f = (f-32)*(5/9)

celsiusToFahrenheit :: Fractional a => a -> a
celsiusToFahrenheit c = (c*5/9)+32

feetToMeters :: (Integral a, Fractional a) => a -> a
feetToMeters a = a `div` 3.281

metersToFeet :: Fractional a => a -> a
metersToFeet a = a * 3.281

milesToKilometers :: Fractional a => a -> a
milesToKilometers a = a * 1.609344

kilometersToMiles :: (Integral a, Fractional a) => a -> a
kilometersToMiles a = a `div` 1.609344