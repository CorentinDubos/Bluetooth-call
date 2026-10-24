.class Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;
.super Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;
.source "Logic_KC1.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;-><init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    return-void
.end method


# virtual methods
.method public getBootUp_display_orientation()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getBootDisplayOrientation()I

    move-result v0

    return v0
.end method

.method public getPrimary_display_orientation()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v0

    return v0
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->rotateScreen(Z)V

    return-void
.end method

.method public screenResponse([I)V
    .locals 3

    .line 24
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->parse([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setBootDisplayOrientation()V

    .line 27
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->setDisplayOrientation()V

    :cond_0
    return-void
.end method

.method public screenResponseStop()V
    .locals 2

    .line 97
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenResponseStop"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->isOneDisplayOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->getDisplayProductType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_type(I)V

    .line 100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_orientation(I)V

    .line 101
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setBootDisplayOrientation()V

    .line 102
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->setDisplayOrientation()V

    .line 103
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenResponseStop end"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisplayOrientation()V
    .locals 3

    .line 35
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v1

    const-string/jumbo v2, "user_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
