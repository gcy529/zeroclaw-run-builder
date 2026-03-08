include $(TOPDIR)/rules.mk

PKG_NAME:=zeroclaw
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=gcy529 <your-email@example.com>
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/zeroclaw
  SECTION:=net
  CATEGORY:=Network
  TITLE:=ZeroClaw proxy tool
  DEPENDS:=+libc
  URL:=https://github.com/gcy529/zeroclaw-run-builder
endef

define Package/zeroclaw/description
  ZeroClaw is a proxy tool for OpenWrt routers.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./files/* $(PKG_BUILD_DIR)/
endef

define Package/zeroclaw/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/zeroclaw $(1)/usr/bin/
	
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/zeroclaw.config $(1)/etc/config/zeroclaw
	
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/zeroclaw.init $(1)/etc/init.d/zeroclaw
endef

$(eval $(call BuildPackage,zeroclaw))
