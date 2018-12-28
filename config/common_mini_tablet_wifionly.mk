# Inherit mini common Pearl stuff
$(call inherit-product, vendor/pearl/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
