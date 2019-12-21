
EDIT:
**esx_addons_gcphone**
*server.lua*

find:
```
RegisterServerEvent('esx_addons_gcphone:startCall')
AddEventHandler('esx_addons_gcphone:startCall', function (number, message, coords)
  local source = source
  if PhoneNumbers[number] ~= nil then
    getPhoneNumber(source, function (phone) 
      notifyAlertSMS(number, {
        message = message,
        coords = coords,
        numero = phone,
      }, PhoneNumbers[number].sources)
    end)
  else
    print('Appels sur un service non enregistre => numero : ' .. number)
  end
end)
```
 **and replace it with:**

```
RegisterServerEvent('esx_addons_gcphone:startCall')
AddEventHandler('esx_addons_gcphone:startCall', function (number, message, coords)
  local source = source

  if PhoneNumbers[number] ~= nil then
	if number == 'taxi' then
		if message == 'cancel' then
			TriggerClientEvent('esx_aiTaxi:cancelTaxi', source, true)
		else
			TriggerClientEvent('esx_aiTaxi:callTaxi', source, coords)
		end
	else
		getPhoneNumber(source, function (phone) 
		  notifyAlertSMS(number, {
			message = message,
			coords = coords,
			numero = phone,
		  }, PhoneNumbers[number].sources)
		end)
	end
  else
    print('Appels sur un service non enregistre => numero : ' .. number)
  end
end)
```

Add this to the *config.json* of gcphone
these are the last lines in area of "serviceCall"

```
    },
    {
      "display": "Taxi",
      "backgroundColor": "yellow",
      "subMenu": [
	  {
			"title": "Taxi bestellen",
			"eventName": "esx_addons_gcphone:call",
			"type": {
				"number": "taxi",
				"message": "i need a ride"
			}
		},
        {
          "title": "Taxi abbestellen",
          "eventName": "esx_addons_gcphone:call",
          "type": {
				"number": "taxi",
				"message": "cancel"
			}
        }
      ]
    }
  ],

  "defaultContacts": [{
```

