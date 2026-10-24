.class public Lcom/hzbhd/midwareproxy/screen/resolution/Display800x480;
.super Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;
.source "Display800x480.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;-><init>(Landroid/content/Context;II)V

    .line 12
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->BOOTLOADER_SD:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/resolution/Display800x480;->setmBOOTLOADER_TYPE(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)V

    return-void
.end method
