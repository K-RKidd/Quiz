//
//  QuizViewController.m
//  Quiz
//
//  Created by Mac User on 1/21/14.
//  Copyright (c) 2014 Mac User. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()
@end

@implementation QuizViewController
-(void) viewDidLoad {
    questions = [[NSMutableArray alloc] init];
    answers   = [[NSMutableArray alloc] init];
    
    //Add questions and answers to the arrays
    [questions addObject:@"What is 7+7?"];
    [answers   addObject:@"14"];
    
    [questions addObject:@"What is the capital of Vermont?"];
    [answers   addObject:@"Monteplier"];
    
    [questions addObject:@"From what is cognac made?"];
    [answers   addObject:@"Grapes"];

}


- (IBAction)showQuestion: (id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    //Am I past the last question?
    if (currentQuestionIndex == [questions count]){
        
        // Go back to first question
        currentQuestionIndex = 0;
    }
    //Get the string at that index inthe questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [questionField setText:question];
    
    //Clear the answer field
    [answerField setText:@"???"];
}
-(IBAction)showAnswer:(id)sender
{
    //What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
}

@end
