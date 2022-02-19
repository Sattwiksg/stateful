param location string = resourceGroup().location
param laName string
param workflowName string
var workflowpath = '../../${workflowName}/workflow.json'

resource logicApps 'Microsoft.Logic/workflows@2019-05-01' = {
  name: laName
  location: location
  properties: {
    definition: json(loadTextContent(workflowpath)).definition
  }
}
