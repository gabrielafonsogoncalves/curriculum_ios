#!/bin/sh

install_resource()
{
  case $1 in
    *.storyboard)
      echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.xib)
        echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.framework)
      echo "rsync -rp ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      rsync -rp "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      ;;
    *.xcdatamodeld)
      echo "xcrun momc ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename $1 .xcdatamodeld`.momd"
      xcrun momc "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename $1 .xcdatamodeld`.momd"
      ;;
    *)
      echo "rsync -av --exclude '*/.svn/*' ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      rsync -av --exclude '*/.svn/*' "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      ;;
  esac
}
install_resource 'vfrReader/Graphics/AppIcon-057.png'
install_resource 'vfrReader/Graphics/AppIcon-072.png'
install_resource 'vfrReader/Graphics/AppIcon-114.png'
install_resource 'vfrReader/Graphics/AppIcon-144.png'
install_resource 'vfrReader/Graphics/Reader-Button-H.png'
install_resource 'vfrReader/Graphics/Reader-Button-H@2x.png'
install_resource 'vfrReader/Graphics/Reader-Button-N.png'
install_resource 'vfrReader/Graphics/Reader-Button-N@2x.png'
install_resource 'vfrReader/Graphics/Reader-Email.png'
install_resource 'vfrReader/Graphics/Reader-Email@2x.png'
install_resource 'vfrReader/Graphics/Reader-Mark-N.png'
install_resource 'vfrReader/Graphics/Reader-Mark-N@2x.png'
install_resource 'vfrReader/Graphics/Reader-Mark-Y.png'
install_resource 'vfrReader/Graphics/Reader-Mark-Y@2x.png'
install_resource 'vfrReader/Graphics/Reader-Print.png'
install_resource 'vfrReader/Graphics/Reader-Print@2x.png'
install_resource 'vfrReader/Graphics/Reader-Thumbs.png'
install_resource 'vfrReader/Graphics/Reader-Thumbs@2x.png'
