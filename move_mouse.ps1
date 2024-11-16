# Load the necessary assembly
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Infinite loop
while ($true) {
    # Get the current mouse position
    $initialPosition = [System.Windows.Forms.Cursor]::Position

    # Move the mouse left by 100 pixels
    $newPositionLeft = New-Object System.Drawing.Point ($initialPosition.X - 100), $initialPosition.Y
    [System.Windows.Forms.Cursor]::Position = $newPositionLeft

    # Wait for 10 seconds
    Start-Sleep -Seconds 10

    # Move the mouse right by 100 pixels (back to the original position)
    $newPositionRight = New-Object System.Drawing.Point ($initialPosition.X + 100), $initialPosition.Y
    [System.Windows.Forms.Cursor]::Position = $newPositionRight

    # Wait for another 10 seconds before the next cycle
    Start-Sleep -Seconds 10
}
