# Inherit full common Pearl stuff
$(call inherit-product, vendor/pearl/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Pearl LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pearl/overlay/dictionaries

$(call inherit-product, vendor/pearl/config/telephony.mk)
