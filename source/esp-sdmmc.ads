--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with driver_sdmmc_host_h;
with sd_protocol_types_h;

package ESP.SDMMC is

   function Default return sd_protocol_types_h.sdmmc_host_t;

   function Default return driver_sdmmc_host_h.sdmmc_slot_config_t;

end ESP.SDMMC;
