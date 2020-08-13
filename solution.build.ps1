
param (
    $Location = "westus2",
    $ResourceGroupName = "Solution-Enterprise-APIM-RG"
)


task Validate {
    . .\Deploy-AzTemplate.ps1 -ArtifactStagingDirectory . -Location $Location -ResourceGroupName $ResourceGroupName -ValidateOnly
}

task Deploy {
    . .\Deploy-AzTemplate.ps1 -ArtifactStagingDirectory . -Location $Location -ResourceGroupName $ResourceGroupName
}

task . Validate