  /*======================================================================================================
* FILE        : FINAL_PROJ.c
* AUTHOR      : Josh Ratificar, Mohan Francis,
*               Rodjean Gere, Holchi Alin, and Janluke Ceballos
* DESCRIPTION : 
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 17 April, 2024
* REVISION HISTORY:
*   17 April, 2024: Creation of the FIle
======================================================================================================*/

/*=============================================== 
 *   HEADER FILES
 *==============================================*/
#include <xc.h> 
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
/*=============================================== 
 *   STRUCTURES AND DEFINTIONS
 *==============================================*/
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 
#define _XTAL_FREQ 4000000
#define delay for(int i = 0; i < 1000; i++)

// SERVO MOTOR PINS
#define SERVO1 RC3
#define SERVO2 RC4
int servo_one_status = 0;
int servo_two_status = 0;


// ULTRA SONIC SENSOR PINS
#define TRIG RB1
#define ECHO RB2

// LCD PINS
#define LCD_PORT PORTD
#define RS RC0
#define RW RC1
#define EN RC2

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/
#define numberOfSamples 15

// For Ultra Sonic Sensor
#define halfway_level 10 //change based on reality
#define max_level 0
#define low_level 20
#define samples 10
unsigned int collection[samples] = {0}; //initialize collection array 
int index = 0;
float avg = 0;
int empty = 0;
// For Scheduler
int schedulerFlag = 0;
int seconds = 0;
int valve1 = 0;
int valve2 = 0;
int countflag = 0;
#define scheduler_time 10


/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
// Other
void initSYS(void);
void timerDelay(void);


// ULTRA SONIC SENSOR FUNCTION PROTOTYPES
void checkWaterLevel(void);

// SERVO MOTOR FUNCTION PROTOTYPES
void enableWater(int servoPin);
void disableWater(int servoPin);
void rotateLeft(int servoPin);
void rotateRight(int servoPin);
void rotateCenter(int servoPin);

// LCD FUNCTION PROTOTYPES
void initLCD(void);
void dataCtrl(unsigned char data);
void instCtrl(unsigned char inst);
void printString(char *string);
void updateDisplay(void);


/*=============================================== 
 *   INTERRUPT SERVICE ROUTINE
 *==============================================*/
void interrupt ISR() 
{
    GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap
	if(TMR0IF)
	{
		TMR0IF = 0;
        countflag = 1;
	}	
    GIE = 1;      // Enable all unmasked interrupts
}

/*===============================================
*   FUNCTION           : MAIN
*   DESCRIPTION        : This function is the main function of the program. The 
*                        PIC16F877A will read the temperature and humidity from 
*                        the DHT11 sensor and display it on the LCD. 
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main(void)
{ 
    // Configuring pins
    TRISB1 = 0; // TRIG as Output
    TRISB2 = 1; // ECHO as Input
    TRISC0 = TRISC1 = TRISC2 = 0; // LCD Control Pins as Output
    TRISC3 = TRISC4 = 0; // SERVO1 and SERVO2 as Output
    TRISD = 0x00; // PORTD as Output
    PORTD = 0x00; // Clearing PORTD
    PORTC = 0x00; // Clearing PORTC
    // Configuring interrupts
    initLCD(); // Initialize the LCD
    initSYS(); // Initailize the system
    
    // Configuring PORTA as analog input
    TRISA = 0xFF; // PORTA as input
    //Configuring interrupts
    GIE = 1; // Global Interrupt Enable
    PEIE = 1; 
    T1CON = 0x00; 
    TMR1IF = 0; // Clear Timer1 Flag
    TMR1IE = 1; // Enable Timer1 Interrupt
    TMR1ON = 0; // Turn off Timer1
    //TMR0 config
    OPTION_REG = 0x44; // PS2:PS0 - prescaler 1:32
    
    instCtrl(0x80);
    printString("          ");
    while(1)
    {   
        checkWaterLevel();// Ultrasonic sensor reading
        updateDisplay();

    }
}

void initSYS(void)
{
    instCtrl(0x80); // Clearing first line
    printString("STARTING UP...");
    instCtrl(0xC0);
    printString("VALVE 1:  ON   [OFF]");
    
    instCtrl(0x94);
    printString("VALVE 2:  ON   [OFF]");
    instCtrl(0xD4); // Set Cursor to 1st Line
    printString("WATER: ");
    disableWater(1); disableWater(2);
}

void updateDisplay(void)
{
    if(!empty)
    {  
        if(schedulerFlag)
        {
           // We will be checking seconds on every rotation
            if(seconds-- > 0)
            { 
                // Clearing First line
                instCtrl(0x80);
                char seconds_str[10];
                sprintf(seconds_str, "[%d]s", seconds);
                instCtrl(0x80);
                printString(seconds_str);
                timerDelay();                
            }
            else
           {
                // Swap to other valve
                if(valve1)
                {
                    valve1 = 0;
                    valve2 = 1;
                    seconds = scheduler_time; // 2 minutes
                    // updating rotation of valve
                    if(!servo_two_status) // if already on, then don't enable
                    {
                        // update the display on line 3
                        instCtrl(0x9C);
                        printString(" [ON]   OFF ");
                        enableWater(2);
                    }
                    if(servo_one_status) // if already on, then disable
                    {
                        // update the display on line 2
                        instCtrl(0xC8);
                        printString("  ON   [OFF]");
                        disableWater(1);
                    }
                }
                else
                {
                    valve1 = 1;
                    valve2 = 0;
                    seconds = scheduler_time; // 2 minutes
                    // updating rotation of valve
                    if(!servo_one_status) // if already on, then don't enable
                    {
                        // update the display on line 2
                        instCtrl(0xC8);
                        printString(" [ON]   OFF ");
                        enableWater(1);
                    }
                    if(servo_two_status) // if already on, then disable
                    {
                        // update the display on line 3
                        instCtrl(0x9C);
                        printString("  ON   [OFF]");
                        disableWater(2);
                    }
                }
            }
        }
        else 
        { // There is enough water, so both should be enabled
            //Valve1 is off so turn on Valve2
            // PR2 = 0x7D; // set PR2 to 125 for 1ms interrupt
            // TMR2ON = 1; // Turns on Timer2 (T2CON reg)
            valve1 = 0;
            valve2 = 0;
            instCtrl(0x80);
            // Clearing first line
            printString("                  ");
            instCtrl(0xC8);
            printString(" [ON]   OFF ");      
            instCtrl(0x9C);
            printString(" [ON]   OFF ");                
            if(!servo_one_status)
                enableWater(1);
            if(!servo_two_status)
                enableWater(2);
        }
    }
    else
    { // EMPTY TANK, SO BOTH VALVES ARE DISABLED
        valve1 = 0;
        valve2 = 0;
        instCtrl(0x80);
        printString("TANK IS EMPTY");
        if(servo_one_status)
        {
            instCtrl(0xC8);
            printString("  ON   [OFF]");
            disableWater(1);
        }
        if(servo_two_status)
        {
            instCtrl(0x9C);
            printString("  ON   [OFF]");
            disableWater(2);
        }
    }
}



/*=============================================== 
 *   CUSTOM FUNCTIONS
 *==============================================*/
void timerDelay(void)
{
    // *USING Prescaler 32*
    // 1 second 
	// overflow = 1s / [(4/4MHz)* 32 * 256]
	// overflow = 122.07
	// overflow = 122 <--- Yields 14.3 seconds due to ultrasonic delay. Fix: Adjust to 0.6 seconds timer0

    // 0.5 seconds
    // 	overflow = 0.5s / [(4/4MHz)* 32 * 256]
    // 	overflow = 61.035
    // 	overflow = 61

    // 0.6 seconds
    // 	overflow = 0.6s / [(4/4MHz)* 32 * 256]
    // 	overflow = 73.24
    // 	overflow = 73
    // Debugging print here, to see if the timer is working
    int localClock = 0;
    while(localClock < 73) // 0.6 seconds to account for the delay reading the ultrasonic sensor
    {
        if(countflag == 1) 
        {
            countflag = 0;
            localClock++;
        }
    }
}



/*=============================================== 
 *   ULTRA SONIC SENSOR FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : CHECKWATERLEVEL
*   DESCRIPTION        : This function checks the water level of the tank.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void checkWaterLevel(void) 
{
    TMR1H = TMR1L = 0; // Set Initial Value of Timer
    TRIG = 1; // TRIG High
    __delay_us(10); // Delay 10 microseconds
    //delay;
    TRIG = 0; // TRIG Low
    // Wait on echo
    while(!ECHO);
    TMR1ON = 1; // Start Timer
    while(ECHO); // Wait for Echo to go low
    // Calculate Distance
    unsigned int duration = (int)(((TMR1H << 8)|(TMR1L)));
    TMR1ON = 0; // Stop Timer
    int distance = duration*(0.034/2); // distance = time * speed of sound / 2
    collection[index++] = distance; //store distance value
    for(int i=0;i<samples;i++)
    {
        avg += collection[i]; //add all the samples
    }
    avg /= samples; //get average sample value
    //we want avg between 0 and 10
    avg <= 2? avg = max_level : avg = avg; //set values <=1.5 to max level
    avg >= low_level? avg = low_level: avg = avg; //set values >=10 to low level

    int percentValue = 100-(avg*5);
    index = index % samples; //reset index to 0 if it reaches 10
    char percentage[10];
    instCtrl(0xDA);
    printString("    ");
    instCtrl(0xDA);
    sprintf(percentage, "%d%%", percentValue); //need to fix: stays at 93 when avg <=2 (max_level)
    printString(percentage);
	if(percentValue == 0)
    {   
        schedulerFlag = 0; //set scheduler if water level is <= halfway
        empty = 1;
        TMR0IE = 0; // Disable Timer0 Interrupt
        TMR0IF = 0; // Clear Timer0 Flag
    }
    else if(percentValue < 50)
    {
        schedulerFlag = 1; //set scheduler if water level is <= halfway
        TMR0IE = 1; // Enable Timer0 Interrupt
        TMR0IF = 0; // Clear Timer0 Flag
        empty = 0;
        instCtrl(0x80);
        printString("             ");
    }
    else
    {
        schedulerFlag = 0;
        TMR0IE = 0; // Disable Timer0 Interrupt
        TMR0IF = 0; // Clear Timer0 Flag
        empty = 0;
        instCtrl(0x80);
        printString("             ");
    }
    
}

/*=============================================== 
 *   SERVO MOTOR FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : ENABLEWATER
*   DESCRIPTION        : This function enables the water.
*   PARAMETERS         : int servoPin
*   RETURNS            : VOID
*===============================================*/
void enableWater(int servoPin)
{
    // Enabling Water means we will open the valve
    // Avoiding PWM because that will take time to setup,
    // So instead referring to datasheet...
    // 1-2 ms pulse width
    // 1.5 ms is the center
    // 1 ms is the left
    // 2 ms is the right
    switch(servoPin)
    {
        case 1:
            rotateLeft(1);
            servo_one_status = 1;
            break;
        case 2:
            rotateLeft(2);
            servo_two_status = 1;
            break;
        default:
            break;
    }
}

/*===============================================
*   FUNCTION           : DISABLEWATER
*   DESCRIPTION        : This function disables the water.
*   PARAMETERS         : int servoPin
*   RETURNS            : VOID
*===============================================*/
void disableWater(int servoPin)
{
    // Disabling Water means we will close the valve
    // Avoiding PWM because that will take time to setup,
    // So instead referring to datasheet...
    // 1-2 ms pulse width
    // 1.5 ms is the center
    // 1 ms is the left
    // 2 ms is the right
    switch(servoPin)
    {
        case 1:
            rotateRight(1);
            servo_one_status = 0;
            break;
        case 2:
            rotateRight(2);
            servo_two_status = 0;
            break;
        default:
            break;
    }
}

/*===============================================
*   FUNCTION           : ROTATELEFT
*   DESCRIPTION        : This function rotates the servo motor to the left.
*   PARAMETERS         : int servoPin
*   RETURNS            : VOID
*===============================================*/
void rotateLeft(int servoPin)
{
    switch(servoPin)
    {
        case 1:
            SERVO1 = 1;
            __delay_us(1000);
            SERVO1 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        case 2:
            SERVO2 = 1;
            __delay_us(1000);
            SERVO2 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        default:
            break;
    }
}

/*===============================================
*   FUNCTION           : ROTATERIGHT
*   DESCRIPTION        : This function rotates the servo motor to the right.
*   PARAMETERS         : int servoPin
*   RETURNS            : VOID
*===============================================*/
void rotateRight(int servoPin)
{
    switch(servoPin)
    {
        case 1:
            SERVO1 = 1;
            __delay_us(2000);
            SERVO1 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        case 2:
            SERVO2 = 1;
            __delay_us(2000);
            SERVO2 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        default:
            break;
    }
}

/*===============================================
*   FUNCTION           : ROTATECENTER
*   DESCRIPTION        : This function rotates the servo motor to the center.
*   PARAMETERS         : int servoPin
*   RETURNS            : VOID
*===============================================*/
void rotateCenter(int servoPin)
{
    switch(servoPin)
    {
        case 1:
            SERVO1 = 1;
            __delay_us(1500);
            SERVO1 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        case 2:
            SERVO2 = 1;
            __delay_us(1500);
            SERVO2 = 0;
            __delay_ms(20);
            __delay_ms(1000);
            break;
        default:
            break;
    }
}



/*=============================================== 
 *   LCD FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : INITLCD
*   DESCRIPTION        : This function initializes the LCD.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void initLCD(void) 
{
    instCtrl(0x38); // 8-bit mode, 2-line, 5x7 font
    instCtrl(0x0C); // display on, cursor off
    instCtrl(0x01); // clear display
    instCtrl(0x06); // increment cursor
    instCtrl(0x80); // set cursor to 1st line
}

/*===============================================
*   FUNCTION           : DATACTRL
*   DESCRIPTION        : This function controls the data to be displayed on the LCD.
*   PARAMETERS         : unsigned char data
*   RETURNS            : VOID
*===============================================*/
void dataCtrl(unsigned char data)
{
    RS = 1; // set RS to data mode
    LCD_PORT = data; // send data to PORTD
    EN = 1; // enable data
    delay; // delay
    EN = 0; // disable data
}

/*===============================================
*   FUNCTION           : INSTCTRL
*   DESCRIPTION        : This function controls the instructions to be displayed on the LCD.
*   PARAMETERS         : unsigned char inst
*   RETURNS            : VOID
*===============================================*/
void instCtrl(unsigned char inst)
{
    RS = 0; // set RS to instruction mode
    LCD_PORT = inst; // send instruction to PORTD
    EN = 1; // enable instruction
    delay; // delay
    EN = 0; // disable instruction
}

/*===============================================
*   FUNCTION           : PRINTSTRING
*   DESCRIPTION        : This function prints the string on the LCD.
*   PARAMETERS         : char *string
*   RETURNS            : VOID
*===============================================*/
void printString(char *string)
{
    while(*string)
    {
        dataCtrl(*string++);
    }
}