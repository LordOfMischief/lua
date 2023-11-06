os.loadAPI("button")
--m = peripheral.wrap("right")
m = term

function loadPad()
 m.clear()
 button.clearTable()
-- m.setTextScale(1)
 button.setTable("1",press,1,2,2,2,2)
 button.setTable("2",press,2,4,4,2,2)
 button.setTable("3",press,3,6,6,2,2)
 button.setTable("4",press,4,2,2,4,4)
 button.setTable("5",press,5,4,4,4,4)
 button.setTable("6",press,6,6,6,4,4)
 button.setTable("7",press,7,2,2,6,6)
 button.setTable("8",press,8,4,4,6,6)
 button.setTable("9",press,9,6,6,6,6)
 button.screen()
end

function press(num)
 button.flash(tostring(num))
 term.write(num)
end

while true do
loadPad()
event,side,x,y = os.pullEvent()
 if event == "monitor_touch" or event == "mouse_click" then
  button.checkxy(x,y)
 end
end