
#define BUFF_SIZE 768
#define DEBUG 0

#define analogInPin A0
#define analogOutPin 9
#define reversePin 4
#define recordPin 5
#define clearPin 6
#define triggerModePin 7
#define playbackGatePin 8
#define ledPin 13

//UNO interrupt0 => pin 2, interrupt1 => pin 3
#define sampleInterrupt 0
#define triggerInterrupt 1
#define triggerPin 3

// Sample memory
short BUFFER[BUFF_SIZE];
// pointers to read/write positions
int readIndex = 0;
int writeIndex = 0;

//state variables
boolean recordBtn, clearBtn;
boolean playbackReverse = false;
boolean triggerMode = false;
boolean triggered = false;
boolean playing = false;

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
  pinMode(playbackGatePin, OUTPUT);
  
  attachInterrupt(sampleInterrupt, sample, RISING);
}

void loop() {
  //this is where we sample user inputs (switches and the like)
  
  recordBtn = digitalRead(recordPin);
  clearBtn = digitalRead(clearPin);
  digitalWrite(ledPin, (recordBtn ? HIGH : LOW));
  digitalWrite(playbackGatePin, (playing ? HIGH : LOW));
  
  // s
  if(digitalRead(triggerModePin) != triggerMode){
    triggerMode = !triggerMode;
    if(triggerMode){
      attachInterrupt(triggerInterrupt, trigger, RISING); 
    }else{
      detachInterrupt(triggerInterrupt);
    }
  }
  
  //check if we need to reverse direction
  if(digitalRead(reversePin) != playbackReverse){
    readIndex = (playbackReverse ? 0 : writeIndex-1); //jump to beginning of sequence
    playbackReverse = !playbackReverse;
  }
  if(clearBtn){
    //clear
    readIndex = writeIndex = 0;
    analogWrite(analogOutPin, 0);
  }
  
  if(DEBUG) debugPrint();
  delay(50); //reasonable button sample rate
}

// interrupt handler
void trigger(){
  if(triggered) readIndex = (playbackReverse ? writeIndex-1 : 0); //restart sample on fresh trigger
  triggered = true;
}


void sample(){
  
  //record
  if(recordBtn && writeIndex < BUFF_SIZE){
    BUFFER[writeIndex++] = analogRead(analogInPin);
  
  //play
  }else if(writeIndex > 0){// if there are samples to play
    if(!triggerMode || triggered){
      playing = true;      
      analogWrite(analogOutPin, BUFFER[readIndex]);
      if(playbackReverse){
        if(--readIndex<0){
          readIndex = writeIndex-1;
          triggered = false;
        }
      }else{
        if(++readIndex>writeIndex-1){
          playing = false;
          readIndex=0;
          triggered = false;
        }
      }
    }
  }else{
    playing = false;
  }
}


void debugPrint(){
    Serial.print(readIndex);
    Serial.print("\t");
    Serial.print(writeIndex);
    Serial.print("\t");
    Serial.print(BUFFER[readIndex]);
    Serial.print("\t");
    Serial.print(recordBtn);
    Serial.print("\t");
    Serial.print(triggerMode);
    Serial.print("\t");
    Serial.print(triggered);
    Serial.print("\t");
    Serial.println(clearBtn);
}
