.class final Lcom/autochips/backcar/BackCar$1;
.super Ljava/lang/Object;
.source "BackCar.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/backcar/BackCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBC_CBMListener onAction Start command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmdAttr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " priority: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackCar"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const-string p1, "mBC_CBMListener Unknown CMD!"

    .line 220
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p1, "mBC_CBMListener: CBM_STOP!"

    .line 189
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget p1, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    if-ne p1, v0, :cond_1

    const-string p1, "mBC_CBMListener CBM_STOP Already Stoped mDestType:"

    .line 191
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 195
    :cond_1
    sput v0, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    goto :goto_0

    :cond_2
    const-string p1, "mBC_CBMListener CBM_START mSrcType is !"

    .line 205
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget p1, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    if-nez p1, :cond_3

    const-string p1, "mBC_CBMListener  Already Started mDestType:"

    .line 207
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 210
    :cond_3
    sget p1, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    if-ne p1, v0, :cond_4

    .line 212
    sput v1, Lcom/autochips/backcar/BackCar;->mCbmCtlStatus:I

    :cond_4
    :goto_0
    const-string p1, "mBC_CBMListener onAction End!!!"

    .line 223
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
