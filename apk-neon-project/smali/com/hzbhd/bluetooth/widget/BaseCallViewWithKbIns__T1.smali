.class public Lcom/hzbhd/bluetooth/widget/BaseCallViewWithKbIns__T1;
.super Ljava/lang/Object;
.source "BaseCallViewWithKbIns__T1.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/widget/ItfcBaseCallViewWithKb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b02a4

    return v0
.end method

.method public keyBoardIds()[I
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f09005f
        0x7f090062
        0x7f090065
        0x7f090068
        0x7f09006b
        0x7f09006e
        0x7f090071
        0x7f090074
        0x7f090077
        0x7f09007a
        0x7f090159
        0x7f09015c
        0x7f090087
    .end array-data
.end method

.method public needHideCallBtn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
