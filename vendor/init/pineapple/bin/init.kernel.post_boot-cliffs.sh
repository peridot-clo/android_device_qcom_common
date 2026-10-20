#!/vendor/bin/sh
#
# SPDX-FileCopyrightText: 2026 Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# SM8635 (cliffs) uses three CPU frequency policies, unlike SM8650.
for policy in 0 3 7; do
    echo schedutil > /sys/devices/system/cpu/cpufreq/policy${policy}/scaling_governor || exit 1
done

setprop vendor.post_boot.parsed 1
