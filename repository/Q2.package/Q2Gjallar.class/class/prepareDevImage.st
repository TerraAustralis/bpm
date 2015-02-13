prepare image
prepareDevImage
  "Prepare this image as a dev image."

  "self prepareDevImage"

  self cleanImage.
  Q2CustomObjectType clearSharedNameCollections.
  Q2Scheduler
    deactivateAllServices;
    activateDefaultServices;
    clearServices.
  self setRepositories.
  MCFileBasedRepository flushAllCaches	"Utilities setAuthorInitials: ''.
  self
    openDoits;
    openWelcome.
  Transcript clear"