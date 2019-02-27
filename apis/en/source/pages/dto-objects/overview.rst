.. Copyright FUJITSU LIMITED 2016-2019

.. _dto-objects:

Data Transfer Objects
=====================

This section provides a description of all UForge AppCenter REST Data Transfer objects.

	* :ref:`abstractwinapplication-object`
	* :ref:`abstractwinapplications-object`
	* :ref:`address-object`
	* :ref:`apikeypair-object`
	* :ref:`apikeypairs-object`
	* :ref:`appliance-object`
	* :ref:`applianceexport-object`
	* :ref:`applianceexports-object`
	* :ref:`applianceimport-object`
	* :ref:`applianceimports-object`
	* :ref:`appliances-object`
	* :ref:`appliancestats-object`
	* :ref:`appliancesummary-object`
	* :ref:`artifactcredaccount-object`
	* :ref:`artifactcredaccounts-object`
	* :ref:`blueprint-object`
	* :ref:`blueprintdeployment-object`
	* :ref:`blueprintdeploymentaws-object`
	* :ref:`blueprintpipeline-object`
	* :ref:`blueprintpipelineaws-object`
	* :ref:`blueprintpredeploy-object`
	* :ref:`blueprintservice-object`
	* :ref:`blueprintsummary-object`
	* :ref:`bootscript-object`
	* :ref:`bootscripts-object`
	* :ref:`btrfsstoragepool-object`
	* :ref:`btrfsstoragepools-object`
	* :ref:`btrfssubvolume-object`
	* :ref:`btrfssubvolumes-object`
	* :ref:`bundlerestriction-object`
	* :ref:`bundlerestrictions-object`
	* :ref:`categories-object`
	* :ref:`category-object`
	* :ref:`certificate-object`
	* :ref:`certificates-object`
	* :ref:`comment-object`
	* :ref:`comments-object`
	* :ref:`companies-object`
	* :ref:`company-object`
	* :ref:`containertemplate-object`
	* :ref:`containertemplates-object`
	* :ref:`credaccount-object`
	* :ref:`credaccountaws-object`
	* :ref:`credaccountazure-object`
	* :ref:`credaccountcert-object`
	* :ref:`credaccountcloudstack-object`
	* :ref:`credaccountgoogle-object`
	* :ref:`credaccountopenstack-object`
	* :ref:`credaccountoutscale-object`
	* :ref:`credaccounts-object`
	* :ref:`credaccountsusecloud-object`
	* :ref:`credaccountvclouddirector-object`
	* :ref:`credaccountvsphere-object`
	* :ref:`credaccountk5-object`
	* :ref:`credaccountdocker-object`
	* :ref:`credaccountopenshift-object`
	* :ref:`credaccountoracle-object`
	* :ref:`deployment-object`
	* :ref:`deployments-object`
	* :ref:`disk-object`
	* :ref:`disks-object`
	* :ref:`distribprofile-object`
	* :ref:`distribprofiles-object`
	* :ref:`distribution-object`
	* :ref:`distributions-object`
	* :ref:`entitlement-object`
	* :ref:`entitlements-object`
	* :ref:`fileentry-object`
	* :ref:`gallerytemplate-object`
	* :ref:`gallerytemplates-object`
	* :ref:`gallerytemplatestat-object`
	* :ref:`gallerytemplatestatistics-object`
	* :ref:`generationstage-object`
	* :ref:`image-object`
	* :ref:`imageformat-object`
	* :ref:`imageformats-object`
	* :ref:`imagepkg-object`
	* :ref:`imagepkgs-object`
	* :ref:`images-object`
	* :ref:`imagestats-object`
	* :ref:`installprofile-object`
	* :ref:`ipaddress-object`
	* :ref:`license-object`
	* :ref:`licenses-object`
	* :ref:`linuxprofile-object`
	* :ref:`linuxprofiles-object`
	* :ref:`localizedmessage-object`
	* :ref:`location-object`
	* :ref:`logicalgroup-object`
	* :ref:`logicalgroups-object`
	* :ref:`logicalvolume-object`
	* :ref:`logicalvolumes-object`
	* :ref:`logo-object`
	* :ref:`membership-object`
	* :ref:`memberships-object`
	* :ref:`migration-object`
	* :ref:`migrations-object`
	* :ref:`milestone-object`
	* :ref:`milestones-object`
	* :ref:`mysoftware-object`
	* :ref:`mysoftwarelist-object`
	* :ref:`nic-object`
	* :ref:`nics-object`
	* :ref:`status-object`
	* :ref:`statuses-object`
	* :ref:`org-object`
	* :ref:`orgs-object`
	* :ref:`osconfig-object`
	* :ref:`osconfigs-object`
	* :ref:`osgroup-object`
	* :ref:`osgroups-object`
	* :ref:`ospackage-object`
	* :ref:`ospackages-object`
	* :ref:`osupdate-object`
	* :ref:`osupdates-object`
	* :ref:`osuser-object`
	* :ref:`osusers-object`
	* :ref:`partition-object`
	* :ref:`partitions-object`
	* :ref:`partitiontable-object`
	* :ref:`pipeline-object`
	* :ref:`pipelines-object`
	* :ref:`package-object`
	* :ref:`pkggroup-object`
	* :ref:`packages-object`
	* :ref:`project-object`
	* :ref:`projects-object`
	* :ref:`publicationstage-object`
	* :ref:`publishimage-object`
	* :ref:`publishimageaws-object`
	* :ref:`publishimageazure-object`
	* :ref:`publishimagecloudstack-object`
	* :ref:`publishimagegoogle-object`
	* :ref:`publishimageopenstack-object`
	* :ref:`publishimageoutscale-object`
	* :ref:`publishimagesusecloud-object`
	* :ref:`publishimagevclouddirector-object`
	* :ref:`publishimagevsphere-object`
	* :ref:`publishimagek5-object`
	* :ref:`publishimagedocker-object`
	* :ref:`publishimageopenshift-object`
	* :ref:`publishimageoracle-object`
	* :ref:`publishimages-object`
	* :ref:`quota-object`
	* :ref:`quotas-object`
	* :ref:`referral-object`
	* :ref:`referrals-object`
	* :ref:`repository-object`
	* :ref:`repositories-object`
	* :ref:`repositoryupdate-object`
	* :ref:`repositoryupdates-object`
	* :ref:`role-object`
	* :ref:`roles-object`
	* :ref:`route-object`
	* :ref:`scan-object`
	* :ref:`scancompare-object`
	* :ref:`scanimport-object`
	* :ref:`scanimports-object`
	* :ref:`scannedfile-object`
	* :ref:`scannedfiles-object`
	* :ref:`directorystructure-object`
	* :ref:`scanneddirectory-object`
	* :ref:`scansync-object`
	* :ref:`scanfilestosynchronize-object`
	* :ref:`scannedinstance-object`
	* :ref:`scannedinstances-object`
	* :ref:`scannedpackage-object`
	* :ref:`scannedpackages-object`
	* :ref:`scans-object`
	* :ref:`scanstage-object`
	* :ref:`scanstats-object`
	* :ref:`scansummary-object`
	* :ref:`scansummarylight-object`
	* :ref:`servicestatus-object`
	* :ref:`softwareartifact-object`
	* :ref:`softwareartifacts-object`
	* :ref:`softwarebundle-object`
	* :ref:`softwarebundles-object`
	* :ref:`softwarebundleexport-object`
	* :ref:`softwarebundleimport-object`
	* :ref:`softwarefile-object`
	* :ref:`softwarefiles-object`
	* :ref:`sshkey-object`
	* :ref:`sshkeys-object`
	* :ref:`stage-object`
	* :ref:`statdatapoint-object`
	* :ref:`statdatapoints-object`
	* :ref:`statticket-object`
	* :ref:`stattickets-object`
	* :ref:`subscriptionprofile-object`
	* :ref:`subscriptionprofiles-object`
	* :ref:`sourcesummary-object`
	* :ref:`tag-object`
	* :ref:`targetformat-object`
	* :ref:`targetformats-object`
	* :ref:`targetplatform-object`
	* :ref:`targetplatforms-object`
	* :ref:`uforgeerror-object`
	* :ref:`uforgeobject-object`
	* :ref:`uforgeobjects-object`
	* :ref:`uforgeuploadobject-object`
	* :ref:`urilist-object`
	* :ref:`user-object`
	* :ref:`userprofile-object`
	* :ref:`userprofiles-object`
	* :ref:`users-object`
	* :ref:`userstat-object`
	* :ref:`userstats-object`
	* :ref:`votestat-object`
	* :ref:`windowsprofile-object`
	* :ref:`windowsprofiles-object`
	* :ref:`winmsiapplication-object`
	* :ref:`winmsiapplications-object`
	* :ref:`winstoreapplication-object`
	* :ref:`winstoreapplications-object`
	* :ref:`winservice-object`
	* :ref:`unixservice-object`
	* :ref:`winservices-object`
	* :ref:`workspace-object`
	* :ref:`workspaces-object`


.. toctree::
    :hidden:

    AbstractWinApplication
    AbstractWinApplications
    Address
    APIKeyPair
    APIKeyPairs
    Appliance
    ApplianceExport
    ApplianceExports
    ApplianceImport
    ApplianceImports
    Appliances
    ApplianceStats
    ApplianceSummary
    ArtifactCredAccount
    ArtifactCredAccounts
    Blueprint
    BlueprintDeployment
    BlueprintDeploymentAws
    BlueprintPipeline
    BlueprintPipelineAws
    BlueprintPredeploy
    BlueprintService
    BlueprintSummary
    BootScript
    BootScripts
    BtrfsStoragePool
    BtrfsStoragePools
    BtrfsSubvolume
    BtrfsSubvolumes
    BundleRestriction
    BundleRestrictions
    Categories
    Category
    Certificate
    Certificates
    Comment
    Comments
    Companies
    Company
    ContainerTemplate
    ContainerTemplates
    CredAccount
    CredAccountAws
    CredAccountAzure
    CredAccountCert
    CredAccountCloudStack
    CredAccountGoogle
    CredAccountOpenStack
    CredAccountOutscale
    CredAccounts
    CredAccountSuseCloud
    CredAccountVCloudDirector
    CredAccountVSphere
    CredAccountK5
    CredAccountDocker
    CredAccountOpenShift
    CredAccountOracle
    Deployment
    Deployments
    Disk
    Disks
    DistribProfile
    DistribProfiles
    Distribution
    Distributions
    Entitlement
    Entitlements
    FileEntry
    GalleryTemplate
    GalleryTemplates
    GalleryTemplateStat
    GalleryTemplateStatistics
    GenerationStage
    Image
    ImageFormat
    ImageFormats
    ImagePkg
    ImagePkgs
    Images
    ImageStats
    InstallProfile
    IPAddress
    License
    Licenses
    LinuxProfile
    LinuxProfiles
    LocalizedMessage
    Location
    LogicalGroup
    LogicalGroups
    LogicalVolume
    LogicalVolumes
    Logo
    Membership
    Memberships
    Migration
    Migrations
    Milestone
    Milestones
    MySoftware
    MySoftwareList
    Nic
    Nics
    OpStatus
    OpStatuses
    Org
    Orgs
    OsConfig
    OsConfigs
    OSGroup
    OSGroups
    OSPackage
    OSPackages
    OSUpdate
    OSUpdates
    OSUser
    OSUsers
    Partition
    Partitions
    PartitionTable
    Pipeline
    Pipelines
    Pkg
    PkgGroup
    PkgList
    Project
    Projects
    PublicationStage
    PublishImage
    PublishImageAws
    PublishImageAzure
    PublishImageCloudStack
    PublishImageGoogle
    PublishImageOpenStack
    PublishImageOutscale
    PublishImageSuseCloud
    PublishImageVCloudDirector
    PublishImageVSphere
    PublishImageK5
    PublishImageDocker
    PublishImageOpenShift
    PublishImageOracle
    PublishImages
    Quota
    Quotas
    Referral
    Referrals
    Repository
    Repositories
    RepositoryUpdate
    RepositoryUpdates
    Role
    Roles
    Route
    Scan
    ScanCompare
    ScanImport
    ScanImports
    ScannedFile
    ScannedFiles
    DirectoryStructure
    ScannedDirectory
    ScanSync
    ScanFilesToSynchronize
    ScannedInstance
    ScannedInstances
    ScannedPkg
    ScannedPkgs
    Scans
    ScanStage
    ScanStats
    ScanSummary
    ScanSummaryLight
    ServiceStatus
    SoftwareArtifact
    SoftwareArtifacts
    SoftwareBundle
    SoftwareBundles
    SoftwareBundleExport
    SoftwareBundleImport
    SoftwareFile
    SoftwareFiles
    SSHKey
    SSHKeys
    Stage
    StatDataPoint
    StatDataPoints
    StatTicket
    StatTickets
    SubscriptionProfile
    SubscriptionProfiles
    SourceSummary
    Tag
    TargetFormat
    TargetFormats
    TargetPlatform
    TargetPlatforms
    UForgeError
    UForgeObject
    UForgeObjects
    UForgeUploadObject
    UriList
    User
    UserProfile
    UserProfiles
    Users
    UserStat
    UserStats
    VoteStat
    WindowsProfile
    WindowsProfiles
    WinMsiApplication
    WinMsiApplications
    WinStoreApplication
    WinStoreApplications
    WinService
    UnixService
    WinServices
    Workspace
    Workspaces
