# Inherit full common Pearl stuff
$(call inherit-product, vendor/pearl/config/common_full.mk)

PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/pearl/overlay/tv
