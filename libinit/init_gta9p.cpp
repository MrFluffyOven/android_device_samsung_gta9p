/*
 * Copyright (C) 2021-2022 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include <libinit_utils.h>

#include "vendor_init.h"

static const variant_info_t gta9p_info = {
    .hwc_value = "",
    .sku_value = "gta9p",

    .brand = "Samsung",
    .device = "gta9p",
    .model = "Galaxy Tab A9+",
    .build_fingerprint = "Redmi/fleur_eea/fleur:13/SP1A.210812.016/V816.0.1.0.TKEUXM:user/release-keys",
};

static const variant_info_t gta9pwifi_info = {
    .hwc_value = "",
    .sku_value = "gta9pwifi",

    .brand = "Samsung",
    .device = "gta9pwifi",
    .model = "Galaxy Tab A9+",
    .build_fingerprint = "Redmi/fleur_eea/fleur:13/SP1A.210812.016/V816.0.1.0.TKEUXM:user/release-keys",
};

static const std::vector<variant_info_t> variants = {
    gta9p_info,
    gta9pwifi_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
