
#define BUFF_SIZE 768
#define SAMPLE_RATE 50
#define DEBUG 0

#define analogInPin A0
#define analogOutPin 9
#define recordPin 4
#define clearPin 5 //NOTE!!! clear, reverse, and record have been switched in code not circuit
#define reversePin 3
#define timingPin A1
#define ledPin 13
#define triggerModePin 6
#define triggerPin 2
#define triggerInterrupt 0 //UNO interrupt0 => pin 2

//sampling vars
short BUFFER[BUFF_SIZE];
int readIndex = 0;
int writeIndex = 0;

//state vars
int playRate = SAMPLE_RATE;
boolean playbackReverse = false;
int recordv, clearv;
short current;
boolean triggerMode = false;
boolean triggered = false;

//TODO maybe smarter to replace triggerMode with contenous mode that triggers at end

void setup() {
  if(DEBUG) Serial.begin(9600); 
  pinMode(recordPin, INPUT);
  pinMode(clearPin, INPUT);
  pinMode(reversePin, INPUT);
  pinMode(triggerModePin, INPUT);
  pinMode(triggerPin, INPUT);
  pinMode(analogOutPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
}

void loop() {
  recordv = digitalRead(recordPin);
  clearv = digitalRead(clearPin);
  current = BUFFER[readIndex];
  playRate = map(analogRead(timingPin), 0, 1023, SAMPLE_RATE/4, SAMPLE_RATE*2); //(SAMPLE_RATE/10)*(5 + (analogRead(timingPin)>>6)); //a delay time between 5 and 20 (double and half sampling rate)
  digitalWrite(ledPin, (playRate==SAMPLE_RATE ? HIGH : LOW )); //some visual feedback that you're at a normal play rate
  
  if(digitalRead(triggerModePin) != triggerMode){
    triggerMode = !triggerMode;
    if(triggerMode){
      attachInterrupt(triggerInterrupt, trigger, RISING); 
    }else{
      detachInterrupt(triggerInterrupt);
    }
  }

  if(DEBUG) debugPrint();
  
  //check if we need to reverse direction
  if(digitalRead(reversePin) != playbackReverse){
    readIndex = (playbackReverse ? 0 : writeIndex-1); //jump to beginning of sequence
    playbackReverse = !playbackReverse;
  }
  if(clearv){
    //clear
    readIndex = writeIndex = 0;
    analogWrite(analogOutPin, 0);
    current = 0;
  }
  //sample
  if(recordv && writeIndex < BUFF_SIZE){
    BUFFER[writeIndex++] = analogRead(analogInPin);
    delay(SAMPLE_RATE);
  
  //play
  }else if(writeIndex > 0){// if there are samples to play
    if(!triggerMode || triggered){
      analogWrite(analogOutPin, BUFFER[readIndex]);
      if(playbackReverse){
        if(--readIndex<0){
          readIndex = writeIndex-1;
          triggered = false;
        }
      }else{
        if(++readIndex>writeIndex-1){
          readIndex=0;
          triggered = false;
        }
      }
      delay(playRate);
    }
  }
  
}

// interrupt handler
void trigger(){
  if(triggered) readIndex = (playbackReverse ? writeIndex-1 : 0); //restart sample on fresh trigger
  triggered = true;
}


void debugPrint(){
    Serial.print(readIndex);
    Serial.print("\t");
    Serial.print(writeIndex);
    Serial.print("\t");
    Serial.print(current);
    Serial.print("\t");
    Serial.print(recordv);
    Serial.print("\t");
    Serial.print(playRate);
    Serial.print("\t");
    Serial.print(triggerMode);
    Serial.print("\t");
    Serial.print(triggered);
    Serial.print("\t");
    Serial.println(clearv);
    
}
