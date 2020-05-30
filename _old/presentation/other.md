
### No calculus

Just like software developers, hardware developers are lazy

##### 4 equations

- V=I*R (Ohm's law)
- fo = 1/(2*pi*R*C) (RC filter cutoff)
- (Ideal Op amps) Vo/Vi = -Rf/Ri, Rf/Ri + 1
- ???


VCO(oneVoltPerOctaveFrequencyCV, shape){
  exponentialVoltage = LinearExponentialConvert(oneVoltPerOctaveFrequencyCV);
  resistorFrequencyCV = OTA(exponentialVoltage);
  [square, triangle] = 2OpAmpSqTriOsc(resistorFrequencyCV);
  sine = WaveShape(triangle);

  switch(shape){
    case 'square': wave = square;
    case 'triangle': wave = triangle;
    case 'sine': wave = sine;
  }

  return wave;
}
