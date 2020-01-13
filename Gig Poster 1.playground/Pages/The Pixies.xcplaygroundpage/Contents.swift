//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

// Begin your solution here...

canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Draw background
canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
canvas.drawRectangle(at: CGPoint(x: 0, y: 0), width: canvas.width, height: canvas.height)

// Draw black square
canvas.fillColor = Color.black
canvas.drawRectangle(at: CGPoint(x: 0, y: 0), width: canvas.width, height: 400)


// Draw circles
for x in 0...10 {

    for y in 0...10{
        
        let colour = y + x
        
        if x == 0 || y == 0 {
            canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
        } else if colour > 10 {
            canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
        } else {
            canvas.fillColor = Color.white
        }
        
        canvas.drawEllipse(at: CGPoint(x: x * 40, y: y * 40), width: 35, height: 35)
    }
}

// White text

canvas.drawText(message: "pixies", at: CGPoint(x: 10, y: 410), size: 70, kerning: 0.0)
canvas.drawText(message: "saturday", at: CGPoint(x: 10, y: 550), size: 10, kerning: 0.0)
canvas.drawText(message: "december 13 1986", at: CGPoint(x: 10, y: 535), size: 10, kerning: 0.0)
canvas.drawText(message: "9 pm over 21", at: CGPoint(x: 10, y: 520), size: 10, kerning: 0.0)
canvas.drawText(message: "at the rat", at: CGPoint(x: 260, y: 550), size: 10, kerning: 0.0)
canvas.drawText(message: "538 commonwealth", at: CGPoint(x: 260, y: 535), size: 10, kerning: 0.0)
canvas.drawText(message: "boston, mass.", at: CGPoint(x: 260, y: 520), size: 10, kerning: 0.0)

canvas.textColor = Color.white
canvas.drawText(message: "with", at: CGPoint(x: 260, y: 460), size: 13, kerning: 0.0)
canvas.drawText(message: "throwing muses", at: CGPoint(x: 260, y: 445), size: 13, kerning: 0.0)
canvas.drawText(message: "big dipper", at: CGPoint(x: 260, y: 430), size: 13, kerning: 0.0)






/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

