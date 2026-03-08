include $(TOPDIR)/rules.mk

PKG_NAME:=zeroclaw
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=gcy529 <your-email@example.com>
PKG_LICENSE:=MIT

PKG_SOURCE:=zeroclaw
PKG_SOURCE_URL:=https://github.com/zeroclaw-labs/zeroclaw/releases/download/v$(PKG_VERSION)/
PKG_SOURCE_VERSION:=$(PKG_VERSION)

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

define Package/zeroclaw/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/zeroclaw $(1)/usr/bin/
	
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/zeroclaw.config $(1)/etc/config/zeroclaw
	
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/zeroclaw.init $(1)/etc/init.d/zeroclaw
endef

$(eval $(call BuildPackage,zeroclaw))
