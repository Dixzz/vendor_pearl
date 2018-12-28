# Inherit mini common pearl stuff
$(call inherit-product, vendor/pearl/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/pearl/config/telephony.mk)
