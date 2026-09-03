# Device Tree of iPlay_50_Pro aka T1030M

iPlay50Pro(T1030M)-Android13-20240328-固件及刷机教程.rar -->> CN (China firmware)

```ruby
ro.build.display.id=iPlay50Pro_V2.0_20240328
ro.build.flavor=vext_k6789v1_64-user 
ro.build.product=k6789v1_64
ro.build.description=vext_k6789v1_64-user 12 SP1A.210812.016 1711613054 release-keys
####################################
ro.product.vendor.brand=Alldocube
ro.product.vendor.device=T1030M
ro.product.vendor.manufacturer=Alldocube
ro.product.vendor.model=iPlay 50 Pro
ro.product.vendor.name=iPlay_50_Pro
ro.vendor.build.date=Thu Mar 28 17:41:10 CST 2024
ro.vendor.build.date.utc=1711618870
ro.vendor.build.fingerprint=Alldocube/iPlay_50_Pro/T1030M:12/SP1A.210812.016/1711613054:user/release-keys
ro.vendor.build.id=SP1A.210812.016
ro.vendor.build.version.incremental=1711613054
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

Specs [here](https://www.devicespecifications.com/en/model/839e5b62)

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Mediatek Helio G99 (MT6789) (6nm)
CPU     | Octa-core (2x2.2 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
GPU     | Mali-G57 MC2
Memory  | 8 GB RAM
Shipped Android Version | 12.0 with Cube OS China firmware
Storage | 128 GB
Battery | Li-Po 6000 mAh, non-removable
Display | 10.4 in, IPS, 2000 x 1200 pixels,
Camera  | 8 MP (CMOS) and 4 MP (Samsung® ISOCELL 3L6)

![iPlay Pro](https://www.alldocube.com/en/wp-content/uploads/2023/01/1697701908-iplay50pro-post-part12-3.jpg)

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

# Building - twrp-12.1

```yaml
. build/envsetup.sh
breakfast twrp_T1030M-eng
mka vendorbootimage
```

## To use it:

```
fastboot flash vendor_boot vendor_boot_T1030M.img
```
