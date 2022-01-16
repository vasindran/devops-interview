"$schema" = "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#"

"contentVersion" = "1.0.0.0"

"parameters" "serverfarms_ASP_devopsinterview_92c5_externalid" {
  "defaultValue" = "/subscriptions/62a74f08-c4ec-4c6a-8379-32007cd69139/resourceGroups/devops-interview/providers/Microsoft.Web/serverfarms/ASP-devopsinterview-92c5"

  "type" = "String"
}

"parameters" "sites_BradyWather_name" {
  "defaultValue" = "BradyWather"

  "type" = "String"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "kind" = "app,linux"

  "location" = "Central US"

  "name" = "[parameters('sites_BradyWather_name')]"

  "properties" = {
    "clientAffinityEnabled" = false

    "clientCertEnabled" = false

    "clientCertMode" = "Required"

    "containerSize" = 0

    "customDomainVerificationId" = "6BD906043BDD1492E6F9A5E028112A1F67FF2B080D0DE60DF3B2E92E5A7CEE84"

    "dailyMemoryTimeQuota" = 0

    "enabled" = true

    "hostNameSslStates" = {
      "hostType" = "Standard"

      "name" = "bradywather.azurewebsites.net"

      "sslState" = "Disabled"
    }

    "hostNameSslStates" = {
      "hostType" = "Repository"

      "name" = "bradywather.scm.azurewebsites.net"

      "sslState" = "Disabled"
    }

    "hostNamesDisabled" = false

    "httpsOnly" = false

    "hyperV" = false

    "isXenon" = false

    "keyVaultReferenceIdentity" = "SystemAssigned"

    "redundancyMode" = "None"

    "reserved" = true

    "scmSiteAlsoStopped" = false

    "serverFarmId" = "[parameters('serverfarms_ASP_devopsinterview_92c5_externalid')]"

    "siteConfig" = {
      "acrUseManagedIdentityCreds" = false

      "alwaysOn" = false

      "functionAppScaleLimit" = 0

      "http20Enabled" = false

      "linuxFxVersion" = "DOTNETCORE|3.1"

      "minimumElasticInstanceCount" = 0

      "numberOfWorkers" = 1
    }

    "storageAccountRequired" = false
  }

  "tags" = {
    "company" = "home"

    "purpose" = "interview"
  }

  "type" = "Microsoft.Web/sites"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "dependsOn" = ["[resourceId('Microsoft.Web/sites', parameters('sites_BradyWather_name'))]"]

  "location" = "Central US"

  "name" = "[concat(parameters('sites_BradyWather_name'), '/ftp')]"

  "properties" = {
    "allow" = true
  }

  "tags" = {
    "company" = "home"

    "purpose" = "interview"
  }

  "type" = "Microsoft.Web/sites/basicPublishingCredentialsPolicies"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "dependsOn" = ["[resourceId('Microsoft.Web/sites', parameters('sites_BradyWather_name'))]"]

  "location" = "Central US"

  "name" = "[concat(parameters('sites_BradyWather_name'), '/scm')]"

  "properties" = {
    "allow" = true
  }

  "tags" = {
    "company" = "home"

    "purpose" = "interview"
  }

  "type" = "Microsoft.Web/sites/basicPublishingCredentialsPolicies"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "dependsOn" = ["[resourceId('Microsoft.Web/sites', parameters('sites_BradyWather_name'))]"]

  "location" = "Central US"

  "name" = "[concat(parameters('sites_BradyWather_name'), '/web')]"

  "properties" = {
    "acrUseManagedIdentityCreds" = false

    "alwaysOn" = false

    "autoHealEnabled" = false

    "azureStorageAccounts" = {}

    "defaultDocuments" = ["Default.htm", "Default.html", "Default.asp", "index.htm", "index.html", "iisstart.htm", "default.aspx", "index.php", "hostingstart.html"]

    "detailedErrorLoggingEnabled" = false

    "experiments" = {
      "rampUpRules" = []
    }

    "ftpsState" = "AllAllowed"

    "functionAppScaleLimit" = 0

    "functionsRuntimeScaleMonitoringEnabled" = false

    "http20Enabled" = false

    "httpLoggingEnabled" = false

    "ipSecurityRestrictions" = {
      "action" = "Allow"

      "description" = "Allow all access"

      "ipAddress" = "Any"

      "name" = "Allow all"

      "priority" = 1
    }

    "linuxFxVersion" = "DOTNETCORE|3.1"

    "loadBalancing" = "LeastRequests"

    "localMySqlEnabled" = false

    "logsDirectorySizeLimit" = 35

    "managedPipelineMode" = "Integrated"

    "minTlsVersion" = "1.2"

    "minimumElasticInstanceCount" = 0

    "netFrameworkVersion" = "v4.0"

    "numberOfWorkers" = 1

    "preWarmedInstanceCount" = 0

    "publishingUsername" = "$BradyWather"

    "remoteDebuggingEnabled" = false

    "requestTracingEnabled" = false

    "scmIpSecurityRestrictions" = {
      "action" = "Allow"

      "description" = "Allow all access"

      "ipAddress" = "Any"

      "name" = "Allow all"

      "priority" = 1
    }

    "scmIpSecurityRestrictionsUseMain" = false

    "scmMinTlsVersion" = "1.0"

    "scmType" = "GitHubAction"

    "use32BitWorkerProcess" = true

    "virtualApplications" = {
      "physicalPath" = "site\\wwwroot"

      "preloadEnabled" = false

      "virtualPath" = "/"
    }

    "vnetPrivatePortsCount" = 0

    "vnetRouteAllEnabled" = false

    "webSocketsEnabled" = false
  }

  "tags" = {
    "company" = "home"

    "purpose" = "interview"
  }

  "type" = "Microsoft.Web/sites/config"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "dependsOn" = ["[resourceId('Microsoft.Web/sites', parameters('sites_BradyWather_name'))]"]

  "location" = "Central US"

  "name" = "[concat(parameters('sites_BradyWather_name'), '/80db54408a994c5a86372a0c827f3ecd')]"

  "properties" = {
    "active" = true

    "author" = "N/A"

    "author_email" = "N/A"

    "deployer" = "GITHUB_ZIP_DEPLOY"

    "end_time" = "2022-01-16T13:11:16.7296202Z"

    "message" = "{\"type\":\"deployment\",\"sha\":\"115ba9ab822379097d478fd2e1ab457cb363c7ef\",\"repoName\":\"vasindran/devops-interview\",\"slotName\":\"Production\",\"commitMessage\":\"Add or update the Azure App Service build and deployment workflow config\"}"

    "start_time" = "2022-01-16T13:11:07.9159851Z"

    "status" = 4
  }

  "type" = "Microsoft.Web/sites/deployments"
}

"resources" = {
  "apiVersion" = "2021-02-01"

  "dependsOn" = ["[resourceId('Microsoft.Web/sites', parameters('sites_BradyWather_name'))]"]

  "location" = "Central US"

  "name" = "[concat(parameters('sites_BradyWather_name'), '/', parameters('sites_BradyWather_name'), '.azurewebsites.net')]"

  "properties" = {
    "hostNameType" = "Verified"

    "siteName" = "BradyWather"
  }

  "type" = "Microsoft.Web/sites/hostNameBindings"
}

"variables" = {}