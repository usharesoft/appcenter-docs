.. Copyright 2016 FUJITSU LIMITED

.. _dto-objects:

Data Transfer Objects
=====================

This section provides a description of all UForge AppCenter REST Data Transfer objects.

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
	* :ref:`artifactcredaccount-object`
	* :ref:`artifactcredaccounts-object`
	* :ref:`bootscript-object`
	* :ref:`bootscripts-object`
	* :ref:`categories-object`
	* :ref:`category-object`
	* :ref:`certificate-object`
	* :ref:`certificates-object`
	* :ref:`comment-object`
	* :ref:`comments-object`
	* :ref:`companies-object`
	* :ref:`company-object`
	* :ref:`credaccount-object`
	* :ref:`credaccountabiquo-object`
	* :ref:`credaccountaws-object`
	* :ref:`credaccountazure-object`
	* :ref:`credaccountcert-object`
	* :ref:`credaccountcloudstack-object`
	* :ref:`credaccounteuca-object`
	* :ref:`credaccountflexiant-object`
	* :ref:`credaccountgoogle-object`
	* :ref:`credaccountnimbula-object`
	* :ref:`credaccountopenstack-object`
	* :ref:`credaccountoutscale-object`
	* :ref:`credaccounts-object`
	* :ref:`credaccountsusecloud-object`
	* :ref:`credaccountvclouddirector-object`
	* :ref:`credaccountvsphere-object`
	* :ref:`disk-object`
	* :ref:`disks-object`
	* :ref:`distribprofile-object`
	* :ref:`distribprofiles-object`
	* :ref:`distribprofiletemplate-object`
	* :ref:`distribprofiletemplates-object`
	* :ref:`distribution-object`
	* :ref:`distributions-object`
	* :ref:`entitlement-object`
	* :ref:`entitlements-object`
	* :ref:`exportobject-object`
	* :ref:`exportobjects-object`
	* :ref:`fileentry-object`
	* :ref:`gallerytemplate-object`
	* :ref:`gallerytemplates-object`
	* :ref:`gallerytemplatestat-object`
	* :ref:`gallerytemplatestatistics-object`
	* :ref:`hardwaresettings-object`
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
	* :ref:`localizedmessage-object`
	* :ref:`logicalgroup-object`
	* :ref:`logicalgroups-object`
	* :ref:`logicalvolume-object`
	* :ref:`logicalvolumes-object`
	* :ref:`logo-object`
	* :ref:`membership-object`
	* :ref:`memberships-object`
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
	* :ref:`package-object`
	* :ref:`pkggroup-object`
	* :ref:`packages-object`
	* :ref:`project-object`
	* :ref:`projects-object`
	* :ref:`publishimage-object`
	* :ref:`publishimageabiquo-object`
	* :ref:`publishimageaws-object`
	* :ref:`publishimageazure-object`
	* :ref:`publishimagecloudstack-object`
	* :ref:`publishimageeuca-object`
	* :ref:`publishimageflexiant-object`
	* :ref:`publishimagegoogle-object`
	* :ref:`publishimagenimbula-object`
	* :ref:`publishimageopenstack-object`
	* :ref:`publishimageoutscale-object`
	* :ref:`publishimagesusecloud-object`
	* :ref:`publishimagevclouddirector-object`
	* :ref:`publishimagevsphere-object`
	* :ref:`publishimages-object`
	* :ref:`quota-object`
	* :ref:`quotas-object`
	* :ref:`referral-object`
	* :ref:`referrals-object`
	* :ref:`repository-object`
	* :ref:`repositories-object`
	* :ref:`role-object`
	* :ref:`roles-object`
	* :ref:`route-object`
	* :ref:`scan-object`
	* :ref:`scanimport-object`
	* :ref:`scanimports-object`
	* :ref:`scannedfile-object`
	* :ref:`scannedfiles-object`
	* :ref:`scannedinstance-object`
	* :ref:`scannedinstances-object`
	* :ref:`scannedpackage-object`
	* :ref:`scannedpackages-object`
	* :ref:`scans-object`
	* :ref:`scanstats-object`
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
	* :ref:`statdatapoint-object`
	* :ref:`statdatapoints-object`
	* :ref:`statticket-object`
	* :ref:`stattickets-object`
	* :ref:`subscriptionprofile-object`
	* :ref:`subscriptionprofiles-object`
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
	* :ref:`userstats-object`
	* :ref:`votestat-object`
	* :ref:`workspace-object`
	* :ref:`workspaces-object`


.. toctree::
    :hidden:

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
    ArtifactCredAccount
    ArtifactCredAccounts
    BootScript
    BootScripts
    Categories
    Category
    Certificate
    Certificates
    Comment
    Comments
    Companies
    Company
    CredAccount
    CredAccountAbiquo
    CredAccountAws
    CredAccountAzure
    CredAccountCert
    CredAccountCloudStack
    CredAccountEuca
    CredAccountFlexiant
    CredAccountGoogle
    CredAccountNimbula
    CredAccountOpenStack
    CredAccountOutscale
    CredAccounts
    CredAccountSuseCloud
    CredAccountVCloudDirector
    CredAccountVSphere
    Disk
    Disks
    DistribProfile
    DistribProfiles
    DistribProfileTemplate
    DistribProfileTemplates
    Distribution
    Distributions
    Entitlement
    Entitlements
    ExportObject
    ExportObjects
    FileEntry
    GalleryTemplate
    GalleryTemplates
    GalleryTemplateStat
    GalleryTemplateStatistics
    HardwareSettings
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
    LocalizedMessage
    LogicalGroup
    LogicalGroups
    LogicalVolume
    LogicalVolumes
    Logo
    Membership
    Memberships
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
    Pkg
    PkgGroup
    PkgList
    Project
    Projects
    PublishImage
    PublishImageAbiquo
    PublishImageAws
    PublishImageAzure
    PublishImageCloudStack
    PublishImageEuca
    PublishImageFlexiant
    PublishImageGoogle
    PublishImageNimbula
    PublishImageOpenStack
    PublishImageOutscale
    PublishImageSuseCloud
    PublishImageVCloudDirector
    PublishImageVSphere
    PublishImages
    Quota
    Quotas
    Referral
    Referrals
    Repository
    Repositories
    Role
    Roles
    Route
    Scan
    ScanImport
    ScanImports
    ScannedFile
    ScannedFiles
    ScannedInstance
    ScannedInstances
    ScannedPkg
    ScannedPkgs
    Scans
    ScanStats
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
    StatDataPoint
    StatDataPoints
    StatTicket
    StatTickets
    SubscriptionProfile
    SubscriptionProfiles
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
    UserStats
    VoteStat
    Workspace
    Workspaces
