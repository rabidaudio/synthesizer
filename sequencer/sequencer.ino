
#define BUFF_SIZE 768 //this is pretty close to maxing out the memory of a ATMEGA328P. Chosen because it's a power-of-two-ish number
#define DEBUG 0       //set to 1 to see Serial ouput

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

short BUFFER[BUFF_SIZE];         // Sample memory
int readIndex, writeIndex = 0;   // pointers to read/write positions

//state variables
boolean recordBtn, clearBtn;     //are these buttons pressed?
boolean playbackReverse = false; //are we in reverse playback mode?
boolean triggerMode = false;     // are we in trigger mode (playback doesn't loop but starts on interrupt)?
boolean triggered = false;       // has a sample trigger been fired and hasn't completed?
boolean playing = false;         // is there a sample actually playing back right now?


//TODO maybe smarter to replace current triggerMode implementation where we are always
// in trigger mode, and you can send a onComplete pulse back to the trigger to loop

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
  
  //when we get a signal on interrupt0, play/record. This way the sample rate
  // is externally controllable
  attachInterrupt(sampleInterrupt, sample, RISING);
}

void loop() {
  //this is where less timing-critical code goes.
  // Here we sample user inputs (switches and the like)
  
  recordBtn = digitalRead(recordPin);
  clearBtn = digitalRead(clearPin);
  digitalWrite(ledPin, (recordBtn ? HIGH : LOW)); //light up LED when recording
  digitalWrite(playbackGatePin, (playing ? HIGH : LOW)); //pull the playbackGate high when playing
  
  // check if there was a change in trigger mode
  if(digitalRead(triggerModePin) != triggerMode){
    triggerMode = !triggerMode;
    // enable/disable the trigger interrupt
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
    //to clear the memory, we don't actually need to touch the BUFFER at all.
    // just need to reset the write index back to zero. Past data will get overwritten
    // on the next record
    readIndex = writeIndex = 0;
    analogWrite(analogOutPin, 0); //explicitly pull the output low
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
  
  if(recordBtn && writeIndex < BUFF_SIZE){ //if record is pressed and there's still memory in the BUFFER
    //record
    BUFFER[writeIndex++] = analogRead(analogInPin);
  
  }else if(writeIndex > 0){// if there are samples to play
    //play
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
    // sanity checks
    Serial.print(readIndex);
    Serial.print("\t");
    Serial.print(writeIndex);
    Serial.print("\t");
    Serial.print(BUFFER[readIndex]);
    Serial.print("\t");
    Serial.print(recordBtn);
    Serial.print("\t");
    Serial.print(clearBtn);
    Serial.print("\t");
    Serial.print(triggerMode);
    Serial.print("\t");
    Serial.print(triggered);
    Serial.print("\t");
    Serial.println(playing);
}
