Profile:        GofrPage
Parent:         Basic
Id:             gofr-page
Title:          "GOFR Page"
Description:    "GOFR Profile of the Basic resource to manage pages."
* code = GofrResourceCodeSystem#page
* extension contains
      GofrPageDisplay named display 1..1 MS and
      GofrPageSection named section 0..* MS

Extension:      GofrPageDisplay
Id:             gofr-page-display
Title:          "GOFR Page Display"
Description:    "GOFR Page Display details."
* ^context.type = #element
* ^context.expression = "GofrPage"
* extension contains
      title 1..1 MS and
      resource 1..1 MS and
      requestUpdatingResource 0..1 MS and
      search 1..* MS and
      filter 0..* MS and
      add 0..1 MS and
      field 0..* MS and
      link 0..* MS

* extension[title].value[x] only string
* extension[title].valueString 1..1 MS
* extension[title].valueString ^label = "Page Title"

* extension[resource].value[x] only Reference
* extension[resource].valueReference only Reference(StructureDefinition or CodeSystem)
* extension[resource].valueReference 1..1 MS
* extension[resource].valueReference ^label = "Primary Resource"

* extension[requestUpdatingResource].value[x] only Reference
* extension[requestUpdatingResource].valueReference only Reference(StructureDefinition or CodeSystem)
* extension[requestUpdatingResource].valueReference 1..1 MS
* extension[requestUpdatingResource].valueReference ^label = "Resource that is to be updated by a request"

* extension[search].value[x] only string
* extension[search].valueString 1..1 MS
* extension[search].valueString ^label = "Search Headers"

* extension[filter].value[x] only string
* extension[filter].valueString 1..1 MS
* extension[filter].valueString ^label = "Search Filters"

* extension[add].extension contains
      url 1..1 MS and
      icon 0..1 MS and
      class 0..1 MS
* extension[add].extension[url].value[x] only url
* extension[add].extension[url].valueUrl MS
* extension[add].extension[url].valueUrl ^label = "Add Link URL"
* extension[add].extension[icon].value[x] only string
* extension[add].extension[icon].valueString MS
* extension[add].extension[icon].valueString ^label = "Add Link Icon"
* extension[add].extension[class].value[x] only string
* extension[add].extension[class].valueString MS
* extension[add].extension[class].valueString ^label = "Add Link Class"

* extension[link].extension contains
      field 0..1 MS and
      text 0..1 MS and
      button 0..1 MS and
      icon 0..1 MS and
      url 1..1 MS
* extension[link].extension[field].value[x] only string
* extension[link].extension[field].valueString MS
* extension[link].extension[field].valueString ^label = "FHIRPath for field in resource"
* extension[link].extension[text].value[x] only string
* extension[link].extension[text].valueString MS
* extension[link].extension[text].valueString ^label = "Text for link"
* extension[link].extension[button].value[x] only boolean
* extension[link].extension[button].valueBoolean MS
* extension[link].extension[button].valueBoolean ^label = "Display as button"
* extension[link].extension[icon].value[x] only string
* extension[link].extension[icon].valueString MS
* extension[link].extension[icon].valueString ^label = "Icon to display in button"
* extension[link].extension[url].value[x] only url
* extension[link].extension[url].valueUrl MS
* extension[link].extension[url].valueUrl ^label = "URL to go to"

* extension[field].extension contains
      path 1..1 MS and
      type 0..1 MS and
      readOnlyIfSet 0..1 MS
* extension[field].extension[path].value[x] only string
* extension[field].extension[path].valueString MS
* extension[field].extension[path].valueString ^label = "Field Path from StructureDefintion"
* extension[field].extension[type].value[x] only string
* extension[field].extension[type].valueString MS
* extension[field].extension[type].valueString ^label = "Display type for the field"
* extension[field].extension[readOnlyIfSet].value[x] only boolean
* extension[field].extension[readOnlyIfSet].valueBoolean MS
* extension[field].extension[readOnlyIfSet].valueBoolean ^label = "Read Only if the value is set"


Extension:      GofrPageSection
Id:             gofr-page-section
Title:          "GOFR Page Section"
Description:    "GOFR Page Section information."
* ^context.type = #element
* ^context.expression = "GofrPage"
* extension contains
      title 1..1 MS and
      description 1..1 MS and
      name 1..1 MS and
      field 0..* MS and
      resource 0..1 MS
* extension[title].value[x] only string
* extension[title].valueString MS
* extension[title].valueString ^label = "Title"
* extension[description].value[x] only string
* extension[description].valueString 1..1 MS
* extension[description].valueString ^label = "Description"
* extension[name].value[x] only string
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Name"
* extension[field].value[x] only string
* extension[field].valueString 1..1 MS
* extension[field].valueString ^label = "Field"
* extension[resource].extension contains
      resource 1..1 MS and
      linkfield 1..1 MS and
      searchfield 0..1 MS and
      column 1..* MS and
      action 0..* MS
* extension[resource].extension[resource].value[x] only Reference
* extension[resource].extension[resource].valueReference only Reference(StructureDefinition)
* extension[resource].extension[resource].valueReference MS
* extension[resource].extension[resource].valueReference ^label = "Secondary Resource"
* extension[resource].extension[linkfield].value[x] only string
* extension[resource].extension[linkfield].valueString MS
* extension[resource].extension[linkfield].valueString ^label = "Secondary Resource Link Field"
* extension[resource].extension[searchfield].value[x] only string
* extension[resource].extension[searchfield].valueString MS
* extension[resource].extension[searchfield].valueString ^label = "Secondary Resource Search Field (if different from the link field)"
* extension[resource].extension[column].extension contains
      header 1..1 MS and
      field 1..1 MS
* extension[resource].extension[column].extension[header].value[x] only string
* extension[resource].extension[column].extension[header].valueString MS
* extension[resource].extension[column].extension[header].valueString ^label = "Column Header"
* extension[resource].extension[column].extension[field].value[x] only string
* extension[resource].extension[column].extension[field].valueString MS
* extension[resource].extension[column].extension[field].valueString ^label = "FHIRPath Expression"
* extension[resource].extension[action].extension contains
      link 1..1 MS and
      text 1..1 MS and
      row 0..1 MS and
      condition 0..1 MS and
      emptyDisplay 0..1 MS and
      class 0..1 MS
* extension[resource].extension[action].extension[link].value[x] only string
* extension[resource].extension[action].extension[link].valueString MS
* extension[resource].extension[action].extension[link].valueString ^label = "Action Link"
* extension[resource].extension[action].extension[text].value[x] only string
* extension[resource].extension[action].extension[text].valueString MS
* extension[resource].extension[action].extension[text].valueString ^label = "Action Text"
* extension[resource].extension[action].extension[row].value[x] only boolean
* extension[resource].extension[action].extension[row].valueBoolean MS
* extension[resource].extension[action].extension[row].valueBoolean ^label = "Is Row Action?"
* extension[resource].extension[action].extension[condition].value[x] only string
* extension[resource].extension[action].extension[condition].valueString MS
* extension[resource].extension[action].extension[condition].valueString ^label = "FHIRPation Condition do Display"
* extension[resource].extension[action].extension[emptyDisplay].value[x] only boolean
* extension[resource].extension[action].extension[emptyDisplay].valueBoolean MS
* extension[resource].extension[action].extension[emptyDisplay].valueBoolean ^label = "Show when no records?"
* extension[resource].extension[action].extension[class].value[x] only string
* extension[resource].extension[action].extension[class].valueString MS
* extension[resource].extension[action].extension[class].valueString ^label = "Element Class for the Action"