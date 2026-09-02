# Device Tree of iPlay_50_Pro aka T1030M

```ruby
iPlay50Pro(T1030M)-Android13-20240328-固件及刷机教程.rar -->> CN (China firmware)

ro.build.display.id=iPlay50Pro_V2.0_20240103
ro.build.flavor=vext_k6789v1_64-user
ro.build.product=k6789v1_64
ro.build.description=vext_k6789v1_64-user 12 SP1A.210812.016 1704261138 release-keys
####################################
ro.product.vendor.brand=Alldocube
ro.product.vendor.device=T1030M
ro.product.vendor.manufacturer=Alldocube
ro.product.vendor.model=iPlay 50 Pro
ro.product.vendor.name=iPlay_50_Pro
ro.vendor.build.date=Wed Jan  3 15:51:13 CST 2024
ro.vendor.build.date.utc=1704268273
ro.vendor.build.fingerprint=Alldocube/iPlay_50_Pro/T1030M:12/SP1A.210812.016/1704261138:user/release-keys
ro.vendor.build.id=SP1A.210812.016
ro.vendor.build.version.incremental=1704261138
ro.vendor.build.version.release=12
ro.vendor.build.version.release_or_codename=12
ro.vendor.build.version.sdk=31
####################################
ro.product.board=k6789v1_64
ro.board.platform=mt6789
```

<details><summary>Others details - Click to open</summary>
<p>
  
```
#touchpanel.gsl.ic                                  GSL1686    #触摸屏IC
#tp.gslx68x.pen 0 # 1 turn on pen function ,0 turn off pen

touchpanel.gsl.firmware                             GSL1680_MJK_PG080_WXGA_8		#使用的触摸屏驱动
touchpanel.gsl.xy.swap                              0    #触摸屏x和y轴交换
touchpanel.gsl.x.reverse                            0    #触摸屏x轴左右相反
touchpanel.gsl.y.reverse                            0    #触摸屏y轴上下相反
touchpanel.gsl.xy.deal                              0    #触摸屏交换分辨率
ro.vendor.sf.hwrotation                             0   #GSL TP方向旋转需要用到

touchpanel.himax.spi   1
touchpanel.himax.boe   1
################################################################################################################
# TP                                  		 尺寸        分辨率       供应商（丝印）
# 
# touchpanel.gtp.i2c
# touchpanel.himax.spi
# touchpanel.gslx680.i2c
# touchpanel.nvt.spi
################################################################################################################
```
</p>
</details>

> [!IMPORTANT]
> This branch has ***encrypt/decrypt*** files and option to more test with **´microtrust´**.
Although not explicitly declared in the default file, the ´microtrust´ decryption mode is present: ´ro.vendor.mtk_svp_on_mtee_support=2´

---------------
## Status

**Testing**

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Mediatek Helio G99 (MT6789) (6nm)
CPU     | Octa-core (2x2.2 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
GPU     | Mali-G57 MC2
Memory  | 8 GB RAM
Shipped Android Version | 13.0 with China firmware
Storage | 128/256 GB
Battery | Li-Po 5000 mAh, non-removable
Display | 6.78-inch, 1080*2460 FHD+ Resolution; Dynamic 120Hz Refresh Rate
Camera  | 64 MP (Samsung® ISOCELL GW3) and 13 MP (Samsung® ISOCELL 3L6)

## Features

Works:

- [ ] ADB
- [ ] MicroTrust Decryption
- [ ] Display
- [ ] Fasbootd
- [ ] Flashing
- [ ] MTP
- [ ] Sideload
- [ ] USB OTG
- [ ] MicroSD Card
- [ ] Touch
- [ ] Vibrator
- [ ] Format DATA
- [ ] Install files (zip - img)

# Building

twrp-12.1
```bash
. build/envsetup.sh
breakfast twrp_T1030M-eng
mka vendorbootimage
```

## To use it:

```
fastboot flash vendor_boot vendor_boot_T1030M.img
```
